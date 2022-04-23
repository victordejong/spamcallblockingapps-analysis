package com.bytedance.sdk.openadsdk.k.a;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import com.bytedance.sdk.openadsdk.k.d;
import com.bytedance.sdk.openadsdk.k.e;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantReadWriteLock;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/a/c.class */
public class c extends com.bytedance.sdk.openadsdk.k.a.a {

    /* renamed from: a  reason: collision with root package name */
    public final File f9670a;

    /* renamed from: c  reason: collision with root package name */
    private final ReentrantReadWriteLock f9672c;

    /* renamed from: d  reason: collision with root package name */
    private final ReentrantReadWriteLock.ReadLock f9673d;
    private final ReentrantReadWriteLock.WriteLock e;
    private final Executor j;

    /* renamed from: b  reason: collision with root package name */
    private final LinkedHashMap<String, File> f9671b = new LinkedHashMap<>(0, 0.75f, true);
    private final Set<a> f = Collections.newSetFromMap(new ConcurrentHashMap());
    private volatile long g = 104857600;
    private volatile float h = 0.5f;
    private final b i = new b();
    private final Runnable k = new Runnable() { // from class: com.bytedance.sdk.openadsdk.k.a.c.3
        @Override // java.lang.Runnable
        public void run() {
            c.this.j.execute(new Runnable() { // from class: com.bytedance.sdk.openadsdk.k.a.c.3.1
                @Override // java.lang.Runnable
                public void run() {
                    c.this.b(c.this.g);
                }
            });
        }
    };
    private final Handler l = new Handler(Looper.getMainLooper());

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/a/c$a.class */
    public interface a {
        void a(String str);

        void a(Set<String> set);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/a/c$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final Map<String, Integer> f9684a;

        private b() {
            this.f9684a = new HashMap();
        }

        final void a(String str) {
            synchronized (this) {
                if (!TextUtils.isEmpty(str)) {
                    Integer num = this.f9684a.get(str);
                    if (num == null) {
                        this.f9684a.put(str, 1);
                        return;
                    }
                    this.f9684a.put(str, Integer.valueOf(num.intValue() + 1));
                }
            }
        }

        final void b(String str) {
            Integer num;
            synchronized (this) {
                if (!TextUtils.isEmpty(str) && (num = this.f9684a.get(str)) != null) {
                    if (num.intValue() == 1) {
                        this.f9684a.remove(str);
                        return;
                    }
                    this.f9684a.put(str, Integer.valueOf(num.intValue() - 1));
                }
            }
        }

        final boolean c(String str) {
            synchronized (this) {
                if (TextUtils.isEmpty(str)) {
                    return false;
                }
                return this.f9684a.containsKey(str);
            }
        }
    }

    public c(File file) throws IOException {
        String str;
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.f9672c = reentrantReadWriteLock;
        this.f9673d = reentrantReadWriteLock.readLock();
        this.e = reentrantReadWriteLock.writeLock();
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new ArrayBlockingQueue(4), new ThreadFactory() { // from class: com.bytedance.sdk.openadsdk.k.a.c.1
            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                Thread thread = new Thread(runnable);
                thread.setName("DiskLruCache-cleanup-" + thread.getId());
                thread.setDaemon(true);
                return thread;
            }
        }, new RejectedExecutionHandler() { // from class: com.bytedance.sdk.openadsdk.k.a.c.2
            @Override // java.util.concurrent.RejectedExecutionHandler
            public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor2) {
                if (e.f9723c) {
                    Log.w("TAG_PROXY_DiskLruCache", "clean up command rejected!");
                }
            }
        });
        this.j = threadPoolExecutor;
        if (file == null || !file.exists() || !file.isDirectory() || !file.canRead() || !file.canWrite()) {
            if (file == null) {
                str = " dir null";
            } else {
                str = "exists: " + file.exists() + ", isDirectory: " + file.isDirectory() + ", canRead: " + file.canRead() + ", canWrite: " + file.canWrite();
            }
            throw new IOException("dir error!  ".concat(String.valueOf(str)));
        }
        this.f9670a = file;
        threadPoolExecutor.execute(new Runnable() { // from class: com.bytedance.sdk.openadsdk.k.a.c.4
            @Override // java.lang.Runnable
            public void run() {
                c.this.b();
            }
        });
    }

    private String a(File file) {
        return file.getName();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Finally extract failed */
    public void b() {
        this.e.lock();
        try {
            File[] listFiles = this.f9670a.listFiles();
            if (listFiles != null && listFiles.length > 0) {
                final HashMap hashMap = new HashMap(listFiles.length);
                ArrayList arrayList = new ArrayList(listFiles.length);
                for (File file : listFiles) {
                    if (file.isFile()) {
                        arrayList.add(file);
                        hashMap.put(file, Long.valueOf(file.lastModified()));
                    }
                }
                Collections.sort(arrayList, new Comparator<File>() { // from class: com.bytedance.sdk.openadsdk.k.a.c.5
                    /* renamed from: a */
                    public int compare(File file2, File file3) {
                        int i = ((((Long) hashMap.get(file2)).longValue() - ((Long) hashMap.get(file3)).longValue()) > 0L ? 1 : ((((Long) hashMap.get(file2)).longValue() - ((Long) hashMap.get(file3)).longValue()) == 0L ? 0 : -1));
                        if (i < 0) {
                            return -1;
                        }
                        return i > 0 ? 1 : 0;
                    }
                });
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    File file2 = (File) it2.next();
                    this.f9671b.put(a(file2), file2);
                }
            }
            this.e.unlock();
            c();
        } catch (Throwable th) {
            this.e.unlock();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:53:0x019c A[LOOP:3: B:51:0x0192->B:53:0x019c, LOOP_END] */
    /* JADX WARN: Type inference failed for: r10v10 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r7v1, types: [long] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void b(long r7) {
        /*
            Method dump skipped, instructions count: 463
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.k.a.c.b(long):void");
    }

    private void c() {
        this.l.removeCallbacks(this.k);
        this.l.postDelayed(this.k, 10000L);
    }

    public void a() {
        d.c().d();
        Context a2 = e.a();
        if (a2 != null) {
            com.bytedance.sdk.openadsdk.k.b.c.a(a2).a(0);
        }
        this.l.removeCallbacks(this.k);
        this.j.execute(new Runnable() { // from class: com.bytedance.sdk.openadsdk.k.a.c.6
            @Override // java.lang.Runnable
            public void run() {
                c.this.b(0L);
            }
        });
    }

    public void a(long j) {
        this.g = j;
        c();
    }

    public void a(a aVar) {
        if (aVar != null) {
            this.f.add(aVar);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.k.a.a
    public void a(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.i.a(str);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.k.a.a
    public void b(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.i.b(str);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.k.a.a
    public File c(String str) {
        this.f9673d.lock();
        File file = this.f9671b.get(str);
        this.f9673d.unlock();
        if (file != null) {
            return file;
        }
        File file2 = new File(this.f9670a, str);
        this.e.lock();
        this.f9671b.put(str, file2);
        this.e.unlock();
        for (a aVar : this.f) {
            aVar.a(str);
        }
        c();
        return file2;
    }

    @Override // com.bytedance.sdk.openadsdk.k.a.a
    public File d(String str) {
        if (!this.f9673d.tryLock()) {
            return null;
        }
        File file = this.f9671b.get(str);
        this.f9673d.unlock();
        return file;
    }
}
