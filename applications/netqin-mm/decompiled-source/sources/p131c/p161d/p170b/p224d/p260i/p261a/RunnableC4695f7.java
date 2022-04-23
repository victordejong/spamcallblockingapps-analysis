package p131c.p161d.p170b.p224d.p260i.p261a;

import android.os.Bundle;
import com.google.android.gms.measurement.internal.zzas;
import com.google.android.gms.measurement.internal.zzii;
/* renamed from: c.d.b.d.i.a.f7 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/f7.class */
public final class RunnableC4695f7 implements Runnable {

    /* renamed from: a */
    public long f17084a;

    /* renamed from: b */
    public long f17085b;

    /* renamed from: c */
    public final /* synthetic */ C4655b7 f17086c;

    public RunnableC4695f7(C4655b7 b7Var, long j, long j2) {
        this.f17086c = b7Var;
        this.f17084a = j;
        this.f17085b = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f17086c.f16984b.mo8795j().m9093a(new Runnable(this) { // from class: c.d.b.d.i.a.e7

            /* renamed from: a */
            public final RunnableC4695f7 f17061a;

            {
                this.f17061a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                RunnableC4695f7 f7Var = this.f17061a;
                C4655b7 b7Var = f7Var.f17086c;
                long j = f7Var.f17084a;
                long j2 = f7Var.f17085b;
                b7Var.f16984b.mo9085c();
                b7Var.f16984b.mo8789p().m9145x().m9143a("Application going to the background");
                boolean z = true;
                if (b7Var.f16984b.m24897h().m9354a(zzas.f29900v0)) {
                    b7Var.f16984b.m24898g().f17229w.m9132a(true);
                }
                Bundle bundle = new Bundle();
                if (!b7Var.f16984b.m24897h().m9331n().booleanValue()) {
                    b7Var.f16984b.f30104e.m24943b(j2);
                    if (b7Var.f16984b.m24897h().m9354a(zzas.f29882m0)) {
                        bundle.putLong("_et", b7Var.f16984b.m8862a(j2));
                        zzii.m8931a(b7Var.f16984b.m24884o().m8926a(true), bundle, true);
                    } else {
                        z = false;
                    }
                    b7Var.f16984b.m8859a(false, z, j2);
                }
                b7Var.f16984b.m24887l().m8977a("auto", "_ab", j, bundle);
            }
        });
    }
}
