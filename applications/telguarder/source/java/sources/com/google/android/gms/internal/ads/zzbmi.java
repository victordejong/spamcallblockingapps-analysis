package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbmi.class */
public final class zzbmi implements zzeqb<zzbnu> {
    private final zzbmc zzfvc;

    public zzbmi(zzbmc zzbmcVar) {
        this.zzfvc = zzbmcVar;
    }

    public static zzbnu zzc(zzbmc zzbmcVar) {
        return (zzbnu) zzeqh.zza(zzbmcVar.zzakd(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zzc(this.zzfvc);
    }
}
