package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/k31.class */
public final class k31 extends m81<o31> implements c31 {
    public k31(Set<ja1<o31>> set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.c31
    /* renamed from: H */
    public final void mo13737H(zzdkm zzdkmVar) {
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25626X6)).booleanValue()) {
            m13339Q0(new l81(zzdkmVar) { // from class: com.google.android.gms.internal.ads.i31

                /* renamed from: a */
                private final zzdkm f24127a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f24127a = zzdkmVar;
                }

                @Override // com.google.android.gms.internal.ads.l81
                /* renamed from: a */
                public final void mo8530a(Object obj) {
                    ((o31) obj).mo9239l(sk2.m10997d(12, this.f24127a.getMessage(), null));
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.c31
    /* renamed from: I */
    public final void mo13736I(zzbcz zzbczVar) {
        m13339Q0(new l81(zzbczVar) { // from class: com.google.android.gms.internal.ads.h31

            /* renamed from: a */
            private final zzbcz f23797a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f23797a = zzbczVar;
            }

            @Override // com.google.android.gms.internal.ads.l81
            /* renamed from: a */
            public final void mo8530a(Object obj) {
                ((o31) obj).mo9239l(this.f23797a);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.c31
    /* renamed from: e */
    public final void mo13732e() {
        m13339Q0(j31.f24769a);
    }
}
