package com.bytedance.sdk.openadsdk.k;

import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import com.bytedance.sdk.openadsdk.k.b;
import com.bytedance.sdk.openadsdk.k.b.c;
import com.bytedance.sdk.openadsdk.k.i;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/d.class */
public class d {
    private static volatile d e;

    /* renamed from: b  reason: collision with root package name */
    private final SparseArray<Map<String, com.bytedance.sdk.openadsdk.k.b>> f9705b;

    /* renamed from: c  reason: collision with root package name */
    private final b<Runnable> f9706c;

    /* renamed from: d  reason: collision with root package name */
    private final ExecutorService f9707d;
    private volatile c f;
    private volatile com.bytedance.sdk.openadsdk.k.a.c g;
    private volatile com.bytedance.sdk.openadsdk.k.a.b h;
    private volatile c k;
    private volatile c l;
    private volatile String m;
    private volatile boolean n;

    /* renamed from: a  reason: collision with root package name */
    private volatile int f9704a = 163840;
    private final HashSet<a> i = new HashSet<>();
    private final b.AbstractC0176b j = new b.AbstractC0176b() { // from class: com.bytedance.sdk.openadsdk.k.d.1
        @Override // com.bytedance.sdk.openadsdk.k.b.AbstractC0176b
        public void a(com.bytedance.sdk.openadsdk.k.b bVar) {
            int f = bVar.f();
            synchronized (d.this.f9705b) {
                Map map = (Map) d.this.f9705b.get(f);
                if (map != null) {
                    map.remove(bVar.h);
                }
            }
            if (e.f9723c) {
                new StringBuilder("afterExecute, key: ").append(bVar.h);
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/d$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final boolean f9716a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f9717b;

        /* renamed from: c  reason: collision with root package name */
        final int f9718c;

        /* renamed from: d  reason: collision with root package name */
        final String f9719d;
        final Map<String, String> e;
        final String[] f;

        a(boolean z, boolean z2, int i, String str, Map<String, String> map, String[] strArr) {
            this.f9716a = z;
            this.f9717b = z2;
            this.f9718c = i;
            this.f9719d = str;
            this.e = map;
            this.f = strArr;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            if (this.f9716a == aVar.f9716a && this.f9717b == aVar.f9717b && this.f9718c == aVar.f9718c) {
                return this.f9719d.equals(aVar.f9719d);
            }
            return false;
        }

        public final int hashCode() {
            return ((((((this.f9716a ? 1 : 0) * 31) + (this.f9717b ? 1 : 0)) * 31) + this.f9718c) * 31) + this.f9719d.hashCode();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/d$b.class */
    public static final class b<T> extends LinkedBlockingDeque<T> {

        /* renamed from: a  reason: collision with root package name */
        private ThreadPoolExecutor f9720a;

        private b() {
        }

        public final void a(ThreadPoolExecutor threadPoolExecutor) {
            synchronized (this) {
                if (this.f9720a != null) {
                    throw new IllegalStateException("You can only call setExecutor() once!");
                } else if (threadPoolExecutor != null) {
                    this.f9720a = threadPoolExecutor;
                } else {
                    throw new NullPointerException("executor argument can't be null!");
                }
            }
        }

        @Override // java.util.concurrent.LinkedBlockingDeque, java.util.Queue, java.util.concurrent.BlockingDeque, java.util.concurrent.BlockingQueue, java.util.Deque
        public final boolean offer(T t) {
            synchronized (this) {
                int poolSize = this.f9720a.getPoolSize();
                int activeCount = this.f9720a.getActiveCount();
                int maximumPoolSize = this.f9720a.getMaximumPoolSize();
                if (activeCount < poolSize || poolSize >= maximumPoolSize) {
                    return offerFirst(t);
                }
                boolean z = e.f9723c;
                return false;
            }
        }
    }

    private d() {
        SparseArray<Map<String, com.bytedance.sdk.openadsdk.k.b>> sparseArray = new SparseArray<>(2);
        this.f9705b = sparseArray;
        b<Runnable> bVar = new b<>();
        this.f9706c = bVar;
        ExecutorService a2 = a(bVar);
        this.f9707d = a2;
        bVar.a((ThreadPoolExecutor) a2);
        sparseArray.put(0, new HashMap());
        sparseArray.put(1, new HashMap());
    }

    private static ExecutorService a(final b<Runnable> bVar) {
        int a2 = com.bytedance.sdk.openadsdk.k.g.d.a();
        if (a2 <= 0) {
            a2 = 1;
        } else if (a2 > 4) {
            a2 = 4;
        }
        return new ThreadPoolExecutor(0, a2, 60L, TimeUnit.SECONDS, bVar, new ThreadFactory() { // from class: com.bytedance.sdk.openadsdk.k.d.4
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                Thread thread = new Thread(runnable) { // from class: com.bytedance.sdk.openadsdk.k.d.4.1
                    @Override // java.lang.Thread, java.lang.Runnable
                    public void run() {
                        try {
                            Process.setThreadPriority(10);
                        } catch (Throwable th) {
                            th.printStackTrace();
                        }
                        super.run();
                    }
                };
                thread.setName("video-preload-" + thread.getId());
                thread.setDaemon(true);
                if (e.f9723c) {
                    new StringBuilder("new preload thead: ").append(thread.getName());
                }
                return thread;
            }
        }, new RejectedExecutionHandler() { // from class: com.bytedance.sdk.openadsdk.k.d.5
            @Override // java.util.concurrent.RejectedExecutionHandler
            public final void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
                try {
                    b.this.offerFirst(runnable);
                    boolean z = e.f9723c;
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        });
    }

    public static d c() {
        if (e == null) {
            synchronized (d.class) {
                try {
                    if (e == null) {
                        e = new d();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c a() {
        return this.k;
    }

    public void a(int i) {
        if (i > 0) {
            this.f9704a = i;
        }
        boolean z = e.f9723c;
    }

    public void a(long j, long j2, long j3) {
        synchronized (this) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(com.bytedance.sdk.openadsdk.k.a.c cVar) {
        this.g = cVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(c cVar) {
        this.f = cVar;
    }

    public void a(String str) {
        a(false, false, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(boolean z, String str) {
        this.m = str;
        this.n = z;
        boolean z2 = e.f9723c;
        com.bytedance.sdk.openadsdk.k.b bVar = null;
        HashSet hashSet = null;
        HashSet hashSet2 = null;
        if (str == null) {
            synchronized (this.i) {
                if (!this.i.isEmpty()) {
                    hashSet2 = new HashSet(this.i);
                    this.i.clear();
                }
            }
            if (hashSet2 != null) {
                Iterator it2 = hashSet2.iterator();
                while (it2.hasNext()) {
                    a aVar = (a) it2.next();
                    a(aVar.f9716a, aVar.f9717b, aVar.f9718c, aVar.f9719d, aVar.e, aVar.f);
                    if (e.f9723c) {
                        new StringBuilder("setCurrentPlayKey, resume preload: ").append(aVar.f9719d);
                    }
                }
                return;
            }
            return;
        }
        int i = e.h;
        if (i == 3 || i == 2) {
            synchronized (this.f9705b) {
                int i2 = 0;
                int size = this.f9705b.size();
                while (i2 < size) {
                    SparseArray<Map<String, com.bytedance.sdk.openadsdk.k.b>> sparseArray = this.f9705b;
                    Map<String, com.bytedance.sdk.openadsdk.k.b> map = sparseArray.get(sparseArray.keyAt(i2));
                    hashSet = hashSet;
                    if (map != null) {
                        Collection<com.bytedance.sdk.openadsdk.k.b> values = map.values();
                        hashSet = hashSet;
                        if (values != null) {
                            hashSet = hashSet;
                            if (!values.isEmpty()) {
                                hashSet = hashSet;
                                if (hashSet == null) {
                                    hashSet = new HashSet();
                                }
                                hashSet.addAll(values);
                            }
                        }
                        map.clear();
                    }
                    i2++;
                }
            }
            if (hashSet != null && !hashSet.isEmpty()) {
                Iterator it3 = hashSet.iterator();
                while (it3.hasNext()) {
                    com.bytedance.sdk.openadsdk.k.b bVar2 = (com.bytedance.sdk.openadsdk.k.b) it3.next();
                    bVar2.a();
                    if (e.f9723c) {
                        new StringBuilder("setCurrentPlayKey, cancel preload: ").append(bVar2.g);
                    }
                }
                if (i == 3) {
                    synchronized (this.i) {
                        Iterator it4 = hashSet.iterator();
                        while (it4.hasNext()) {
                            a aVar2 = (a) ((com.bytedance.sdk.openadsdk.k.b) it4.next()).n;
                            if (aVar2 != null) {
                                this.i.add(aVar2);
                            }
                        }
                    }
                }
            }
        } else if (i == 1) {
            synchronized (this.f9705b) {
                Map<String, com.bytedance.sdk.openadsdk.k.b> map2 = this.f9705b.get(com.bytedance.sdk.openadsdk.k.b.b.a(z));
                if (map2 != null) {
                    bVar = map2.remove(str);
                }
            }
            if (bVar != null) {
                bVar.a();
            }
        }
    }

    public void a(boolean z, boolean z2, int i, String str, Map<String, String> map, String... strArr) {
        boolean z3 = e.f9723c;
        com.bytedance.sdk.openadsdk.k.a.a aVar = z ? this.h : this.g;
        c cVar = this.f;
        if (aVar == null || cVar == null) {
            if (e.f9723c) {
                Log.e("TAG_PROXY_Preloader", "cache or videoProxyDB null in Preloader!!!");
            }
        } else if (!TextUtils.isEmpty(str) && strArr != null && strArr.length > 0) {
            if (i <= 0) {
                i = this.f9704a;
            }
            String a2 = z2 ? str : com.bytedance.sdk.openadsdk.k.g.b.a(str);
            File d2 = aVar.d(a2);
            if (d2 == null || d2.length() < i) {
                if (!f.a().a(com.bytedance.sdk.openadsdk.k.b.b.a(z), a2)) {
                    synchronized (this.f9705b) {
                        Map<String, com.bytedance.sdk.openadsdk.k.b> map2 = this.f9705b.get(z ? 1 : 0);
                        if (!map2.containsKey(a2)) {
                            a aVar2 = new a(z, z2, i, str, map, strArr);
                            String str2 = this.m;
                            if (str2 != null) {
                                int i2 = e.h;
                                if (i2 == 3) {
                                    synchronized (this.i) {
                                        this.i.add(aVar2);
                                    }
                                    if (e.f9723c) {
                                        Log.w("TAG_PROXY_Preloader", "cancel preload: " + str + ", add to pending queue");
                                    }
                                    return;
                                } else if (i2 == 2) {
                                    if (e.f9723c) {
                                        Log.w("TAG_PROXY_Preloader", "cancel preload: ".concat(String.valueOf(str)));
                                    }
                                    return;
                                } else if (i2 == 1 && this.n == z && str2.equals(a2)) {
                                    if (e.f9723c) {
                                        Log.w("TAG_PROXY_Preloader", "cancel preload: " + str + ", it is playing");
                                    }
                                    return;
                                }
                            }
                            ArrayList arrayList = null;
                            List<i.b> a3 = com.bytedance.sdk.openadsdk.k.g.d.a(com.bytedance.sdk.openadsdk.k.g.d.a(map));
                            if (a3 != null) {
                                ArrayList arrayList2 = new ArrayList(a3.size());
                                int size = a3.size();
                                int i3 = 0;
                                while (true) {
                                    arrayList = arrayList2;
                                    if (i3 >= size) {
                                        break;
                                    }
                                    i.b bVar = a3.get(i3);
                                    if (bVar != null) {
                                        arrayList2.add(new i.b(bVar.f9785a, bVar.f9786b));
                                    }
                                    i3++;
                                }
                            }
                            com.bytedance.sdk.openadsdk.k.b a4 = new b.a().a(aVar).a(cVar).a(str).b(a2).a(new l(com.bytedance.sdk.openadsdk.k.g.d.a(strArr))).a((List<i.b>) arrayList).a(i).a(this.j).a(aVar2).a();
                            map2.put(a2, a4);
                            this.f9707d.execute(a4);
                        }
                    }
                } else if (e.f9723c) {
                    Log.w("TAG_PROXY_Preloader", "has running proxy task, skip preload for key: ".concat(String.valueOf(str)));
                }
            } else if (e.f9723c) {
                StringBuilder sb = new StringBuilder("no need preload, file size: ");
                sb.append(d2.length());
                sb.append(", need preload size: ");
                sb.append(i);
            }
        }
    }

    public void a(boolean z, boolean z2, int i, String str, String... strArr) {
        a(z, z2, i, str, null, strArr);
    }

    public void a(final boolean z, final boolean z2, final String str) {
        if (!TextUtils.isEmpty(str)) {
            com.bytedance.sdk.openadsdk.k.g.d.a(new Runnable() { // from class: com.bytedance.sdk.openadsdk.k.d.2
                @Override // java.lang.Runnable
                public void run() {
                    com.bytedance.sdk.openadsdk.k.b bVar;
                    synchronized (d.this.f9705b) {
                        Map map = (Map) d.this.f9705b.get(com.bytedance.sdk.openadsdk.k.b.b.a(z));
                        if (map != null) {
                            bVar = (com.bytedance.sdk.openadsdk.k.b) map.remove(z2 ? str : com.bytedance.sdk.openadsdk.k.g.b.a(str));
                        } else {
                            bVar = null;
                        }
                    }
                    if (bVar != null) {
                        bVar.a();
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c b() {
        return this.l;
    }

    public void d() {
        com.bytedance.sdk.openadsdk.k.g.d.a(new Runnable() { // from class: com.bytedance.sdk.openadsdk.k.d.3
            @Override // java.lang.Runnable
            public void run() {
                ArrayList<com.bytedance.sdk.openadsdk.k.b> arrayList = new ArrayList();
                synchronized (d.this.f9705b) {
                    int size = d.this.f9705b.size();
                    for (int i = 0; i < size; i++) {
                        Map map = (Map) d.this.f9705b.get(d.this.f9705b.keyAt(i));
                        if (map != null) {
                            arrayList.addAll(map.values());
                            map.clear();
                        }
                    }
                    d.this.f9706c.clear();
                }
                for (com.bytedance.sdk.openadsdk.k.b bVar : arrayList) {
                    bVar.a();
                    if (e.f9723c) {
                        Log.w("TAG_PROXY_Preloader", "PreloadTask: " + bVar + ", canceled!!!");
                    }
                }
            }
        });
    }
}
