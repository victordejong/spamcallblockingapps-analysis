package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcxc.class */
public final class zzcxc implements zzeqb<zzcxa> {
    private final zzcxa zzgxc;

    private zzcxc(zzcxa zzcxaVar) {
        this.zzgxc = zzcxaVar;
    }

    public static zzcxc zzd(zzcxa zzcxaVar) {
        return new zzcxc(zzcxaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        zzcxa zzcxaVar = this.zzgxc;
        Objects.requireNonNull(zzcxaVar);
        return (zzcxa) zzeqh.zza(zzcxaVar, "Cannot return null from a non-@Nullable @Provides method");
    }
}
