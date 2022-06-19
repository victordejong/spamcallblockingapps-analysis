package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbqx;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbre.class */
public final class zzbre implements zzeqb<zzbqx.zza> {
    private final zzbqx zzfyz;

    private zzbre(zzbqx zzbqxVar) {
        this.zzfyz = zzbqxVar;
    }

    public static zzbre zzk(zzbqx zzbqxVar) {
        return new zzbre(zzbqxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzbqx.zza) zzeqh.zza(this.zzfyz.zzalk(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
