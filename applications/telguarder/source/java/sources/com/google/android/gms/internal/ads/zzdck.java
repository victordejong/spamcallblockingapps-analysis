package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdck.class */
public final class zzdck implements zzeqb<zzdci> {
    private final zzeqo<zzdzv> zzewf;
    private final zzeqo<String> zzftc;
    private final zzeqo<zzdnp> zzfvf;
    private final zzeqo<zzcip> zzhbs;

    private zzdck(zzeqo<zzdzv> zzeqoVar, zzeqo<zzcip> zzeqoVar2, zzeqo<zzdnp> zzeqoVar3, zzeqo<String> zzeqoVar4) {
        this.zzewf = zzeqoVar;
        this.zzhbs = zzeqoVar2;
        this.zzfvf = zzeqoVar3;
        this.zzftc = zzeqoVar4;
    }

    public static zzdck zzi(zzeqo<zzdzv> zzeqoVar, zzeqo<zzcip> zzeqoVar2, zzeqo<zzdnp> zzeqoVar3, zzeqo<String> zzeqoVar4) {
        return new zzdck(zzeqoVar, zzeqoVar2, zzeqoVar3, zzeqoVar4);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdci(this.zzewf.get(), this.zzhbs.get(), this.zzfvf.get(), this.zzftc.get());
    }
}
