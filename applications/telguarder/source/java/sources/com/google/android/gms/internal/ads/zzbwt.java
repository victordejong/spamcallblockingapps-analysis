package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.reward.AdMetadataListener;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbwt.class */
public final class zzbwt implements zzeqb<Set<zzbya<AdMetadataListener>>> {
    private final zzbwg zzgav;

    private zzbwt(zzbwg zzbwgVar) {
        this.zzgav = zzbwgVar;
    }

    public static zzbwt zzr(zzbwg zzbwgVar) {
        return new zzbwt(zzbwgVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (Set) zzeqh.zza(this.zzgav.zzamc(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
