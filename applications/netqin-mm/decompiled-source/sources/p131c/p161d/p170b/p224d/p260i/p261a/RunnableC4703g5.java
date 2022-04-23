package p131c.p161d.p170b.p224d.p260i.p261a;

import com.google.android.gms.measurement.internal.zzas;
import com.google.android.gms.measurement.internal.zzhb;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: c.d.b.d.i.a.g5 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/g5.class */
public final class RunnableC4703g5 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AtomicReference f17097a;

    /* renamed from: b */
    public final /* synthetic */ zzhb f17098b;

    public RunnableC4703g5(zzhb zzhbVar, AtomicReference atomicReference) {
        this.f17098b = zzhbVar;
        this.f17097a = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f17097a) {
            this.f17097a.set(Long.valueOf(this.f17098b.m24897h().m9352a(this.f17098b.m24886m().m9174y(), zzas.f29840M)));
            this.f17097a.notify();
        }
    }
}
