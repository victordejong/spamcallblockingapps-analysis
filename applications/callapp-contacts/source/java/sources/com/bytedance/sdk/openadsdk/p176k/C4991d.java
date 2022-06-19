package com.bytedance.sdk.openadsdk.p176k;

import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import com.bytedance.sdk.openadsdk.p176k.C4977b;
import com.bytedance.sdk.openadsdk.p176k.C5034i;
import com.bytedance.sdk.openadsdk.p176k.p177a.C4964b;
import com.bytedance.sdk.openadsdk.p176k.p177a.C4966c;
import com.bytedance.sdk.openadsdk.p176k.p178b.C4981b;
import com.bytedance.sdk.openadsdk.p176k.p178b.C4982c;
import com.bytedance.sdk.openadsdk.p176k.p183g.C5028b;
import com.bytedance.sdk.openadsdk.p176k.p183g.C5030d;
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
/* renamed from: com.bytedance.sdk.openadsdk.k.d */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/d.class */
public class C4991d {

    /* renamed from: e */
    private static volatile C4991d f18109e;

    /* renamed from: b */
    private final SparseArray<Map<String, C4977b>> f18111b;

    /* renamed from: c */
    private final C4999b<Runnable> f18112c;

    /* renamed from: d */
    private final ExecutorService f18113d;

    /* renamed from: f */
    private volatile C4982c f18114f;

    /* renamed from: g */
    private volatile C4966c f18115g;

    /* renamed from: h */
    private volatile C4964b f18116h;

    /* renamed from: k */
    private volatile C4986c f18119k;

    /* renamed from: l */
    private volatile C4986c f18120l;

    /* renamed from: m */
    private volatile String f18121m;

    /* renamed from: n */
    private volatile boolean f18122n;

    /* renamed from: a */
    private volatile int f18110a = 163840;

    /* renamed from: i */
    private final HashSet<C4998a> f18117i = new HashSet<>();

    /* renamed from: j */
    private final C4977b.AbstractC4979b f18118j = new C4977b.AbstractC4979b() { // from class: com.bytedance.sdk.openadsdk.k.d.1
        @Override // com.bytedance.sdk.openadsdk.p176k.C4977b.AbstractC4979b
        /* renamed from: a */
        public void mo33260a(C4977b c4977b) {
            int f = c4977b.m33409f();
            synchronized (C4991d.this.f18111b) {
                Map map = (Map) C4991d.this.f18111b.get(f);
                if (map != null) {
                    map.remove(c4977b.f18043h);
                }
            }
            if (C5001e.f18140c) {
                new StringBuilder("afterExecute, key: ").append(c4977b.f18043h);
            }
        }
    };

    /* renamed from: com.bytedance.sdk.openadsdk.k.d$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/d$a.class */
    public static final class C4998a {

        /* renamed from: a */
        final boolean f18131a;

        /* renamed from: b */
        final boolean f18132b;

        /* renamed from: c */
        final int f18133c;

        /* renamed from: d */
        final String f18134d;

        /* renamed from: e */
        final Map<String, String> f18135e;

        /* renamed from: f */
        final String[] f18136f;

        C4998a(boolean z, boolean z2, int i, String str, Map<String, String> map, String[] strArr) {
            this.f18131a = z;
            this.f18132b = z2;
            this.f18133c = i;
            this.f18134d = str;
            this.f18135e = map;
            this.f18136f = strArr;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            C4998a c4998a = (C4998a) obj;
            if (this.f18131a != c4998a.f18131a || this.f18132b != c4998a.f18132b || this.f18133c != c4998a.f18133c) {
                return false;
            }
            return this.f18134d.equals(c4998a.f18134d);
        }

        public final int hashCode() {
            return ((((((this.f18131a ? 1 : 0) * 31) + (this.f18132b ? 1 : 0)) * 31) + this.f18133c) * 31) + this.f18134d.hashCode();
        }
    }

    /* renamed from: com.bytedance.sdk.openadsdk.k.d$b */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/d$b.class */
    public static final class C4999b<T> extends LinkedBlockingDeque<T> {

        /* renamed from: a */
        private ThreadPoolExecutor f18137a;

        private C4999b() {
        }

        /* renamed from: a */
        public final void m33342a(ThreadPoolExecutor threadPoolExecutor) {
            synchronized (this) {
                if (this.f18137a != null) {
                    throw new IllegalStateException("You can only call setExecutor() once!");
                }
                if (threadPoolExecutor == null) {
                    throw new NullPointerException("executor argument can't be null!");
                }
                this.f18137a = threadPoolExecutor;
            }
        }

        @Override // java.util.concurrent.LinkedBlockingDeque, java.util.Queue, java.util.concurrent.BlockingDeque, java.util.concurrent.BlockingQueue, java.util.Deque
        public final boolean offer(T t) {
            synchronized (this) {
                int poolSize = this.f18137a.getPoolSize();
                int activeCount = this.f18137a.getActiveCount();
                int maximumPoolSize = this.f18137a.getMaximumPoolSize();
                if (activeCount < poolSize || poolSize >= maximumPoolSize) {
                    return offerFirst(t);
                }
                boolean z = C5001e.f18140c;
                return false;
            }
        }
    }

    private C4991d() {
        SparseArray<Map<String, C4977b>> sparseArray = new SparseArray<>(2);
        this.f18111b = sparseArray;
        C4999b<Runnable> c4999b = new C4999b<>();
        this.f18112c = c4999b;
        ExecutorService m33354a = m33354a(c4999b);
        this.f18113d = m33354a;
        c4999b.m33342a((ThreadPoolExecutor) m33354a);
        sparseArray.put(0, new HashMap());
        sparseArray.put(1, new HashMap());
    }

    /* renamed from: a */
    private static ExecutorService m33354a(final C4999b<Runnable> c4999b) {
        int m33234a = C5030d.m33234a();
        if (m33234a <= 0) {
            m33234a = 1;
        } else if (m33234a > 4) {
            m33234a = 4;
        }
        return new ThreadPoolExecutor(0, m33234a, 60L, TimeUnit.SECONDS, c4999b, new ThreadFactory() { // from class: com.bytedance.sdk.openadsdk.k.d.4
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
                if (C5001e.f18140c) {
                    new StringBuilder("new preload thead: ").append(thread.getName());
                }
                return thread;
            }
        }, new RejectedExecutionHandler() { // from class: com.bytedance.sdk.openadsdk.k.d.5
            @Override // java.util.concurrent.RejectedExecutionHandler
            public final void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
                try {
                    c4999b.offerFirst(runnable);
                    boolean z = C5001e.f18140c;
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        });
    }

    /* renamed from: c */
    public static C4991d m33345c() {
        if (f18109e == null) {
            synchronized (C4991d.class) {
                try {
                    if (f18109e == null) {
                        f18109e = new C4991d();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f18109e;
    }

    /* renamed from: a */
    public C4986c m33359a() {
        return this.f18119k;
    }

    /* renamed from: a */
    public void m33358a(int i) {
        if (i > 0) {
            this.f18110a = i;
        }
        boolean z = C5001e.f18140c;
    }

    /* renamed from: a */
    public void m33357a(long j, long j2, long j3) {
        synchronized (this) {
        }
    }

    /* renamed from: a */
    public void m33356a(C4966c c4966c) {
        this.f18115g = c4966c;
    }

    /* renamed from: a */
    public void m33355a(C4982c c4982c) {
        this.f18114f = c4982c;
    }

    /* renamed from: a */
    public void m33352a(String str) {
        m33348a(false, false, str);
    }

    /* renamed from: a */
    public void m33351a(boolean z, String str) {
        HashSet hashSet;
        HashSet hashSet2;
        this.f18121m = str;
        this.f18122n = z;
        boolean z2 = C5001e.f18140c;
        C4977b c4977b = null;
        if (str == null) {
            synchronized (this.f18117i) {
                hashSet2 = null;
                if (!this.f18117i.isEmpty()) {
                    hashSet2 = new HashSet(this.f18117i);
                    this.f18117i.clear();
                }
            }
            if (hashSet2 == null) {
                return;
            }
            Iterator it2 = hashSet2.iterator();
            while (it2.hasNext()) {
                C4998a c4998a = (C4998a) it2.next();
                m33350a(c4998a.f18131a, c4998a.f18132b, c4998a.f18133c, c4998a.f18134d, c4998a.f18135e, c4998a.f18136f);
                if (C5001e.f18140c) {
                    new StringBuilder("setCurrentPlayKey, resume preload: ").append(c4998a.f18134d);
                }
            }
            return;
        }
        int i = C5001e.f18145h;
        if (i != 3 && i != 2) {
            if (i != 1) {
                return;
            }
            synchronized (this.f18111b) {
                Map<String, C4977b> map = this.f18111b.get(C4981b.m33370a(z));
                if (map != null) {
                    c4977b = map.remove(str);
                }
            }
            if (c4977b == null) {
                return;
            }
            c4977b.mo33272a();
            return;
        }
        synchronized (this.f18111b) {
            int i2 = 0;
            int size = this.f18111b.size();
            HashSet hashSet3 = null;
            while (true) {
                hashSet = hashSet3;
                if (i2 >= size) {
                    break;
                }
                SparseArray<Map<String, C4977b>> sparseArray = this.f18111b;
                Map<String, C4977b> map2 = sparseArray.get(sparseArray.keyAt(i2));
                HashSet hashSet4 = hashSet;
                if (map2 != null) {
                    Collection<C4977b> values = map2.values();
                    hashSet4 = hashSet;
                    if (values != null) {
                        hashSet4 = hashSet;
                        if (!values.isEmpty()) {
                            hashSet4 = hashSet;
                            if (hashSet == null) {
                                hashSet4 = new HashSet();
                            }
                            hashSet4.addAll(values);
                        }
                    }
                    map2.clear();
                }
                i2++;
                hashSet3 = hashSet4;
            }
        }
        if (hashSet == null || hashSet.isEmpty()) {
            return;
        }
        Iterator it3 = hashSet.iterator();
        while (it3.hasNext()) {
            C4977b c4977b2 = (C4977b) it3.next();
            c4977b2.mo33272a();
            if (C5001e.f18140c) {
                new StringBuilder("setCurrentPlayKey, cancel preload: ").append(c4977b2.f18042g);
            }
        }
        if (i != 3) {
            return;
        }
        synchronized (this.f18117i) {
            Iterator it4 = hashSet.iterator();
            while (it4.hasNext()) {
                C4998a c4998a2 = (C4998a) ((C4977b) it4.next()).f18077n;
                if (c4998a2 != null) {
                    this.f18117i.add(c4998a2);
                }
            }
        }
    }

    /* renamed from: a */
    public void m33350a(boolean z, boolean z2, int i, String str, Map<String, String> map, String... strArr) {
        boolean z3 = C5001e.f18140c;
        C4964b c4964b = z ? this.f18116h : this.f18115g;
        C4982c c4982c = this.f18114f;
        if (c4964b == null || c4982c == null) {
            if (!C5001e.f18140c) {
                return;
            }
            Log.e("TAG_PROXY_Preloader", "cache or videoProxyDB null in Preloader!!!");
        } else if (TextUtils.isEmpty(str) || strArr == null || strArr.length <= 0) {
        } else {
            if (i <= 0) {
                i = this.f18110a;
            }
            String m33243a = z2 ? str : C5028b.m33243a(str);
            File mo33390d = c4964b.mo33390d(m33243a);
            if (mo33390d != null && mo33390d.length() >= i) {
                if (!C5001e.f18140c) {
                    return;
                }
                StringBuilder sb = new StringBuilder("no need preload, file size: ");
                sb.append(mo33390d.length());
                sb.append(", need preload size: ");
                sb.append(i);
            } else if (C5011f.m33315a().m33314a(C4981b.m33370a(z), m33243a)) {
                if (!C5001e.f18140c) {
                    return;
                }
                Log.w("TAG_PROXY_Preloader", "has running proxy task, skip preload for key: ".concat(String.valueOf(str)));
            } else {
                synchronized (this.f18111b) {
                    Map<String, C4977b> map2 = this.f18111b.get(z ? 1 : 0);
                    if (map2.containsKey(m33243a)) {
                        return;
                    }
                    C4998a c4998a = new C4998a(z, z2, i, str, map, strArr);
                    String str2 = this.f18121m;
                    if (str2 != null) {
                        int i2 = C5001e.f18145h;
                        if (i2 == 3) {
                            synchronized (this.f18117i) {
                                this.f18117i.add(c4998a);
                            }
                            if (C5001e.f18140c) {
                                Log.w("TAG_PROXY_Preloader", "cancel preload: " + str + ", add to pending queue");
                            }
                            return;
                        } else if (i2 == 2) {
                            if (C5001e.f18140c) {
                                Log.w("TAG_PROXY_Preloader", "cancel preload: ".concat(String.valueOf(str)));
                            }
                            return;
                        } else if (i2 == 1 && this.f18122n == z && str2.equals(m33243a)) {
                            if (C5001e.f18140c) {
                                Log.w("TAG_PROXY_Preloader", "cancel preload: " + str + ", it is playing");
                            }
                            return;
                        }
                    }
                    List<C5034i.C5036b> m33220a = C5030d.m33220a(C5030d.m33219a(map));
                    ArrayList arrayList = null;
                    if (m33220a != null) {
                        ArrayList arrayList2 = new ArrayList(m33220a.size());
                        int size = m33220a.size();
                        int i3 = 0;
                        while (true) {
                            arrayList = arrayList2;
                            if (i3 >= size) {
                                break;
                            }
                            C5034i.C5036b c5036b = m33220a.get(i3);
                            if (c5036b != null) {
                                arrayList2.add(new C5034i.C5036b(c5036b.f18235a, c5036b.f18236b));
                            }
                            i3++;
                        }
                    }
                    C4977b m33381a = new C4977b.C4978a().m33379a(c4964b).m33377a(c4982c).m33373a(str).m33371b(m33243a).m33375a(new C5041l(C5030d.m33218a(strArr))).m33372a((List<C5034i.C5036b>) arrayList).m33380a(i).m33378a(this.f18118j).m33374a(c4998a).m33381a();
                    map2.put(m33243a, m33381a);
                    this.f18113d.execute(m33381a);
                }
            }
        }
    }

    /* renamed from: a */
    public void m33349a(boolean z, boolean z2, int i, String str, String... strArr) {
        m33350a(z, z2, i, str, null, strArr);
    }

    /* renamed from: a */
    public void m33348a(final boolean z, final boolean z2, final String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        C5030d.m33225a(new Runnable() { // from class: com.bytedance.sdk.openadsdk.k.d.2
            @Override // java.lang.Runnable
            public void run() {
                C4977b c4977b;
                synchronized (C4991d.this.f18111b) {
                    Map map = (Map) C4991d.this.f18111b.get(C4981b.m33370a(z));
                    if (map != null) {
                        c4977b = (C4977b) map.remove(z2 ? str : C5028b.m33243a(str));
                    } else {
                        c4977b = null;
                    }
                }
                if (c4977b != null) {
                    c4977b.mo33272a();
                }
            }
        });
    }

    /* renamed from: b */
    public C4986c m33347b() {
        return this.f18120l;
    }

    /* renamed from: d */
    public void m33344d() {
        C5030d.m33225a(new Runnable() { // from class: com.bytedance.sdk.openadsdk.k.d.3
            @Override // java.lang.Runnable
            public void run() {
                ArrayList<C4977b> arrayList = new ArrayList();
                synchronized (C4991d.this.f18111b) {
                    int size = C4991d.this.f18111b.size();
                    for (int i = 0; i < size; i++) {
                        Map map = (Map) C4991d.this.f18111b.get(C4991d.this.f18111b.keyAt(i));
                        if (map != null) {
                            arrayList.addAll(map.values());
                            map.clear();
                        }
                    }
                    C4991d.this.f18112c.clear();
                }
                for (C4977b c4977b : arrayList) {
                    c4977b.mo33272a();
                    if (C5001e.f18140c) {
                        Log.w("TAG_PROXY_Preloader", "PreloadTask: " + c4977b + ", canceled!!!");
                    }
                }
            }
        });
    }
}
