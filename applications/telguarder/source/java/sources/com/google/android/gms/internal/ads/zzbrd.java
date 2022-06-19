package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbrd.class */
public final class zzbrd implements zzeqb<String> {
    private final zzeqo<zzbpf> zzfbf;
    private final zzbqx zzfyz;

    private zzbrd(zzbqx zzbqxVar, zzeqo<zzbpf> zzeqoVar) {
        this.zzfyz = zzbqxVar;
        this.zzfbf = zzeqoVar;
    }

    public static String zza(zzbqx zzbqxVar, zzbpf zzbpfVar) {
        return (String) zzeqh.zza(zzbpfVar.zzxl(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static zzbrd zzb(zzbqx zzbqxVar, zzeqo<zzbpf> zzeqoVar) {
        return new zzbrd(zzbqxVar, zzeqoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zza(this.zzfyz, this.zzfbf.get());
    }
}
