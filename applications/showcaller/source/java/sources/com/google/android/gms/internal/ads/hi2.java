package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/hi2.class */
public final class hi2 extends hr2 implements n41, b31, y21, o31, k51, pg2, qa1 {

    /* renamed from: d */
    private final el2 f23915d;

    /* renamed from: e */
    private final AtomicReference<hr2> f23916e = new AtomicReference<>();

    /* renamed from: f */
    private final AtomicReference<me0> f23917f = new AtomicReference<>();

    /* renamed from: g */
    private final AtomicReference<ie0> f23918g = new AtomicReference<>();

    /* renamed from: h */
    private final AtomicReference<ud0> f23919h = new AtomicReference<>();

    /* renamed from: i */
    private final AtomicReference<oe0> f23920i = new AtomicReference<>();

    /* renamed from: j */
    private final AtomicReference<pd0> f23921j = new AtomicReference<>();

    /* renamed from: k */
    private final AtomicReference<AbstractC6379cu> f23922k = new AtomicReference<>();

    public hi2(el2 el2Var) {
        this.f23915d = el2Var;
    }

    /* renamed from: H */
    public final void m14635H(AbstractC6379cu abstractC6379cu) {
        this.f23922k.set(abstractC6379cu);
    }

    @Deprecated
    /* renamed from: I */
    public final void m14634I(ud0 ud0Var) {
        this.f23919h.set(ud0Var);
    }

    /* renamed from: J */
    public final void m14633J(oe0 oe0Var) {
        this.f23920i.set(oe0Var);
    }

    @Deprecated
    /* renamed from: N */
    public final void m14632N(pd0 pd0Var) {
        this.f23921j.set(pd0Var);
    }

    @Override // com.google.android.gms.internal.ads.b31
    /* renamed from: O */
    public final void mo9146O(zzbcz zzbczVar) {
        int i = zzbczVar.f33653d;
        gg2.m14948a(this.f23917f, new fg2(zzbczVar) { // from class: com.google.android.gms.internal.ads.yh2

            /* renamed from: a */
            private final zzbcz f32512a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f32512a = zzbczVar;
            }

            @Override // com.google.android.gms.internal.ads.fg2
            /* renamed from: a */
            public final void mo8384a(Object obj) {
                ((me0) obj).mo10715x(this.f32512a);
            }
        });
        gg2.m14948a(this.f23917f, new fg2(i) { // from class: com.google.android.gms.internal.ads.zh2

            /* renamed from: a */
            private final int f32930a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f32930a = i;
            }

            @Override // com.google.android.gms.internal.ads.fg2
            /* renamed from: a */
            public final void mo8384a(Object obj) {
                ((me0) obj).mo10717A(this.f32930a);
            }
        });
        gg2.m14948a(this.f23919h, new fg2(i) { // from class: com.google.android.gms.internal.ads.ai2

            /* renamed from: a */
            private final int f19960a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f19960a = i;
            }

            @Override // com.google.android.gms.internal.ads.fg2
            /* renamed from: a */
            public final void mo8384a(Object obj) {
                ((ud0) obj).mo10350T(this.f19960a);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.qa1
    /* renamed from: b */
    public final void mo7917b() {
        gg2.m14948a(this.f23918g, xh2.f32060a);
    }

    @Override // com.google.android.gms.internal.ads.n41
    /* renamed from: d */
    public final void mo10505d() {
        gg2.m14948a(this.f23917f, kh2.f25220a);
        gg2.m14948a(this.f23919h, vh2.f31183a);
    }

    @Override // com.google.android.gms.internal.ads.y21
    /* renamed from: f */
    public final void mo8978f() {
        gg2.m14948a(this.f23918g, bi2.f20471a);
        gg2.m14948a(this.f23919h, ci2.f21257a);
        gg2.m14948a(this.f23918g, di2.f21644a);
    }

    @Override // com.google.android.gms.internal.ads.y21
    /* renamed from: g */
    public final void mo8977g() {
        gg2.m14948a(this.f23919h, lh2.f26126a);
    }

    @Override // com.google.android.gms.internal.ads.y21
    /* renamed from: i */
    public final void mo8976i() {
        gg2.m14948a(this.f23919h, mh2.f26603a);
    }

    @Override // com.google.android.gms.internal.ads.y21
    /* renamed from: j */
    public final void mo8975j() {
        gg2.m14948a(this.f23919h, rh2.f28957a);
    }

    @Override // com.google.android.gms.internal.ads.o31
    /* renamed from: l */
    public final void mo9239l(zzbcz zzbczVar) {
        gg2.m14948a(this.f23918g, new fg2(zzbczVar) { // from class: com.google.android.gms.internal.ads.sh2

            /* renamed from: a */
            private final zzbcz f29513a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f29513a = zzbczVar;
            }

            @Override // com.google.android.gms.internal.ads.fg2
            /* renamed from: a */
            public final void mo8384a(Object obj) {
                ((ie0) obj).mo9608G3(this.f29513a);
            }
        });
        gg2.m14948a(this.f23918g, new fg2(zzbczVar) { // from class: com.google.android.gms.internal.ads.th2

            /* renamed from: a */
            private final zzbcz f30008a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f30008a = zzbczVar;
            }

            @Override // com.google.android.gms.internal.ads.fg2
            /* renamed from: a */
            public final void mo8384a(Object obj) {
                ((ie0) obj).mo9605d0(this.f30008a.f33653d);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.y21
    /* renamed from: n */
    public final void mo8974n(nd0 nd0Var, String str, String str2) {
        gg2.m14948a(this.f23918g, new fg2(nd0Var) { // from class: com.google.android.gms.internal.ads.nh2

            /* renamed from: a */
            private final nd0 f27149a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f27149a = nd0Var;
            }

            @Override // com.google.android.gms.internal.ads.fg2
            /* renamed from: a */
            public final void mo8384a(Object obj) {
                nd0 nd0Var2 = this.f27149a;
                ((ie0) obj).mo9602y2(new ve0(nd0Var2.mo12951b(), nd0Var2.mo12950c()));
            }
        });
        gg2.m14948a(this.f23920i, new fg2(nd0Var, str, str2) { // from class: com.google.android.gms.internal.ads.oh2

            /* renamed from: a */
            private final nd0 f27544a;

            /* renamed from: b */
            private final String f27545b;

            /* renamed from: c */
            private final String f27546c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f27544a = nd0Var;
                this.f27545b = str;
                this.f27546c = str2;
            }

            @Override // com.google.android.gms.internal.ads.fg2
            /* renamed from: a */
            public final void mo8384a(Object obj) {
                nd0 nd0Var2 = this.f27544a;
                ((oe0) obj).m12691a3(new ve0(nd0Var2.mo12951b(), nd0Var2.mo12950c()), this.f27545b, this.f27546c);
            }
        });
        gg2.m14948a(this.f23919h, new fg2(nd0Var) { // from class: com.google.android.gms.internal.ads.ph2

            /* renamed from: a */
            private final nd0 f28012a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f28012a = nd0Var;
            }

            @Override // com.google.android.gms.internal.ads.fg2
            /* renamed from: a */
            public final void mo8384a(Object obj) {
                ((ud0) obj).mo10349U3(this.f28012a);
            }
        });
        gg2.m14948a(this.f23921j, new fg2(nd0Var, str, str2) { // from class: com.google.android.gms.internal.ads.qh2

            /* renamed from: a */
            private final nd0 f28492a;

            /* renamed from: b */
            private final String f28493b;

            /* renamed from: c */
            private final String f28494c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f28492a = nd0Var;
                this.f28493b = str;
                this.f28494c = str2;
            }

            @Override // com.google.android.gms.internal.ads.fg2
            /* renamed from: a */
            public final void mo8384a(Object obj) {
                ((pd0) obj).m12308a3(this.f28492a, this.f28493b, this.f28494c);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.k51
    /* renamed from: p */
    public final void mo9235p(zzbdn zzbdnVar) {
        gg2.m14948a(this.f23922k, new fg2(zzbdnVar) { // from class: com.google.android.gms.internal.ads.wh2

            /* renamed from: a */
            private final zzbdn f31582a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f31582a = zzbdnVar;
            }

            @Override // com.google.android.gms.internal.ads.fg2
            /* renamed from: a */
            public final void mo8384a(Object obj) {
                ((AbstractC6379cu) obj).mo12813j5(this.f31582a);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.pg2
    /* renamed from: q */
    public final void mo9234q(pg2 pg2Var) {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.hr2
    /* renamed from: r */
    public final void mo10653r() {
        gg2.m14948a(this.f23916e, uh2.f30625a);
    }

    /* renamed from: u */
    public final void m14631u(me0 me0Var) {
        this.f23917f.set(me0Var);
    }

    /* renamed from: v */
    public final void m14630v(ie0 ie0Var) {
        this.f23918g.set(ie0Var);
    }

    /* renamed from: y */
    public final void m14629y(hr2 hr2Var) {
        this.f23916e.set(hr2Var);
    }

    @Override // com.google.android.gms.internal.ads.y21
    public final void zzi() {
        this.f23915d.m15435b();
        gg2.m14948a(this.f23918g, fi2.f22909a);
        gg2.m14948a(this.f23919h, gi2.f23358a);
    }
}
