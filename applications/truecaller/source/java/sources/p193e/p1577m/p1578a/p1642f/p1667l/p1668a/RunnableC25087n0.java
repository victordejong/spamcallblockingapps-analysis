package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzah;
import com.google.android.gms.measurement.internal.zzgj;
import com.google.android.gms.measurement.internal.zzkp;
import com.google.android.gms.measurement.internal.zzp;
/* renamed from: e.m.a.f.l.a.n0 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/n0.class */
public final class RunnableC25087n0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zzp f70219a;

    /* renamed from: b */
    public final /* synthetic */ zzgj f70220b;

    public RunnableC25087n0(zzgj zzgjVar, zzp zzpVar) {
        this.f70220b = zzgjVar;
        this.f70219a = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f70220b.a.b();
        zzkp zzkpVar = this.f70220b.a;
        zzp zzpVar = this.f70219a;
        zzkpVar.a().d();
        zzkpVar.c();
        Preconditions.m38901g(zzpVar.a);
        zzah m38625b = zzah.m38625b(zzpVar.v);
        zzah H = zzkpVar.H(zzpVar.a);
        zzkpVar.zzay().n.m38588c("Setting consent, package, consent", zzpVar.a, m38625b);
        zzkpVar.o(zzpVar.a, m38625b);
        if (m38625b.m38620g(H)) {
            zzkpVar.l(zzpVar);
        }
    }
}
