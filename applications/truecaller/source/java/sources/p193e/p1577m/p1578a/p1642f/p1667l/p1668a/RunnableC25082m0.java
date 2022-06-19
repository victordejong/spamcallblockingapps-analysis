package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzgj;
import com.google.android.gms.measurement.internal.zzkp;
import com.google.android.gms.measurement.internal.zzp;
/* renamed from: e.m.a.f.l.a.m0 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/m0.class */
public final class RunnableC25082m0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zzp f70204a;

    /* renamed from: b */
    public final /* synthetic */ zzgj f70205b;

    public RunnableC25082m0(zzgj zzgjVar, zzp zzpVar) {
        this.f70205b = zzgjVar;
        this.f70204a = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f70205b.a.b();
        zzkp zzkpVar = this.f70205b.a;
        zzp zzpVar = this.f70204a;
        zzkpVar.a().d();
        zzkpVar.c();
        Preconditions.m38901g(zzpVar.a);
        zzkpVar.F(zzpVar);
    }
}
