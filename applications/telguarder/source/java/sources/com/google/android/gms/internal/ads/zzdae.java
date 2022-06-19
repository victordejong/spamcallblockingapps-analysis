package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdae.class */
public final class zzdae implements zzeqb<String> {
    private final zzdab zzhaa;

    public zzdae(zzdab zzdabVar) {
        this.zzhaa = zzdabVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (String) zzeqh.zza(this.zzhaa.zzasw(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
