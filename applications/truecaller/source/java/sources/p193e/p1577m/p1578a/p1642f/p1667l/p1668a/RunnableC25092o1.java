package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import com.google.android.gms.measurement.internal.zzdu;
import com.google.android.gms.measurement.internal.zzfr;
import com.google.android.gms.measurement.internal.zzhw;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: e.m.a.f.l.a.o1 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/o1.class */
public final class RunnableC25092o1 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AtomicReference f70229a;

    /* renamed from: b */
    public final /* synthetic */ zzhw f70230b;

    public RunnableC25092o1(zzhw zzhwVar, AtomicReference atomicReference) {
        this.f70230b = zzhwVar;
        this.f70229a = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f70229a) {
            AtomicReference atomicReference = this.f70229a;
            zzfr zzfrVar = ((v0) this.f70230b).a;
            atomicReference.set(Integer.valueOf(zzfrVar.g.k(zzfrVar.m().i(), zzdu.f6297N)));
            this.f70229a.notify();
        }
    }
}
