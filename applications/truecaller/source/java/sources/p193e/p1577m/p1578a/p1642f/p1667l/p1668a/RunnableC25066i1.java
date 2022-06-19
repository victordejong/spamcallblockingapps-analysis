package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import com.google.android.gms.measurement.internal.zzdu;
import com.google.android.gms.measurement.internal.zzfr;
import com.google.android.gms.measurement.internal.zzhw;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: e.m.a.f.l.a.i1 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/i1.class */
public final class RunnableC25066i1 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AtomicReference f70136a;

    /* renamed from: b */
    public final /* synthetic */ zzhw f70137b;

    public RunnableC25066i1(zzhw zzhwVar, AtomicReference atomicReference) {
        this.f70137b = zzhwVar;
        this.f70136a = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f70136a) {
            AtomicReference atomicReference = this.f70136a;
            zzfr zzfrVar = ((v0) this.f70137b).a;
            atomicReference.set(Boolean.valueOf(zzfrVar.g.r(zzfrVar.m().i(), zzdu.f6294K)));
            this.f70136a.notify();
        }
    }
}
