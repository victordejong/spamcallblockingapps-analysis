package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzddv.class */
public final class zzddv extends zzdgm<zzddx> implements zzddx {
    public zzddv(Set<zzdih<zzddx>> set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.zzddx
    public final void zzbG(zzcbj zzcbjVar) {
        zzk(new zzdgl(zzcbjVar) { // from class: com.google.android.gms.internal.ads.zzddt
            private final zzcbj zza;

            {
                this.zza = zzcbjVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdgl
            public final void zza(Object obj) {
                ((zzddx) obj).zzbG(this.zza);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzddx
    public final void zzq(zzfal zzfalVar) {
        zzk(new zzdgl(zzfalVar) { // from class: com.google.android.gms.internal.ads.zzddu
            private final zzfal zza;

            {
                this.zza = zzfalVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdgl
            public final void zza(Object obj) {
                ((zzddx) obj).zzq(this.zza);
            }
        });
    }
}
