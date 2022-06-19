package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbqx;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcur.class */
public final class zzcur implements zzeqb<zzcus> {
    private final zzeqo<zzbgc> zzgca;
    private final zzeqo<zzbqx.zza> zzgcb;
    private final zzeqo<zzbwg> zzgcc;
    private final zzeqo<zzcxa> zzgva;

    public zzcur(zzeqo<zzbgc> zzeqoVar, zzeqo<zzbqx.zza> zzeqoVar2, zzeqo<zzcxa> zzeqoVar3, zzeqo<zzbwg> zzeqoVar4) {
        this.zzgca = zzeqoVar;
        this.zzgcb = zzeqoVar2;
        this.zzgva = zzeqoVar3;
        this.zzgcc = zzeqoVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcus(this.zzgca.get(), this.zzgcb.get(), this.zzgva.get(), this.zzgcc.get());
    }
}
