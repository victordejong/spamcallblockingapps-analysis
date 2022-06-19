package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.AbstractC5653o;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/xe2.class */
public final class xe2 implements b31, y41, pg2, AbstractC5653o, k51, o31, qa1 {

    /* renamed from: d */
    private final el2 f32021d;

    /* renamed from: e */
    private final AtomicReference<AbstractC6779nl> f32022e = new AtomicReference<>();

    /* renamed from: f */
    private final AtomicReference<C6853pl> f32023f = new AtomicReference<>();

    /* renamed from: g */
    private final AtomicReference<AbstractC6964sl> f32024g = new AtomicReference<>();

    /* renamed from: h */
    private final AtomicReference<y41> f32025h = new AtomicReference<>();

    /* renamed from: i */
    private final AtomicReference<AbstractC5653o> f32026i = new AtomicReference<>();

    /* renamed from: j */
    private final AtomicReference<AbstractC6379cu> f32027j = new AtomicReference<>();

    /* renamed from: k */
    private xe2 f32028k = null;

    public xe2(el2 el2Var) {
        this.f32021d = el2Var;
    }

    /* renamed from: d */
    public static xe2 m9241d(xe2 xe2Var) {
        xe2 xe2Var2 = new xe2(xe2Var.f32021d);
        xe2Var2.f32028k = xe2Var;
        return xe2Var2;
    }

    /* renamed from: H */
    public final void m9246H() {
        xe2 xe2Var = this.f32028k;
        if (xe2Var != null) {
            xe2Var.m9246H();
            return;
        }
        this.f32021d.m15435b();
        gg2.m14948a(this.f32023f, re2.f28914a);
        gg2.m14948a(this.f32024g, se2.f29461a);
    }

    /* renamed from: I */
    public final void m9245I(C6853pl c6853pl) {
        this.f32023f.set(c6853pl);
    }

    @Override // com.google.android.gms.internal.ads.b31
    /* renamed from: O */
    public final void mo9146O(zzbcz zzbczVar) {
        xe2 xe2Var = this.f32028k;
        if (xe2Var != null) {
            xe2Var.mo9146O(zzbczVar);
            return;
        }
        gg2.m14948a(this.f32022e, new fg2(zzbczVar) { // from class: com.google.android.gms.internal.ads.pe2

            /* renamed from: a */
            private final zzbcz f27951a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f27951a = zzbczVar;
            }

            @Override // com.google.android.gms.internal.ads.fg2
            /* renamed from: a */
            public final void mo8384a(Object obj) {
                ((AbstractC6779nl) obj).mo12888R(this.f27951a);
            }
        });
        gg2.m14948a(this.f32022e, new fg2(zzbczVar) { // from class: com.google.android.gms.internal.ads.qe2

            /* renamed from: a */
            private final zzbcz f28447a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f28447a = zzbczVar;
            }

            @Override // com.google.android.gms.internal.ads.fg2
            /* renamed from: a */
            public final void mo8384a(Object obj) {
                ((AbstractC6779nl) obj).mo12890C(this.f28447a.f33653d);
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC5653o
    /* renamed from: a */
    public final void mo9244a() {
        xe2 xe2Var = this.f32028k;
        if (xe2Var != null) {
            xe2Var.mo9244a();
        } else {
            gg2.m14948a(this.f32026i, le2.f26076a);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC5653o
    /* renamed from: a3 */
    public final void mo9243a3() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC5653o
    /* renamed from: a6 */
    public final void mo9242a6(int i) {
        xe2 xe2Var = this.f32028k;
        if (xe2Var != null) {
            xe2Var.mo9242a6(i);
        } else {
            gg2.m14948a(this.f32026i, new fg2(i) { // from class: com.google.android.gms.internal.ads.je2

                /* renamed from: a */
                private final int f24852a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f24852a = i;
                }

                @Override // com.google.android.gms.internal.ads.fg2
                /* renamed from: a */
                public final void mo8384a(Object obj) {
                    ((AbstractC5653o) obj).mo9242a6(this.f24852a);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.qa1
    /* renamed from: b */
    public final void mo7917b() {
        xe2 xe2Var = this.f32028k;
        if (xe2Var != null) {
            xe2Var.mo7917b();
        } else {
            gg2.m14948a(this.f32024g, me2.f26576a);
        }
    }

    @Override // com.google.android.gms.internal.ads.y41
    /* renamed from: c0 */
    public final void mo8959c0() {
        xe2 xe2Var = this.f32028k;
        if (xe2Var != null) {
            xe2Var.mo8959c0();
        } else {
            gg2.m14948a(this.f32025h, te2.f29948a);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC5653o
    /* renamed from: e */
    public final void mo9240e() {
        xe2 xe2Var = this.f32028k;
        if (xe2Var != null) {
            xe2Var.mo9240e();
        } else {
            gg2.m14948a(this.f32026i, ke2.f25200a);
        }
    }

    @Override // com.google.android.gms.internal.ads.o31
    /* renamed from: l */
    public final void mo9239l(zzbcz zzbczVar) {
        xe2 xe2Var = this.f32028k;
        if (xe2Var != null) {
            xe2Var.mo9239l(zzbczVar);
        } else {
            gg2.m14948a(this.f32024g, new fg2(zzbczVar) { // from class: com.google.android.gms.internal.ads.ne2

                /* renamed from: a */
                private final zzbcz f27110a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f27110a = zzbczVar;
                }

                @Override // com.google.android.gms.internal.ads.fg2
                /* renamed from: a */
                public final void mo8384a(Object obj) {
                    ((AbstractC6964sl) obj).mo10993h0(this.f27110a);
                }
            });
        }
    }

    /* renamed from: m */
    public final void m9238m(AbstractC6779nl abstractC6779nl) {
        this.f32022e.set(abstractC6779nl);
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC5653o
    /* renamed from: m2 */
    public final void mo9237m2() {
    }

    /* renamed from: n */
    public final void m9236n(AbstractC6964sl abstractC6964sl) {
        this.f32024g.set(abstractC6964sl);
    }

    @Override // com.google.android.gms.internal.ads.k51
    /* renamed from: p */
    public final void mo9235p(zzbdn zzbdnVar) {
        xe2 xe2Var = this.f32028k;
        if (xe2Var != null) {
            xe2Var.mo9235p(zzbdnVar);
        } else {
            gg2.m14948a(this.f32027j, new fg2(zzbdnVar) { // from class: com.google.android.gms.internal.ads.ie2

                /* renamed from: a */
                private final zzbdn f24220a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f24220a = zzbdnVar;
                }

                @Override // com.google.android.gms.internal.ads.fg2
                /* renamed from: a */
                public final void mo8384a(Object obj) {
                    ((AbstractC6379cu) obj).mo12813j5(this.f24220a);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.pg2
    /* renamed from: q */
    public final void mo9234q(pg2 pg2Var) {
        this.f32028k = (xe2) pg2Var;
    }

    /* renamed from: r */
    public final void m9233r(y41 y41Var) {
        this.f32025h.set(y41Var);
    }

    /* renamed from: u */
    public final void m9232u(AbstractC5653o abstractC5653o) {
        this.f32026i.set(abstractC5653o);
    }

    /* renamed from: v */
    public final void m9231v(AbstractC6379cu abstractC6379cu) {
        this.f32027j.set(abstractC6379cu);
    }

    /* renamed from: y */
    public final void m9230y(AbstractC6668kl abstractC6668kl) {
        xe2 xe2Var = this.f32028k;
        if (xe2Var != null) {
            xe2Var.m9230y(abstractC6668kl);
        } else {
            gg2.m14948a(this.f32022e, new fg2(abstractC6668kl) { // from class: com.google.android.gms.internal.ads.oe2

                /* renamed from: a */
                private final AbstractC6668kl f27513a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f27513a = abstractC6668kl;
                }

                @Override // com.google.android.gms.internal.ads.fg2
                /* renamed from: a */
                public final void mo8384a(Object obj) {
                    ((AbstractC6779nl) obj).mo12889G1(this.f27513a);
                }
            });
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC5653o
    /* renamed from: y4 */
    public final void mo9229y4() {
        xe2 xe2Var = this.f32028k;
        if (xe2Var != null) {
            xe2Var.mo9229y4();
            return;
        }
        gg2.m14948a(this.f32026i, ue2.f30588a);
        gg2.m14948a(this.f32024g, ve2.f31163a);
        gg2.m14948a(this.f32024g, we2.f31556a);
    }
}
