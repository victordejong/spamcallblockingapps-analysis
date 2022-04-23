package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/lw.class */
public final class lw {

    /* renamed from: a  reason: collision with root package name */
    dbt<lc> f28175a;

    /* renamed from: b  reason: collision with root package name */
    private ke f28176b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public lw(ke keVar) {
        this.f28176b = keVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        if (this.f28175a == null) {
            final zp zpVar = new zp();
            this.f28175a = zpVar;
            this.f28176b.a().a(new zt(zpVar) { // from class: com.google.android.gms.internal.ads.lv

                /* renamed from: a  reason: collision with root package name */
                private final zp f28174a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f28174a = zpVar;
                }

                @Override // com.google.android.gms.internal.ads.zt
                public final void a(Object obj) {
                    this.f28174a.set((lc) obj);
                }
            }, new zr(zpVar) { // from class: com.google.android.gms.internal.ads.ly

                /* renamed from: a  reason: collision with root package name */
                private final zp f28179a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f28179a = zpVar;
                }

                @Override // com.google.android.gms.internal.ads.zr
                public final void a() {
                    this.f28179a.setException(new zzamh("Cannot get Javascript Engine"));
                }
            });
        }
    }

    public final void a(final String str, final hi<? super lc> hiVar) {
        a();
        this.f28175a = daj.a(this.f28175a, new daq(str, hiVar) { // from class: com.google.android.gms.internal.ads.lx

            /* renamed from: a  reason: collision with root package name */
            private final String f28177a;

            /* renamed from: b  reason: collision with root package name */
            private final hi f28178b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f28177a = str;
                this.f28178b = hiVar;
            }

            @Override // com.google.android.gms.internal.ads.daq
            public final dbt zzf(Object obj) {
                lc lcVar = (lc) obj;
                lcVar.a(this.f28177a, this.f28178b);
                return dbh.a(lcVar);
            }
        }, zd.f);
    }

    public final void b(final String str, final hi<? super lc> hiVar) {
        this.f28175a = daj.a(this.f28175a, new cxu(str, hiVar) { // from class: com.google.android.gms.internal.ads.ma

            /* renamed from: a  reason: collision with root package name */
            private final String f28184a;

            /* renamed from: b  reason: collision with root package name */
            private final hi f28185b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f28184a = str;
                this.f28185b = hiVar;
            }

            @Override // com.google.android.gms.internal.ads.cxu
            public final Object a(Object obj) {
                lc lcVar = (lc) obj;
                lcVar.b(this.f28184a, this.f28185b);
                return lcVar;
            }
        }, zd.f);
    }
}
