package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcaa.class */
public final class zzcaa implements zzeqb<zzbya<zzbrm>> {
    private final zzeqo<zzbxs> zzewe;

    public zzcaa(zzeqo<zzbxs> zzeqoVar) {
        this.zzewe = zzeqoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzbya) zzeqh.zza(new zzbya(this.zzewe.get(), zzazp.zzeih), "Cannot return null from a non-@Nullable @Provides method");
    }
}
