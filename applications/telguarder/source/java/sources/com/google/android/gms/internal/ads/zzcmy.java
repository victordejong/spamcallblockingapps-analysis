package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcmy.class */
public final class zzcmy implements zzeqb<zzdsa> {
    private final zzeqo<String> zzgle;

    private zzcmy(zzeqo<String> zzeqoVar) {
        this.zzgle = zzeqoVar;
    }

    public static zzcmy zzae(zzeqo<String> zzeqoVar) {
        return new zzcmy(zzeqoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzdsa) zzeqh.zza(zzdsa.zzgy(this.zzgle.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
