package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzboo.class */
public final class zzboo implements zzeqb<zzdnb> {
    private final zzboj zzfwt;

    private zzboo(zzboj zzbojVar) {
        this.zzfwt = zzbojVar;
    }

    public static zzboo zzg(zzboj zzbojVar) {
        return new zzboo(zzbojVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzdnb) zzeqh.zza(this.zzfwt.zzaky(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
