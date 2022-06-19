package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzchn.class */
public final class zzchn implements zzeqb<zzcrj<zzchb>> {
    private final zzeqo<zzdzv> zzfux;
    private final zzeqo<zzdrj> zzfvi;
    private final zzeqo<zzcvf> zzfvj;
    private final zzeqo<zzcwe> zzfvk;

    public zzchn(zzeqo<zzdrj> zzeqoVar, zzeqo<zzdzv> zzeqoVar2, zzeqo<zzcvf> zzeqoVar3, zzeqo<zzcwe> zzeqoVar4) {
        this.zzfvi = zzeqoVar;
        this.zzfux = zzeqoVar2;
        this.zzfvj = zzeqoVar3;
        this.zzfvk = zzeqoVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzcrj) zzeqh.zza(new zzcwi(this.zzfvi.get(), this.zzfux.get(), this.zzfvk.get(), this.zzfvj.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
