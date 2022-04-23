package p131c.p161d.p170b.p224d.p260i.p261a;

import android.os.RemoteException;
import com.google.android.gms.measurement.internal.zzei;
import com.google.android.gms.measurement.internal.zzij;
import com.google.android.gms.measurement.internal.zzir;
/* renamed from: c.d.b.d.i.a.f6 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/f6.class */
public final class RunnableC4694f6 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zzij f17082a;

    /* renamed from: b */
    public final /* synthetic */ zzir f17083b;

    public RunnableC4694f6(zzir zzirVar, zzij zzijVar) {
        this.f17083b = zzirVar;
        this.f17082a = zzijVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzei zzeiVar;
        zzeiVar = this.f17083b.f30089d;
        if (zzeiVar == null) {
            this.f17083b.mo8789p().m9152q().m9143a("Failed to send current screen to service");
            return;
        }
        try {
            if (this.f17082a == null) {
                zzeiVar.mo9037a(0L, (String) null, (String) null, this.f17083b.mo8846B().getPackageName());
            } else {
                zzeiVar.mo9037a(this.f17082a.f30084c, this.f17082a.f30082a, this.f17082a.f30083b, this.f17083b.mo8846B().getPackageName());
            }
            this.f17083b.m8912J();
        } catch (RemoteException e) {
            this.f17083b.mo8789p().m9152q().m9142a("Failed to send current screen to the service", e);
        }
    }
}
