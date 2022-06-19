package com.bytedance.sdk.openadsdk.p176k.p177a;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import com.bytedance.sdk.openadsdk.p176k.C4991d;
import com.bytedance.sdk.openadsdk.p176k.C5001e;
import com.bytedance.sdk.openadsdk.p176k.p178b.C4982c;
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
/* renamed from: com.bytedance.sdk.openadsdk.k.a.c */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/a/c.class */
public class C4966c extends AbstractC4963a {

    /* renamed from: a */
    public final File f18053a;

    /* renamed from: c */
    private final ReentrantReadWriteLock f18055c;

    /* renamed from: d */
    private final ReentrantReadWriteLock.ReadLock f18056d;

    /* renamed from: e */
    private final ReentrantReadWriteLock.WriteLock f18057e;

    /* renamed from: j */
    private final Executor f18062j;

    /* renamed from: b */
    private final LinkedHashMap<String, File> f18054b = new LinkedHashMap<>(0, 0.75f, true);

    /* renamed from: f */
    private final Set<AbstractC4975a> f18058f = Collections.newSetFromMap(new ConcurrentHashMap());

    /* renamed from: g */
    private volatile long f18059g = 104857600;

    /* renamed from: h */
    private volatile float f18060h = 0.5f;

    /* renamed from: i */
    private final C4976b f18061i = new C4976b();

    /* renamed from: k */
    private final Runnable f18063k = new Runnable() { // from class: com.bytedance.sdk.openadsdk.k.a.c.3
        @Override // java.lang.Runnable
        public void run() {
            C4966c.this.f18062j.execute(new Runnable() { // from class: com.bytedance.sdk.openadsdk.k.a.c.3.1
                @Override // java.lang.Runnable
                public void run() {
                    C4966c.this.m33396b(C4966c.this.f18059g);
                }
            });
        }
    };

    /* renamed from: l */
    private final Handler f18064l = new Handler(Looper.getMainLooper());

    /* renamed from: com.bytedance.sdk.openadsdk.k.a.c$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/a/c$a.class */
    public interface AbstractC4975a {
        /* renamed from: a */
        void mo33333a(String str);

        /* renamed from: a */
        void mo33332a(Set<String> set);
    }

    /* renamed from: com.bytedance.sdk.openadsdk.k.a.c$b */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/a/c$b.class */
    public static final class C4976b {

        /* renamed from: a */
        private final Map<String, Integer> f18075a;

        private C4976b() {
            this.f18075a = new HashMap();
        }

        /* renamed from: a */
        final void m33388a(String str) {
            synchronized (this) {
                if (!TextUtils.isEmpty(str)) {
                    Integer num = this.f18075a.get(str);
                    if (num == null) {
                        this.f18075a.put(str, 1);
                        return;
                    }
                    this.f18075a.put(str, Integer.valueOf(num.intValue() + 1));
                }
            }
        }

        /* renamed from: b */
        final void m33387b(String str) {
            Integer num;
            synchronized (this) {
                if (!TextUtils.isEmpty(str) && (num = this.f18075a.get(str)) != null) {
                    if (num.intValue() == 1) {
                        this.f18075a.remove(str);
                        return;
                    }
                    this.f18075a.put(str, Integer.valueOf(num.intValue() - 1));
                }
            }
        }

        /* renamed from: c */
        final boolean m33386c(String str) {
            synchronized (this) {
                if (!TextUtils.isEmpty(str)) {
                    return this.f18075a.containsKey(str);
                }
                return false;
            }
        }
    }

    public C4966c(File file) throws IOException {
        String str;
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.f18055c = reentrantReadWriteLock;
        this.f18056d = reentrantReadWriteLock.readLock();
        this.f18057e = reentrantReadWriteLock.writeLock();
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
                if (C5001e.f18140c) {
                    Log.w("TAG_PROXY_DiskLruCache", "clean up command rejected!");
                }
            }
        });
        this.f18062j = threadPoolExecutor;
        if (file != null && file.exists() && file.isDirectory() && file.canRead() && file.canWrite()) {
            this.f18053a = file;
            threadPoolExecutor.execute(new Runnable() { // from class: com.bytedance.sdk.openadsdk.k.a.c.4
                @Override // java.lang.Runnable
                public void run() {
                    C4966c.this.m33397b();
                }
            });
            return;
        }
        if (file == null) {
            str = " dir null";
        } else {
            str = "exists: " + file.exists() + ", isDirectory: " + file.isDirectory() + ", canRead: " + file.canRead() + ", canWrite: " + file.canWrite();
        }
        throw new IOException("dir error!  ".concat(String.valueOf(str)));
    }

    /* renamed from: a */
    private String m33399a(File file) {
        return file.getName();
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: b */
    public void m33397b() {
        this.f18057e.lock();
        try {
            File[] listFiles = this.f18053a.listFiles();
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
                    this.f18054b.put(m33399a(file2), file2);
                }
            }
            this.f18057e.unlock();
            m33393c();
        } catch (Throwable th) {
            this.f18057e.unlock();
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x019c A[LOOP:3: B:51:0x0192->B:53:0x019c, LOOP_END] */
    /* JADX WARN: Type inference failed for: r0v101, types: [long] */
    /* JADX WARN: Type inference failed for: r0v89, types: [long] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m33396b(long r7) {
        /*
            Method dump skipped, instructions count: 463
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.p176k.p177a.C4966c.m33396b(long):void");
    }

    /* renamed from: c */
    private void m33393c() {
        this.f18064l.removeCallbacks(this.f18063k);
        this.f18064l.postDelayed(this.f18063k, 10000L);
    }

    /* renamed from: a */
    public void m33404a() {
        C4991d.m33345c().m33344d();
        Context m33341a = C5001e.m33341a();
        if (m33341a != null) {
            C4982c.m33368a(m33341a).m33369a(0);
        }
        this.f18064l.removeCallbacks(this.f18063k);
        this.f18062j.execute(new Runnable() { // from class: com.bytedance.sdk.openadsdk.k.a.c.6
            @Override // java.lang.Runnable
            public void run() {
                C4966c.this.m33396b(0L);
            }
        });
    }

    /* renamed from: a */
    public void m33403a(long j) {
        this.f18059g = j;
        m33393c();
    }

    /* renamed from: a */
    public void m33402a(AbstractC4975a abstractC4975a) {
        if (abstractC4975a != null) {
            this.f18058f.add(abstractC4975a);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.p176k.p177a.AbstractC4963a
    /* renamed from: a */
    public void mo33398a(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.f18061i.m33388a(str);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.p176k.p177a.AbstractC4963a
    /* renamed from: b */
    public void mo33394b(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.f18061i.m33387b(str);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.p176k.p177a.AbstractC4963a
    /* renamed from: c */
    public File mo33391c(String str) {
        this.f18056d.lock();
        File file = this.f18054b.get(str);
        this.f18056d.unlock();
        if (file != null) {
            return file;
        }
        File file2 = new File(this.f18053a, str);
        this.f18057e.lock();
        this.f18054b.put(str, file2);
        this.f18057e.unlock();
        for (AbstractC4975a abstractC4975a : this.f18058f) {
            abstractC4975a.mo33333a(str);
        }
        m33393c();
        return file2;
    }

    @Override // com.bytedance.sdk.openadsdk.p176k.p177a.AbstractC4963a
    /* renamed from: d */
    public File mo33390d(String str) {
        if (this.f18056d.tryLock()) {
            File file = this.f18054b.get(str);
            this.f18056d.unlock();
            return file;
        }
        return null;
    }
}
