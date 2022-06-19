package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import com.google.android.gms.measurement.internal.zzaf;
import com.google.android.gms.measurement.internal.zzdt;
import com.google.android.gms.measurement.internal.zzdu;
import com.google.android.gms.measurement.internal.zzfr;
import com.google.android.gms.measurement.internal.zzhw;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: e.m.a.f.l.a.m1 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/m1.class */
public final class RunnableC25083m1 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AtomicReference f70206a;

    /* renamed from: b */
    public final /* synthetic */ zzhw f70207b;

    public RunnableC25083m1(zzhw zzhwVar, AtomicReference atomicReference) {
        this.f70207b = zzhwVar;
        this.f70206a = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f70206a) {
            AtomicReference atomicReference = this.f70206a;
            zzfr zzfrVar = ((v0) this.f70207b).a;
            zzaf zzafVar = zzfrVar.g;
            String i = zzfrVar.m().i();
            zzdt zzdtVar = zzdu.f6295L;
            Objects.requireNonNull(zzafVar);
            atomicReference.set(i == null ? (String) zzdtVar.m38615a(null) : (String) zzdtVar.m38615a(zzafVar.c.m4232b(i, zzdtVar.f6278a)));
            this.f70206a.notify();
        }
    }
}
