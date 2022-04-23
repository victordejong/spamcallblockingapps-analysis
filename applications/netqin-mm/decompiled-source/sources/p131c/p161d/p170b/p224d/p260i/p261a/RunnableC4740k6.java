package p131c.p161d.p170b.p224d.p260i.p261a;

import android.os.RemoteException;
import com.google.android.gms.measurement.internal.zzei;
import com.google.android.gms.measurement.internal.zzir;
import com.google.android.gms.measurement.internal.zzn;
/* renamed from: c.d.b.d.i.a.k6 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/k6.class */
public final class RunnableC4740k6 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zzn f17241a;

    /* renamed from: b */
    public final /* synthetic */ zzir f17242b;

    public RunnableC4740k6(zzir zzirVar, zzn zznVar) {
        this.f17242b = zzirVar;
        this.f17241a = zznVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzei zzeiVar;
        zzeiVar = this.f17242b.f30089d;
        if (zzeiVar == null) {
            this.f17242b.mo8789p().m9152q().m9143a("Failed to send measurementEnabled to service");
            return;
        }
        try {
            zzeiVar.mo9014e(this.f17241a);
            this.f17242b.m8912J();
        } catch (RemoteException e) {
            this.f17242b.mo8789p().m9152q().m9142a("Failed to send measurementEnabled to the service", e);
        }
    }
}
