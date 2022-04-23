package p131c.p161d.p170b.p224d.p260i.p261a;

import android.os.RemoteException;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.measurement.internal.zzei;
import com.google.android.gms.measurement.internal.zzir;
import com.google.android.gms.measurement.internal.zzn;
/* renamed from: c.d.b.d.i.a.g6 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/g6.class */
public final class RunnableC4704g6 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zzn f17099a;

    /* renamed from: b */
    public final /* synthetic */ zzir f17100b;

    public RunnableC4704g6(zzir zzirVar, zzn zznVar) {
        this.f17100b = zzirVar;
        this.f17099a = zznVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzei zzeiVar;
        zzeiVar = this.f17100b.f30089d;
        if (zzeiVar == null) {
            this.f17100b.mo8789p().m9152q().m9143a("Discarding data. Failed to send app launch");
            return;
        }
        try {
            zzeiVar.mo9015d(this.f17099a);
            this.f17100b.m24883q().m9193C();
            this.f17100b.m8900a(zzeiVar, (AbstractSafeParcelable) null, this.f17099a);
            this.f17100b.m8912J();
        } catch (RemoteException e) {
            this.f17100b.mo8789p().m9152q().m9142a("Failed to send app launch to the service", e);
        }
    }
}
