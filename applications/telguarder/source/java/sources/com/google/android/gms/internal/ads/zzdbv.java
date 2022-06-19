package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdbv.class */
public final class zzdbv implements zzeqb<zzdbt> {
    private final zzeqo<zzdop> zzfal;
    private final zzeqo<zzbpf> zzfbf;
    private final zzeqo<zzdnp> zzfvf;
    private final zzeqo<String> zzhay;
    private final zzeqo<String> zzhbg;

    private zzdbv(zzeqo<String> zzeqoVar, zzeqo<String> zzeqoVar2, zzeqo<zzbpf> zzeqoVar3, zzeqo<zzdop> zzeqoVar4, zzeqo<zzdnp> zzeqoVar5) {
        this.zzhay = zzeqoVar;
        this.zzhbg = zzeqoVar2;
        this.zzfbf = zzeqoVar3;
        this.zzfal = zzeqoVar4;
        this.zzfvf = zzeqoVar5;
    }

    public static zzdbv zzg(zzeqo<String> zzeqoVar, zzeqo<String> zzeqoVar2, zzeqo<zzbpf> zzeqoVar3, zzeqo<zzdop> zzeqoVar4, zzeqo<zzdnp> zzeqoVar5) {
        return new zzdbv(zzeqoVar, zzeqoVar2, zzeqoVar3, zzeqoVar4, zzeqoVar5);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdbt(this.zzhay.get(), this.zzhbg.get(), this.zzfbf.get(), this.zzfal.get(), this.zzfvf.get());
    }
}
