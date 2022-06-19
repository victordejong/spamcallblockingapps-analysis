package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdix.class */
public final class zzdix extends zzdgm<zzbqg> implements zzbqg {
    public zzdix(Set<zzdih<zzbqg>> set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.zzbqg
    public final void zza() {
        synchronized (this) {
            zzk(zzdiu.zza);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbqg
    public final void zzb(zzccl zzcclVar) {
        zzk(new zzdgl(zzcclVar) { // from class: com.google.android.gms.internal.ads.zzdiv
            private final zzccl zza;

            {
                this.zza = zzcclVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdgl
            public final void zza(Object obj) {
                ((zzbqg) obj).zzb(this.zza);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbqg
    public final void zzc() {
        zzk(zzdiw.zza);
    }
}
