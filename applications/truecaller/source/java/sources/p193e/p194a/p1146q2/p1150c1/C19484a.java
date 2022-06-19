package p193e.p194a.p1146q2.p1150c1;

import androidx.work.ListenableWorker;
import com.truecaller.log.AssertionUtil;
import javax.inject.Inject;
import o3.a;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1392y2.AbstractC21765k;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p682e.C12864a2;
import s1.z.c.l;
import u3.e0;
/* renamed from: e.a.q2.c1.a */
/* loaded from: classes5-dex2jar.jar:e/a/q2/c1/a.class */
public final class C19484a extends AbstractC21765k {

    /* renamed from: b */
    public final String f54087b = "EventsUploadWorkAction";

    /* renamed from: c */
    public final a<AbstractC8432l> f54088c;

    /* renamed from: d */
    public a<AbstractC19463a0> f54089d;

    /* renamed from: e */
    public a<e0> f54090e;

    @Inject
    public C19484a(a<AbstractC8432l> aVar, a<AbstractC19463a0> aVar2, a<e0> aVar3) {
        l.e(aVar, "truecallerAccountManager");
        l.e(aVar2, "eventsTracker");
        l.e(aVar3, "client");
        this.f54088c = aVar;
        this.f54089d = aVar2;
        this.f54090e = aVar3;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: a */
    public ListenableWorker.AbstractC0414a mo9063a() {
        ListenableWorker.AbstractC0414a.C0415a c0415a;
        try {
            c0415a = C12864a2.m22540r(((AbstractC19463a0) this.f54089d.get()).mo13109c((e0) this.f54090e.get()).mo11831c()) ? new ListenableWorker.AbstractC0414a.C0417c() : new ListenableWorker.AbstractC0414a.C0416b();
            l.d(c0415a, "if (eventsTracker.get().… Result.retry()\n        }");
        } catch (InterruptedException e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
            c0415a = new ListenableWorker.AbstractC0414a.C0415a();
            l.d(c0415a, "Result.failure()");
        }
        return c0415a;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: b */
    public String mo9062b() {
        return this.f54087b;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: c */
    public boolean mo9061c() {
        return ((AbstractC8432l) this.f54088c.get()).mo28580d();
    }
}
