package p081h.p203i.p204a.p224e.p285m.p287b;

import android.os.RemoteException;
import com.google.android.gms.measurement.internal.zzh;
/* renamed from: h.i.a.e.m.b.p2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/p2.class */
public final class RunnableC9036p2 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zzh f20560a;

    /* renamed from: b */
    public final /* synthetic */ C9000j2 f20561b;

    public RunnableC9036p2(C9000j2 j2Var, zzh zzhVar) {
        this.f20561b = j2Var;
        this.f20560a = zzhVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC8973f fVar;
        fVar = this.f20561b.f20451d;
        if (fVar == null) {
            this.f20561b.mo16178c().m16375s().m16338a("Failed to send measurementEnabled to service");
            return;
        }
        try {
            fVar.mo16128d(this.f20560a);
            this.f20561b.m16545C();
        } catch (RemoteException e) {
            this.f20561b.mo16178c().m16375s().m16337a("Failed to send measurementEnabled to the service", e);
        }
    }
}
