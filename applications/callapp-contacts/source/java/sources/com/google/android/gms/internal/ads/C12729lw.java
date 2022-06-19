package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.lw */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/lw.class */
public final class C12729lw {

    /* renamed from: a */
    dbt<AbstractC12709lc> f49492a;

    /* renamed from: b */
    private C12684ke f49493b;

    public C12729lw(C12684ke c12684ke) {
        this.f49493b = c12684ke;
    }

    /* renamed from: a */
    public final void m14521a() {
        if (this.f49492a == null) {
            C13103zp c13103zp = new C13103zp();
            this.f49492a = c13103zp;
            this.f49493b.m14556a().m13896a(new AbstractC13107zt(c13103zp) { // from class: com.google.android.gms.internal.ads.lv

                /* renamed from: a */
                private final C13103zp f49491a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f49491a = c13103zp;
                }

                @Override // com.google.android.gms.internal.ads.AbstractC13107zt
                /* renamed from: a */
                public final void mo13893a(Object obj) {
                    this.f49491a.set((AbstractC12709lc) obj);
                }
            }, new AbstractC13105zr(c13103zp) { // from class: com.google.android.gms.internal.ads.ly

                /* renamed from: a */
                private final C13103zp f49496a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f49496a = c13103zp;
                }

                @Override // com.google.android.gms.internal.ads.AbstractC13105zr
                /* renamed from: a */
                public final void mo13897a() {
                    this.f49496a.setException(new zzamh("Cannot get Javascript Engine"));
                }
            });
        }
    }

    /* renamed from: a */
    public final void m14520a(String str, AbstractC12607hi<? super AbstractC12709lc> abstractC12607hi) {
        m14521a();
        this.f49492a = daj.m16941a(this.f49492a, new daq(str, abstractC12607hi) { // from class: com.google.android.gms.internal.ads.lx

            /* renamed from: a */
            private final String f49494a;

            /* renamed from: b */
            private final AbstractC12607hi f49495b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f49494a = str;
                this.f49495b = abstractC12607hi;
            }

            @Override // com.google.android.gms.internal.ads.daq
            public final dbt zzf(Object obj) {
                AbstractC12709lc abstractC12709lc = (AbstractC12709lc) obj;
                abstractC12709lc.mo14533a(this.f49494a, this.f49495b);
                return dbh.m16899a(abstractC12709lc);
            }
        }, C13091zd.f50123f);
    }

    /* renamed from: b */
    public final void m14519b(String str, AbstractC12607hi<? super AbstractC12709lc> abstractC12607hi) {
        this.f49492a = daj.m16942a(this.f49492a, new cxu(str, abstractC12607hi) { // from class: com.google.android.gms.internal.ads.ma

            /* renamed from: a */
            private final String f49501a;

            /* renamed from: b */
            private final AbstractC12607hi f49502b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f49501a = str;
                this.f49502b = abstractC12607hi;
            }

            @Override // com.google.android.gms.internal.ads.cxu
            /* renamed from: a */
            public final Object mo14064a(Object obj) {
                AbstractC12709lc abstractC12709lc = (AbstractC12709lc) obj;
                abstractC12709lc.mo14531b(this.f49501a, this.f49502b);
                return abstractC12709lc;
            }
        }, C13091zd.f50123f);
    }
}
