package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbxa.class */
public final class zzbxa implements zzeqb<zzbwg> {
    private final zzbwg zzgav;

    private zzbxa(zzbwg zzbwgVar) {
        this.zzgav = zzbwgVar;
    }

    public static zzbxa zzz(zzbwg zzbwgVar) {
        return new zzbxa(zzbwgVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        zzbwg zzbwgVar = this.zzgav;
        Objects.requireNonNull(zzbwgVar);
        return (zzbwg) zzeqh.zza(zzbwgVar, "Cannot return null from a non-@Nullable @Provides method");
    }
}
