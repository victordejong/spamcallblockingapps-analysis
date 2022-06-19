package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import com.google.android.gms.measurement.internal.zzaf;
import com.google.android.gms.measurement.internal.zzez;
import com.google.android.gms.measurement.internal.zzfi;
import com.google.android.gms.measurement.internal.zzjm;
import com.google.android.gms.measurement.internal.zzkd;
import com.google.android.gms.measurement.internal.zzkp;
import com.google.android.gms.measurement.internal.zzkq;
import java.util.Objects;
/* renamed from: e.m.a.f.l.a.r3 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/r3.class */
public final class RunnableC25105r3 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zzkq f70270a;

    /* renamed from: b */
    public final /* synthetic */ zzkp f70271b;

    public RunnableC25105r3(zzkp zzkpVar, zzkq zzkqVar) {
        this.f70271b = zzkpVar;
        this.f70270a = zzkqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzkp zzkpVar = this.f70271b;
        zzkpVar.a().d();
        zzkpVar.k = new zzez(zzkpVar);
        d dVar = new d(zzkpVar);
        dVar.f();
        zzkpVar.c = dVar;
        zzaf G = zzkpVar.G();
        zzfi zzfiVar = zzkpVar.a;
        Objects.requireNonNull(zzfiVar, "null reference");
        G.c = zzfiVar;
        zzjm zzjmVar = new zzjm(zzkpVar);
        zzjmVar.f();
        zzkpVar.i = zzjmVar;
        j4 j4Var = new j4(zzkpVar);
        j4Var.f();
        zzkpVar.f = j4Var;
        y1 y1Var = new y1(zzkpVar);
        y1Var.f();
        zzkpVar.h = y1Var;
        zzkd zzkdVar = new zzkd(zzkpVar);
        zzkdVar.f();
        zzkpVar.e = zzkdVar;
        zzkpVar.d = new C25110t(zzkpVar);
        if (zzkpVar.q != zzkpVar.r) {
            zzkpVar.zzay().f.m38588c("Not all upload components initialized", Integer.valueOf(zzkpVar.q), Integer.valueOf(zzkpVar.r));
        }
        zzkpVar.m = true;
        zzkp zzkpVar2 = this.f70271b;
        zzkpVar2.a().d();
        d dVar2 = zzkpVar2.c;
        zzkp.E(dVar2);
        dVar2.N();
        if (zzkpVar2.i.j.m38580a() == 0) {
            zzkpVar2.i.j.m38579b(zzkpVar2.zzav().mo38787c());
        }
        zzkpVar2.z();
    }
}
