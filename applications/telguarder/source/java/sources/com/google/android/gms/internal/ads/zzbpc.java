package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbpc.class */
public final class zzbpc implements zzeqb<zzbya<zzbrm>> {
    private final zzbpa zzfxl;
    private final zzeqo<zzbpf> zzfxm;

    private zzbpc(zzbpa zzbpaVar, zzeqo<zzbpf> zzeqoVar) {
        this.zzfxl = zzbpaVar;
        this.zzfxm = zzeqoVar;
    }

    public static zzbpc zzc(zzbpa zzbpaVar, zzeqo<zzbpf> zzeqoVar) {
        return new zzbpc(zzbpaVar, zzeqoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzbya) zzeqh.zza(new zzbya(this.zzfxm.get(), zzazp.zzeih), "Cannot return null from a non-@Nullable @Provides method");
    }
}
