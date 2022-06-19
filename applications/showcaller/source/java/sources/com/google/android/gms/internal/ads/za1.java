package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/za1.class */
public final class za1 extends m81<d30> implements d30 {
    public za1(Set<ja1<d30>> set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.d30
    /* renamed from: c */
    public final void mo8473c() {
        m13339Q0(ya1.f32454a);
    }

    @Override // com.google.android.gms.internal.ads.d30
    /* renamed from: v */
    public final void mo8472v(zzccl zzcclVar) {
        m13339Q0(new l81(zzcclVar) { // from class: com.google.android.gms.internal.ads.xa1

            /* renamed from: a */
            private final zzccl f31952a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f31952a = zzcclVar;
            }

            @Override // com.google.android.gms.internal.ads.l81
            /* renamed from: a */
            public final void mo8530a(Object obj) {
                ((d30) obj).mo8472v(this.f31952a);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.d30
    public final void zza() {
        synchronized (this) {
            m13339Q0(wa1.f31492a);
        }
    }
}
