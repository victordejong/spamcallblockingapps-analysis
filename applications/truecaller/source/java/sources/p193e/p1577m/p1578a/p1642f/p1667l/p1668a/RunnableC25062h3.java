package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import android.os.Bundle;
import e.m.a.f.l.a.v0;
import p193e.p1577m.p1578a.p1642f.p1667l.p1668a.C25068i3;
import p193e.p1577m.p1578a.p1642f.p1667l.p1668a.RunnableC25062h3;
/* renamed from: e.m.a.f.l.a.h3 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/h3.class */
public final class RunnableC25062h3 implements Runnable {

    /* renamed from: a */
    public final long f70120a;

    /* renamed from: b */
    public final long f70121b;

    /* renamed from: c */
    public final /* synthetic */ C25068i3 f70122c;

    public RunnableC25062h3(C25068i3 c25068i3, long j, long j2) {
        this.f70122c = c25068i3;
        this.f70120a = j;
        this.f70121b = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ((v0) this.f70122c.f70142b).a.a().n(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzju
            @Override // java.lang.Runnable
            public final void run() {
                RunnableC25062h3 runnableC25062h3 = RunnableC25062h3.this;
                C25068i3 c25068i3 = runnableC25062h3.f70122c;
                long j = runnableC25062h3.f70120a;
                long j2 = runnableC25062h3.f70121b;
                c25068i3.f70142b.d();
                ((v0) c25068i3.f70142b).a.zzay().m.m38590a("Application going to the background");
                ((v0) c25068i3.f70142b).a.p().q.m38584a(true);
                Bundle bundle = new Bundle();
                if (!((v0) c25068i3.f70142b).a.g.s()) {
                    c25068i3.f70142b.e.f70167c.m4227a();
                    c25068i3.f70142b.e.m4210a(false, false, j2);
                }
                ((v0) c25068i3.f70142b).a.r().l("auto", "_ab", j, bundle);
            }
        });
    }
}
