package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbqx;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcaz.class */
public final class zzcaz implements zzeqb<zzbny<zzblv>> {
    private final zzeqo<zzbts> zzfyg;
    private final zzeqo<zzbgc> zzgca;
    private final zzeqo<zzbqx.zza> zzgcb;
    private final zzeqo<zzbwg> zzgcc;
    private final zzeqo<zzcaq> zzgcd;

    public zzcaz(zzeqo<zzbgc> zzeqoVar, zzeqo<zzbqx.zza> zzeqoVar2, zzeqo<zzbwg> zzeqoVar3, zzeqo<zzcaq> zzeqoVar4, zzeqo<zzbts> zzeqoVar5) {
        this.zzgca = zzeqoVar;
        this.zzgcb = zzeqoVar2;
        this.zzgcc = zzeqoVar3;
        this.zzgcd = zzeqoVar4;
        this.zzfyg = zzeqoVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        zzbgc zzbgcVar = this.zzgca.get();
        zzbqx.zza zzaVar = this.zzgcb.get();
        zzbwg zzbwgVar = this.zzgcc.get();
        return (zzbny) zzeqh.zza(zzbgcVar.zzafh().zzd(zzaVar.zzalo()).zzd(zzbwgVar).zzb(this.zzgcd.get()).zza(new zzcxa(null)).zza(new zzbnq(this.zzfyg.get())).zzd(new zzblu(null)).zzahk().zzahs(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
