package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzddz.class */
public final class zzddz extends zzdgm<zzdeb> implements zzdeb {
    public zzddz(Set<zzdih<zzdeb>> set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.zzdeb
    public final void zzbB(boolean z) {
        zzk(new zzdgl(true) { // from class: com.google.android.gms.internal.ads.zzddy
            @Override // com.google.android.gms.internal.ads.zzdgl
            public final void zza(Object obj) {
                ((zzdeb) obj).zzbB(true);
            }
        });
    }
}
