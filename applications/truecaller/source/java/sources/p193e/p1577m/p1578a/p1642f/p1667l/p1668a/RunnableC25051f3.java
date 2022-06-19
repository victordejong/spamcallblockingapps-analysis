package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import com.google.android.gms.measurement.internal.zzka;
/* renamed from: e.m.a.f.l.a.f3 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/f3.class */
public final class RunnableC25051f3 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ long f70081a;

    /* renamed from: b */
    public final /* synthetic */ zzka f70082b;

    public RunnableC25051f3(zzka zzkaVar, long j) {
        this.f70082b = zzkaVar;
        this.f70081a = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzka zzkaVar = this.f70082b;
        long j = this.f70081a;
        zzkaVar.d();
        zzkaVar.h();
        ((v0) zzkaVar).a.zzay().n.m38589b("Activity resumed, time", Long.valueOf(j));
        if (((v0) zzkaVar).a.g.s() || ((v0) zzkaVar).a.p().q.m38583b()) {
            C25077k3 c25077k3 = zzkaVar.e;
            c25077k3.f70168d.d();
            c25077k3.f70167c.m4227a();
            c25077k3.f70165a = j;
            c25077k3.f70166b = j;
        }
        C25068i3 c25068i3 = zzkaVar.f;
        c25068i3.f70142b.d();
        RunnableC25062h3 runnableC25062h3 = c25068i3.f70141a;
        if (runnableC25062h3 != null) {
            c25068i3.f70142b.c.removeCallbacks(runnableC25062h3);
        }
        ((v0) c25068i3.f70142b).a.p().q.m38584a(false);
        C25081l3 c25081l3 = zzkaVar.d;
        c25081l3.f70203a.d();
        if (!((v0) c25081l3.f70203a).a.c()) {
            return;
        }
        c25081l3.m4165b(((v0) c25081l3.f70203a).a.n.mo38787c(), false);
    }
}
