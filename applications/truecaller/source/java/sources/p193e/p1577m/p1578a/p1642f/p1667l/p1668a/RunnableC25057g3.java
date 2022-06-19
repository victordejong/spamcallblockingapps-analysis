package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import com.google.android.gms.measurement.internal.zzka;
/* renamed from: e.m.a.f.l.a.g3 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/g3.class */
public final class RunnableC25057g3 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ long f70108a;

    /* renamed from: b */
    public final /* synthetic */ zzka f70109b;

    public RunnableC25057g3(zzka zzkaVar, long j) {
        this.f70109b = zzkaVar;
        this.f70108a = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzka zzkaVar = this.f70109b;
        long j = this.f70108a;
        zzkaVar.d();
        zzkaVar.h();
        ((v0) zzkaVar).a.zzay().n.m38589b("Activity paused, time", Long.valueOf(j));
        C25068i3 c25068i3 = zzkaVar.f;
        RunnableC25062h3 runnableC25062h3 = new RunnableC25062h3(c25068i3, ((v0) c25068i3.f70142b).a.n.mo38787c(), j);
        c25068i3.f70141a = runnableC25062h3;
        c25068i3.f70142b.c.postDelayed(runnableC25062h3, 2000L);
        if (((v0) zzkaVar).a.g.s()) {
            zzkaVar.e.f70167c.m4227a();
        }
    }
}
