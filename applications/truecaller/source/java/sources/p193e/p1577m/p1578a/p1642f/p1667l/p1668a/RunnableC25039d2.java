package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import com.google.android.gms.measurement.internal.zzid;
import com.google.android.gms.measurement.internal.zzik;
import com.google.android.gms.measurement.internal.zzjk;
/* renamed from: e.m.a.f.l.a.d2 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/d2.class */
public final class RunnableC25039d2 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zzid f70040a;

    /* renamed from: b */
    public final /* synthetic */ long f70041b;

    /* renamed from: c */
    public final /* synthetic */ zzik f70042c;

    public RunnableC25039d2(zzik zzikVar, zzid zzidVar, long j) {
        this.f70042c = zzikVar;
        this.f70040a = zzidVar;
        this.f70041b = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f70042c.j(this.f70040a, false, this.f70041b);
        zzik zzikVar = this.f70042c;
        zzikVar.e = null;
        zzjk u = ((v0) zzikVar).a.u();
        u.d();
        u.e();
        u.p(new RunnableC25080l2(u, null));
    }
}
