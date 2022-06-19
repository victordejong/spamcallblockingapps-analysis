package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.VisibleForTesting;
import java.util.Set;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdfd.class */
public final class zzdfd extends zzdkb<zzdfh> implements zzdev {
    @VisibleForTesting
    public zzdfd(Set<zzdlw<zzdfh>> set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.zzdev
    public final void zza(final zzbew zzbewVar) {
        zzo(new zzdka() { // from class: com.google.android.gms.internal.ads.zzdfa
            @Override // com.google.android.gms.internal.ads.zzdka
            public final void zza(Object obj) {
                ((zzdfh) obj).zzk(zzbew.this);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdev
    public final void zzb() {
        zzo(zzdfc.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzdev
    public final void zze(final zzdoa zzdoaVar) {
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzhi)).booleanValue()) {
            zzo(new zzdka() { // from class: com.google.android.gms.internal.ads.zzdfb
                @Override // com.google.android.gms.internal.ads.zzdka
                public final void zza(Object obj) {
                    ((zzdfh) obj).zzk(zzfey.zzd(12, zzdoa.this.getMessage(), null));
                }
            });
        }
    }
}
