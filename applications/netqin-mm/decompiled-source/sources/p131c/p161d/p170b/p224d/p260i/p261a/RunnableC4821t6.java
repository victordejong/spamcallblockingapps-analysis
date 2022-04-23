package p131c.p161d.p170b.p224d.p260i.p261a;

import com.google.android.gms.measurement.internal.zzei;
import com.google.android.gms.measurement.internal.zzjl;
/* renamed from: c.d.b.d.i.a.t6 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/t6.class */
public final class RunnableC4821t6 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zzei f17399a;

    /* renamed from: b */
    public final /* synthetic */ zzjl f17400b;

    public RunnableC4821t6(zzjl zzjlVar, zzei zzeiVar) {
        this.f17400b = zzjlVar;
        this.f17399a = zzeiVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f17400b) {
            this.f17400b.f30095a = false;
            if (!this.f17400b.f30097c.m8883y()) {
                this.f17400b.f30097c.mo8789p().m9145x().m9143a("Connected to remote service");
                this.f17400b.f30097c.m8901a(this.f17399a);
            }
        }
    }
}
