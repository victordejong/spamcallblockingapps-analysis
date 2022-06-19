package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbqx;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcut.class */
public final class zzcut implements zzeqb<zzcuu> {
    private final zzeqo<zzbgc> zzgca;
    private final zzeqo<zzbqx.zza> zzgcb;
    private final zzeqo<zzbwg> zzgcc;

    public zzcut(zzeqo<zzbgc> zzeqoVar, zzeqo<zzbqx.zza> zzeqoVar2, zzeqo<zzbwg> zzeqoVar3) {
        this.zzgca = zzeqoVar;
        this.zzgcb = zzeqoVar2;
        this.zzgcc = zzeqoVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcuu(this.zzgca.get(), this.zzgcb.get(), this.zzgcc.get());
    }
}
