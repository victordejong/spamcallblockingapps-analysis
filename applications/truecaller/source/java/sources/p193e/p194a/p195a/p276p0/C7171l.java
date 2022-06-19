package p193e.p194a.p195a.p276p0;

import androidx.work.ListenableWorker;
import javax.inject.Inject;
import o3.a;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1392y2.AbstractC21765k;
import p193e.p194a.p195a.p231g.AbstractC6233m;
import s1.z.c.l;
/* renamed from: e.a.a.p0.l */
/* loaded from: classes10-dex2jar.jar:e/a/a/p0/l.class */
public final class C7171l extends AbstractC21765k {

    /* renamed from: b */
    public final String f23056b = "UnclassifiedMessagesWorkAction";

    /* renamed from: c */
    public final C20592g f23057c;

    /* renamed from: d */
    public final a<AbstractC19854f<AbstractC6233m>> f23058d;

    @Inject
    public C7171l(C20592g c20592g, a<AbstractC19854f<AbstractC6233m>> aVar) {
        l.e(c20592g, "featuresRegistry");
        l.e(aVar, "messagesStorage");
        this.f23057c = c20592g;
        this.f23058d = aVar;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: a */
    public ListenableWorker.AbstractC0414a mo9063a() {
        ((AbstractC6233m) ((AbstractC19854f) this.f23058d.get()).mo11854a()).mo31692f0();
        ListenableWorker.AbstractC0414a.C0417c c0417c = new ListenableWorker.AbstractC0414a.C0417c();
        l.d(c0417c, "ListenableWorker.Result.success()");
        return c0417c;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: b */
    public String mo9062b() {
        return this.f23056b;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: c */
    public boolean mo9061c() {
        return this.f23057c.m10963h0().isEnabled();
    }
}
