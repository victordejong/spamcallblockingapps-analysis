package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdmm.class */
public final class zzdmm extends zzdkb<zzbsi> implements zzbsi {
    public zzdmm(Set<zzdlw<zzbsi>> set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.zzbsi
    public final void zza(final zzces zzcesVar) {
        zzo(new zzdka() { // from class: com.google.android.gms.internal.ads.zzdmj
            @Override // com.google.android.gms.internal.ads.zzdka
            public final void zza(Object obj) {
                ((zzbsi) obj).zza(zzces.this);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbsi
    public final void zzb() {
        zzo(zzdmk.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbsi
    public final void zzc() {
        synchronized (this) {
            zzo(zzdml.zza);
        }
    }
}
