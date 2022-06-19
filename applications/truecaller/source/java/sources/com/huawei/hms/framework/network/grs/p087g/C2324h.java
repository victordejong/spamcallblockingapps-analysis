package com.huawei.hms.framework.network.grs.p087g;

import com.huawei.hms.framework.common.ExecutorsUtils;
import com.huawei.hms.framework.common.Logger;
import com.huawei.hms.framework.common.NetworkUtil;
import com.huawei.hms.framework.network.grs.AbstractC2305b;
import com.huawei.hms.framework.network.grs.p085e.C2309a;
import com.huawei.hms.framework.network.grs.p085e.C2311c;
import com.huawei.hms.framework.network.grs.p087g.p089k.C2329b;
import com.huawei.hms.framework.network.grs.p087g.p089k.C2330c;
import com.huawei.hms.framework.network.grs.p090h.C2335d;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
/* renamed from: com.huawei.hms.framework.network.grs.g.h */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/framework/network/grs/g/h.class */
public class C2324h {

    /* renamed from: a */
    private final ExecutorService f7463a = ExecutorsUtils.newCachedThreadPool("GRS_RequestController-Task");

    /* renamed from: b */
    private final Map<String, C2329b> f7464b = new ConcurrentHashMap(16);

    /* renamed from: c */
    private final Object f7465c = new Object();

    /* renamed from: d */
    private C2309a f7466d;

    /* renamed from: com.huawei.hms.framework.network.grs.g.h$a */
    /* loaded from: classes3-dex2jar.jar:com/huawei/hms/framework/network/grs/g/h$a.class */
    public class CallableC2325a implements Callable<C2321d> {

        /* renamed from: a */
        public final /* synthetic */ C2330c f7467a;

        /* renamed from: b */
        public final /* synthetic */ String f7468b;

        /* renamed from: c */
        public final /* synthetic */ C2311c f7469c;

        public CallableC2325a(C2330c c2330c, String str, C2311c c2311c) {
            C2324h.this = r4;
            this.f7467a = c2330c;
            this.f7468b = str;
            this.f7469c = c2311c;
        }

        @Override // java.util.concurrent.Callable
        public C2321d call() {
            return new C2319c(this.f7467a, C2324h.this.f7466d).m37936a(C2324h.this.f7463a, this.f7468b, this.f7469c);
        }
    }

    /* renamed from: com.huawei.hms.framework.network.grs.g.h$b */
    /* loaded from: classes3-dex2jar.jar:com/huawei/hms/framework/network/grs/g/h$b.class */
    public class RunnableC2326b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C2330c f7471a;

        /* renamed from: b */
        public final /* synthetic */ String f7472b;

        /* renamed from: c */
        public final /* synthetic */ C2311c f7473c;

        /* renamed from: d */
        public final /* synthetic */ AbstractC2305b f7474d;

        public RunnableC2326b(C2330c c2330c, String str, C2311c c2311c, AbstractC2305b abstractC2305b) {
            C2324h.this = r4;
            this.f7471a = c2330c;
            this.f7472b = str;
            this.f7473c = c2311c;
            this.f7474d = abstractC2305b;
        }

        @Override // java.lang.Runnable
        public void run() {
            C2324h c2324h = C2324h.this;
            c2324h.m37889a(c2324h.m37885a(this.f7471a, this.f7472b, this.f7473c), this.f7474d);
        }
    }

    /* renamed from: a */
    public void m37889a(C2321d c2321d, AbstractC2305b abstractC2305b) {
        if (abstractC2305b != null) {
            if (c2321d == null) {
                Logger.m38042v("RequestController", "GrsResponse is null");
                abstractC2305b.m38026a();
                return;
            }
            Logger.m38042v("RequestController", "GrsResponse is not null");
            abstractC2305b.m38025a(c2321d);
        }
    }

    /* renamed from: a */
    public C2321d m37885a(C2330c c2330c, String str, C2311c c2311c) {
        Future<C2321d> future;
        String str2;
        Throwable e;
        Logger.m38049d("RequestController", "request to server with service name is: " + str);
        String grsParasKey = c2330c.m37875b().getGrsParasKey(true, true, c2330c.m37877a());
        Logger.m38042v("RequestController", "request spUrlKey: " + grsParasKey);
        synchronized (this.f7465c) {
            if (!NetworkUtil.isNetworkAvailable(c2330c.m37877a())) {
                return null;
            }
            C2335d.C2336a m37853a = C2335d.m37853a(grsParasKey);
            C2329b c2329b = this.f7464b.get(grsParasKey);
            try {
                if (c2329b != null && c2329b.m37878b()) {
                    future = c2329b.m37879a();
                    return future.get();
                }
                return future.get();
            } catch (InterruptedException e2) {
                e = e2;
                str2 = "when check result, find InterruptedException, check others";
                Logger.m38039w("RequestController", str2, e);
                return null;
            } catch (CancellationException e3) {
                e = e3;
                str2 = "when check result, find CancellationException, check others";
                Logger.m38039w("RequestController", str2, e);
                return null;
            } catch (ExecutionException e4) {
                e = e4;
                str2 = "when check result, find ExecutionException, check others";
                Logger.m38039w("RequestController", str2, e);
                return null;
            }
            if (m37853a != null && m37853a.m37851a()) {
                return null;
            }
            Logger.m38049d("RequestController", "hitGrsRequestBean == null or request block is released.");
            future = this.f7463a.submit(new CallableC2325a(c2330c, str, c2311c));
            this.f7464b.put(grsParasKey, new C2329b(future));
        }
    }

    /* renamed from: a */
    public void m37890a(C2309a c2309a) {
        this.f7466d = c2309a;
    }

    /* renamed from: a */
    public void m37886a(C2330c c2330c, AbstractC2305b abstractC2305b, String str, C2311c c2311c) {
        this.f7463a.execute(new RunnableC2326b(c2330c, str, c2311c, abstractC2305b));
    }

    /* renamed from: a */
    public void m37884a(String str) {
        synchronized (this.f7465c) {
            this.f7464b.remove(str);
        }
    }
}
