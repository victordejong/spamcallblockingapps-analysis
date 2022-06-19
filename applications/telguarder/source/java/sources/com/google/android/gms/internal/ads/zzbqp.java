package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbqp.class */
public final class zzbqp implements zzeqb<zzbts> {
    private final zzeqo<zzbts> zzfyg;

    private zzbqp(zzeqo<zzbts> zzeqoVar) {
        this.zzfyg = zzeqoVar;
    }

    public static zzbqp zzf(zzeqo<zzbts> zzeqoVar) {
        return new zzbqp(zzeqoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzbts) zzeqh.zza(this.zzfyg.get(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
