package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbqx;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcuo.class */
public final class zzcuo implements zzeqb<zzcul> {
    private final zzeqo<zzbgc> zzgca;
    private final zzeqo<zzbqx.zza> zzgcb;
    private final zzeqo<zzbwg> zzgcc;
    private final zzeqo<zzcaq> zzgcd;

    public zzcuo(zzeqo<zzbgc> zzeqoVar, zzeqo<zzcaq> zzeqoVar2, zzeqo<zzbqx.zza> zzeqoVar3, zzeqo<zzbwg> zzeqoVar4) {
        this.zzgca = zzeqoVar;
        this.zzgcd = zzeqoVar2;
        this.zzgcb = zzeqoVar3;
        this.zzgcc = zzeqoVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcul(this.zzgca.get(), this.zzgcd.get(), this.zzgcb.get(), this.zzgcc.get());
    }
}
