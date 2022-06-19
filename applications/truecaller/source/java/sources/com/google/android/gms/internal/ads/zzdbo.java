package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.VisibleForTesting;
import java.util.Set;
@VisibleForTesting
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdbo.class */
public final class zzdbo extends zzdgm<zzdbs> implements zzdbg {
    @VisibleForTesting
    public zzdbo(Set<zzdih<zzdbs>> set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.zzdbg
    public final void zza(zzbcz zzbczVar) {
        zzk(new zzdgl(zzbczVar) { // from class: com.google.android.gms.internal.ads.zzdbl
            private final zzbcz zza;

            {
                this.zza = zzbczVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdgl
            public final void zza(Object obj) {
                ((zzdbs) obj).zzn(this.zza);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdbg
    public final void zzb(zzdkm zzdkmVar) {
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzgX)).booleanValue()) {
            zzk(new zzdgl(zzdkmVar) { // from class: com.google.android.gms.internal.ads.zzdbm
                private final zzdkm zza;

                {
                    this.zza = zzdkmVar;
                }

                @Override // com.google.android.gms.internal.ads.zzdgl
                public final void zza(Object obj) {
                    ((zzdbs) obj).zzn(zzfbm.zzd(12, this.zza.getMessage(), null));
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdbg
    public final void zzd() {
        zzk(zzdbn.zza);
    }
}
