package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzced.class */
public final class zzced implements zzeqb<zzccl> {
    private final zzeqo<zzcec> zzfif;
    private final zzcee zzghg;

    public zzced(zzcee zzceeVar, zzeqo<zzcec> zzeqoVar) {
        this.zzghg = zzceeVar;
        this.zzfif = zzeqoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzccl) zzeqh.zza(this.zzfif.get(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
