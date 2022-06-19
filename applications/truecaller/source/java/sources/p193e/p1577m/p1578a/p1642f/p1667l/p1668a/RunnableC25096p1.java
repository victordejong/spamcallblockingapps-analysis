package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import com.google.android.gms.measurement.internal.zzdu;
import com.google.android.gms.measurement.internal.zzfr;
import com.google.android.gms.measurement.internal.zzhw;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: e.m.a.f.l.a.p1 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/p1.class */
public final class RunnableC25096p1 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AtomicReference f70238a;

    /* renamed from: b */
    public final /* synthetic */ zzhw f70239b;

    public RunnableC25096p1(zzhw zzhwVar, AtomicReference atomicReference) {
        this.f70239b = zzhwVar;
        this.f70238a = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f70238a) {
            AtomicReference atomicReference = this.f70238a;
            zzfr zzfrVar = ((v0) this.f70239b).a;
            atomicReference.set(Double.valueOf(zzfrVar.g.g(zzfrVar.m().i(), zzdu.f6298O)));
            this.f70238a.notify();
        }
    }
}
