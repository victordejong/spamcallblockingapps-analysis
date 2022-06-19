package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcas.class */
public final class zzcas implements zzeqb<zzcaq> {
    private final zzcaq zzgbx;

    private zzcas(zzcaq zzcaqVar) {
        this.zzgbx = zzcaqVar;
    }

    public static zzcas zze(zzcaq zzcaqVar) {
        return new zzcas(zzcaqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        zzcaq zzcaqVar = this.zzgbx;
        Objects.requireNonNull(zzcaqVar);
        return (zzcaq) zzeqh.zza(zzcaqVar, "Cannot return null from a non-@Nullable @Provides method");
    }
}
