package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzq;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbwl.class */
public final class zzbwl implements zzeqb<Set<zzbya<zzq>>> {
    private final zzbwg zzgav;

    private zzbwl(zzbwg zzbwgVar) {
        this.zzgav = zzbwgVar;
    }

    public static zzbwl zzi(zzbwg zzbwgVar) {
        return new zzbwl(zzbwgVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (Set) zzeqh.zza(this.zzgav.zzamj(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
