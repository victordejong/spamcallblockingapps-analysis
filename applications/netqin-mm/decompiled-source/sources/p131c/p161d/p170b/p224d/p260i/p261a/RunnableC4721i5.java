package p131c.p161d.p170b.p224d.p260i.p261a;

import com.google.android.gms.measurement.internal.zzas;
import com.google.android.gms.measurement.internal.zzhb;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: c.d.b.d.i.a.i5 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/i5.class */
public final class RunnableC4721i5 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AtomicReference f17172a;

    /* renamed from: b */
    public final /* synthetic */ zzhb f17173b;

    public RunnableC4721i5(zzhb zzhbVar, AtomicReference atomicReference) {
        this.f17173b = zzhbVar;
        this.f17172a = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f17172a) {
            this.f17172a.set(Double.valueOf(this.f17173b.m24897h().m9346c(this.f17173b.m24886m().m9174y(), zzas.f29844O)));
            this.f17172a.notify();
        }
    }
}
