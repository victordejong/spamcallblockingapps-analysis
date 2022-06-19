package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdbe.class */
public final class zzdbe extends zzdgm<zzdbf> implements zzdbf {
    public zzdbe(Set<zzdih<zzdbf>> set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.zzdbf
    public final void zzbD(zzbcz zzbczVar) {
        zzk(new zzdgl(zzbczVar) { // from class: com.google.android.gms.internal.ads.zzdbd
            private final zzbcz zza;

            {
                this.zza = zzbczVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdgl
            public final void zza(Object obj) {
                ((zzdbf) obj).zzbD(this.zza);
            }
        });
    }
}
