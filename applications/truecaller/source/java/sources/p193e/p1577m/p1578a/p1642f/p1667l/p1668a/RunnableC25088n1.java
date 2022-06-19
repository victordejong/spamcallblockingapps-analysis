package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import com.google.android.gms.measurement.internal.zzdu;
import com.google.android.gms.measurement.internal.zzfr;
import com.google.android.gms.measurement.internal.zzhw;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: e.m.a.f.l.a.n1 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/n1.class */
public final class RunnableC25088n1 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AtomicReference f70221a;

    /* renamed from: b */
    public final /* synthetic */ zzhw f70222b;

    public RunnableC25088n1(zzhw zzhwVar, AtomicReference atomicReference) {
        this.f70222b = zzhwVar;
        this.f70221a = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f70221a) {
            AtomicReference atomicReference = this.f70221a;
            zzfr zzfrVar = ((v0) this.f70222b).a;
            atomicReference.set(Long.valueOf(zzfrVar.g.n(zzfrVar.m().i(), zzdu.f6296M)));
            this.f70221a.notify();
        }
    }
}
