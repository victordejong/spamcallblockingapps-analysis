package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbon.class */
public final class zzbon implements zzeqb<zzdnl> {
    private final zzboj zzfwt;

    private zzbon(zzboj zzbojVar) {
        this.zzfwt = zzbojVar;
    }

    public static zzbon zze(zzboj zzbojVar) {
        return new zzbon(zzbojVar);
    }

    public static zzdnl zzf(zzboj zzbojVar) {
        return (zzdnl) zzeqh.zza(zzbojVar.zzakw(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zzf(this.zzfwt);
    }
}
