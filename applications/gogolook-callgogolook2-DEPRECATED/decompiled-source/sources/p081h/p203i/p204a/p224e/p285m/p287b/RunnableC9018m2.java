package p081h.p203i.p204a.p224e.p285m.p287b;

import android.os.RemoteException;
import com.google.android.gms.measurement.internal.zzh;
/* renamed from: h.i.a.e.m.b.m2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/m2.class */
public final class RunnableC9018m2 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zzh f20490a;

    /* renamed from: b */
    public final /* synthetic */ C9000j2 f20491b;

    public RunnableC9018m2(C9000j2 j2Var, zzh zzhVar) {
        this.f20491b = j2Var;
        this.f20490a = zzhVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC8973f fVar;
        fVar = this.f20491b.f20451d;
        if (fVar == null) {
            this.f20491b.mo16178c().m16375s().m16338a("Discarding data. Failed to send app launch");
            return;
        }
        try {
            fVar.mo16129c(this.f20490a);
            this.f20491b.m16531a(fVar, null, this.f20490a);
            this.f20491b.m16545C();
        } catch (RemoteException e) {
            this.f20491b.mo16178c().m16375s().m16337a("Failed to send app launch to the service", e);
        }
    }
}
