package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbrf.class */
public final class zzbrf implements zzeqb<zzdnp> {
    private final zzbqx zzfyz;

    private zzbrf(zzbqx zzbqxVar) {
        this.zzfyz = zzbqxVar;
    }

    public static zzbrf zzl(zzbqx zzbqxVar) {
        return new zzbrf(zzbqxVar);
    }

    public static zzdnp zzm(zzbqx zzbqxVar) {
        return (zzdnp) zzeqh.zza(zzbqxVar.zzall(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zzm(this.zzfyz);
    }
}
