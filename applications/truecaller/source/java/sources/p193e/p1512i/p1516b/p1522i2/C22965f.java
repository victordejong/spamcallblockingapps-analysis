package p193e.p1512i.p1516b.p1522i2;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.criteo.publisher.context.ContextData;
import com.huawei.hms.support.api.entity.core.JosStatusCodes;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import p193e.p1512i.p1516b.AbstractC22939e2;
import p193e.p1512i.p1516b.C22925b3;
import p193e.p1512i.p1516b.p1531s2.C23088k;
import p193e.p1512i.p1516b.p1533u2.C23126p;
import p193e.p1512i.p1516b.p1533u2.C23128r;
import p193e.p1512i.p1516b.p1533u2.C23132x;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.z.c.l;
/* renamed from: e.i.b.i2.f */
/* loaded from: classes-dex2jar.jar:e/i/b/i2/f.class */
public class C22965f {

    /* renamed from: a */
    public final C22967g f63681a;

    /* renamed from: b */
    public final C23128r f63682b;

    /* renamed from: c */
    public final AbstractC22939e2 f63683c;

    /* renamed from: d */
    public final Executor f63684d;

    /* renamed from: e */
    public final ScheduledExecutorService f63685e;

    /* renamed from: f */
    public final C23132x f63686f;

    /* renamed from: e.i.b.i2.f$a */
    /* loaded from: classes-dex2jar.jar:e/i/b/i2/f$a.class */
    public static final class RunnableC22966a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C22925b3 f63687a;

        public RunnableC22966a(C22925b3 c22925b3) {
            this.f63687a = c22925b3;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f63687a.m7622c();
        }
    }

    public C22965f(C22967g c22967g, C23128r c23128r, AbstractC22939e2 abstractC22939e2, Executor executor, ScheduledExecutorService scheduledExecutorService, C23132x c23132x) {
        l.f(c22967g, "pubSdkApi");
        l.f(c23128r, "cdbRequestFactory");
        l.f(abstractC22939e2, "clock");
        l.f(executor, "executor");
        l.f(scheduledExecutorService, "scheduledExecutorService");
        l.f(c23132x, DTBMetricsConfiguration.CONFIG_DIR);
        this.f63681a = c22967g;
        this.f63682b = c23128r;
        this.f63683c = abstractC22939e2;
        this.f63684d = executor;
        this.f63685e = scheduledExecutorService;
        this.f63686f = c23132x;
    }

    /* renamed from: a */
    public void m7612a(C23126p c23126p, ContextData contextData, C22925b3 c22925b3) {
        l.f(c23126p, "cacheAdUnit");
        l.f(contextData, "contextData");
        l.f(c22925b3, "liveCdbCallListener");
        this.f63685e.schedule(new RunnableC22966a(c22925b3), ((Integer) C23088k.m7561a(this.f63686f.f64080b.mo7509j(), Integer.valueOf((int) JosStatusCodes.RTN_CODE_COMMON_ERROR))).intValue(), TimeUnit.MILLISECONDS);
        this.f63684d.execute(new C22963d(this.f63681a, this.f63682b, this.f63683c, C25225a.m3962T1(c23126p), contextData, c22925b3));
    }
}
