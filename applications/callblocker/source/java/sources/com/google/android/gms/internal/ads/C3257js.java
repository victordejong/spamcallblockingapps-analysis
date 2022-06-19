package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.js */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/js.class */
public final class C3257js {

    /* renamed from: a */
    private C3215id f16821a;

    /* renamed from: b */
    private crt<AbstractC3241jc> f16822b;

    public C3257js(C3215id c3215id) {
        this.f16821a = c3215id;
    }

    /* renamed from: a */
    private final void m7720a() {
        if (this.f16822b == null) {
            C3658yo c3658yo = new C3658yo();
            this.f16822b = c3658yo;
            this.f16821a.m7758b((ctl) null).m6726a(new AbstractC3662ys(c3658yo) { // from class: com.google.android.gms.internal.ads.jv

                /* renamed from: a */
                private final C3658yo f16827a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f16827a = c3658yo;
                }

                @Override // com.google.android.gms.internal.ads.AbstractC3662ys
                /* renamed from: a */
                public final void mo6728a(Object obj) {
                    this.f16827a.m6731b((AbstractC3241jc) obj);
                }
            }, new AbstractC3660yq(c3658yo) { // from class: com.google.android.gms.internal.ads.ju

                /* renamed from: a */
                private final C3658yo f16826a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f16826a = c3658yo;
                }

                @Override // com.google.android.gms.internal.ads.AbstractC3660yq
                /* renamed from: a */
                public final void mo6727a() {
                    this.f16826a.m6733a(new zzake("Cannot get Javascript Engine"));
                }
            });
        }
    }

    /* renamed from: a */
    public final <I, O> C3266ka<I, O> m7718a(String str, AbstractC3245jg<I> abstractC3245jg, AbstractC3246jh<O> abstractC3246jh) {
        m7720a();
        return new C3266ka<>(this.f16822b, str, abstractC3245jg, abstractC3246jh);
    }

    /* renamed from: a */
    public final void m7719a(String str, AbstractC3131fa<? super AbstractC3241jc> abstractC3131fa) {
        m7720a();
        this.f16822b = crg.m10782a(this.f16822b, new cqt(str, abstractC3131fa) { // from class: com.google.android.gms.internal.ads.jx

            /* renamed from: a */
            private final String f16830a;

            /* renamed from: b */
            private final AbstractC3131fa f16831b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f16830a = str;
                this.f16831b = abstractC3131fa;
            }

            @Override // com.google.android.gms.internal.ads.cqt
            /* renamed from: a */
            public final crt mo7012a(Object obj) {
                AbstractC3241jc abstractC3241jc = (AbstractC3241jc) obj;
                abstractC3241jc.mo7739a(this.f16830a, this.f16831b);
                return crg.m10778a(abstractC3241jc);
            }
        }, C3650yg.f17647f);
    }

    /* renamed from: b */
    public final void m7717b(String str, AbstractC3131fa<? super AbstractC3241jc> abstractC3131fa) {
        this.f16822b = crg.m10783a(this.f16822b, new coe(str, abstractC3131fa) { // from class: com.google.android.gms.internal.ads.jw

            /* renamed from: a */
            private final String f16828a;

            /* renamed from: b */
            private final AbstractC3131fa f16829b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f16828a = str;
                this.f16829b = abstractC3131fa;
            }

            @Override // com.google.android.gms.internal.ads.coe
            /* renamed from: a */
            public final Object mo7184a(Object obj) {
                AbstractC3241jc abstractC3241jc = (AbstractC3241jc) obj;
                abstractC3241jc.mo7735b(this.f16828a, this.f16829b);
                return abstractC3241jc;
            }
        }, C3650yg.f17647f);
    }
}
