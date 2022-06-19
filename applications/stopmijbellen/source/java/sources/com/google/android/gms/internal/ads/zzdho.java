package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdho.class */
public final class zzdho extends zzdkb<zzdhq> implements zzdhq {
    public zzdho(Set<zzdlw<zzdhq>> set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.zzdhq
    public final void zzbM(boolean z) {
        zzo(new zzdka(true) { // from class: com.google.android.gms.internal.ads.zzdhn
            @Override // com.google.android.gms.internal.ads.zzdka
            public final void zza(Object obj) {
                ((zzdhq) obj).zzbM(true);
            }
        });
    }
}
