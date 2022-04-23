package p131c.p161d.p170b.p224d.p260i.p261a;

import com.google.android.gms.measurement.internal.zzas;
import com.google.android.gms.measurement.internal.zzhb;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: c.d.b.d.i.a.f5 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/f5.class */
public final class RunnableC4693f5 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AtomicReference f17080a;

    /* renamed from: b */
    public final /* synthetic */ zzhb f17081b;

    public RunnableC4693f5(zzhb zzhbVar, AtomicReference atomicReference) {
        this.f17081b = zzhbVar;
        this.f17080a = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f17080a) {
            this.f17080a.set(Integer.valueOf(this.f17081b.m24897h().m9348b(this.f17081b.m24886m().m9174y(), zzas.f29842N)));
            this.f17080a.notify();
        }
    }
}
