package com.google.android.gms.internal.ads;

import com.google.android.gms.dynamic.AbstractC6253a;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ny1.class */
public final class ny1 extends xd0 implements j41 {

    /* renamed from: d */
    private yd0 f27366d;

    /* renamed from: e */
    private i41 f27367e;

    /* renamed from: f */
    private bb1 f27368f;

    @Override // com.google.android.gms.internal.ads.j41
    /* renamed from: A4 */
    public final void mo12788A4(i41 i41Var) {
        synchronized (this) {
            this.f27367e = i41Var;
        }
    }

    @Override // com.google.android.gms.internal.ads.yd0
    /* renamed from: E */
    public final void mo8855E(AbstractC6253a abstractC6253a) {
        Executor executor;
        synchronized (this) {
            bb1 bb1Var = this.f27368f;
            if (bb1Var != null) {
                executor = ((g12) bb1Var).f23225d.f24121b;
                executor.execute(new Runnable((g12) bb1Var, ((g12) bb1Var).f23222a, ((g12) bb1Var).f23223b, ((g12) bb1Var).f23224c) { // from class: com.google.android.gms.internal.ads.f12

                    /* renamed from: d */
                    private final g12 f22703d;

                    /* renamed from: e */
                    private final rj2 f22704e;

                    /* renamed from: f */
                    private final ej2 f22705f;

                    /* renamed from: g */
                    private final tw1 f22706g;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f22703d = g12Var;
                        this.f22704e = rj2Var;
                        this.f22705f = ej2Var;
                        this.f22706g = tw1Var;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        g12 g12Var2 = this.f22703d;
                        rj2 rj2Var2 = this.f22704e;
                        ej2 ej2Var2 = this.f22705f;
                        tw1 tw1Var2 = this.f22706g;
                        i12 i12Var = g12Var2.f23225d;
                        i12.m14512e(rj2Var2, ej2Var2, tw1Var2);
                    }
                });
            }
        }
    }

    /* renamed from: F6 */
    public final void m12787F6(yd0 yd0Var) {
        synchronized (this) {
            this.f27366d = yd0Var;
        }
    }

    /* renamed from: G6 */
    public final void m12786G6(bb1 bb1Var) {
        synchronized (this) {
            this.f27368f = bb1Var;
        }
    }

    @Override // com.google.android.gms.internal.ads.yd0
    /* renamed from: M */
    public final void mo8854M(AbstractC6253a abstractC6253a) {
        synchronized (this) {
            i41 i41Var = this.f27367e;
            if (i41Var != null) {
                i41Var.zza();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.yd0
    /* renamed from: S */
    public final void mo8853S(AbstractC6253a abstractC6253a) {
        synchronized (this) {
            yd0 yd0Var = this.f27366d;
            if (yd0Var != null) {
                ((h12) yd0Var).f23788f.m14986b();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.yd0
    /* renamed from: V */
    public final void mo8852V(AbstractC6253a abstractC6253a) {
        synchronized (this) {
            yd0 yd0Var = this.f27366d;
            if (yd0Var != null) {
                ((h12) yd0Var).f23789g.zza();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.yd0
    /* renamed from: X */
    public final void mo8851X(AbstractC6253a abstractC6253a) {
        synchronized (this) {
            yd0 yd0Var = this.f27366d;
            if (yd0Var != null) {
                yd0Var.mo8851X(abstractC6253a);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.yd0
    /* renamed from: g2 */
    public final void mo8850g2(AbstractC6253a abstractC6253a) {
        synchronized (this) {
            yd0 yd0Var = this.f27366d;
            if (yd0Var != null) {
                ((h12) yd0Var).f23786d.mo9229y4();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.yd0
    /* renamed from: i6 */
    public final void mo8849i6(AbstractC6253a abstractC6253a) {
        synchronized (this) {
            yd0 yd0Var = this.f27366d;
            if (yd0Var != null) {
                ((h12) yd0Var).f23787e.mo7877z0();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.yd0
    /* renamed from: m1 */
    public final void mo8848m1(AbstractC6253a abstractC6253a, zzccl zzcclVar) {
        synchronized (this) {
            yd0 yd0Var = this.f27366d;
            if (yd0Var != null) {
                ((h12) yd0Var).f23789g.mo8472v(zzcclVar);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.yd0
    /* renamed from: u0 */
    public final void mo8847u0(AbstractC6253a abstractC6253a, int i) {
        synchronized (this) {
            bb1 bb1Var = this.f27368f;
            if (bb1Var != null) {
                String valueOf = String.valueOf(((g12) bb1Var).f23224c.f30385a);
                ei0.m15464f(valueOf.length() != 0 ? "Fail to initialize adapter ".concat(valueOf) : new String("Fail to initialize adapter "));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.yd0
    /* renamed from: u1 */
    public final void mo8846u1(AbstractC6253a abstractC6253a) {
        synchronized (this) {
            yd0 yd0Var = this.f27366d;
            if (yd0Var != null) {
                ((h12) yd0Var).f23788f.m14984d();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.yd0
    /* renamed from: u2 */
    public final void mo8845u2(AbstractC6253a abstractC6253a, int i) {
        synchronized (this) {
            i41 i41Var = this.f27367e;
            if (i41Var != null) {
                i41Var.mo11738a(i);
            }
        }
    }
}
