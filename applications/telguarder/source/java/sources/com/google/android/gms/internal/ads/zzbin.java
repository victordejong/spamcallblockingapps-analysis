package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbin.class */
public final class zzbin implements zzeqb<zzbim> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzcin> zzexd;
    private final zzeqo<zzclq> zzexo;
    private final zzeqo<zzcip> zzexq;
    private final zzeqo<zzazn> zzfqo;
    private final zzeqo<zzcro<zzdog, zzctg>> zzfqp;
    private final zzeqo<zzcxj> zzfqq;
    private final zzeqo<zzaxc> zzfqr;

    public zzbin(zzeqo<Context> zzeqoVar, zzeqo<zzazn> zzeqoVar2, zzeqo<zzcin> zzeqoVar3, zzeqo<zzcro<zzdog, zzctg>> zzeqoVar4, zzeqo<zzcxj> zzeqoVar5, zzeqo<zzclq> zzeqoVar6, zzeqo<zzaxc> zzeqoVar7, zzeqo<zzcip> zzeqoVar8) {
        this.zzewk = zzeqoVar;
        this.zzfqo = zzeqoVar2;
        this.zzexd = zzeqoVar3;
        this.zzfqp = zzeqoVar4;
        this.zzfqq = zzeqoVar5;
        this.zzexo = zzeqoVar6;
        this.zzfqr = zzeqoVar7;
        this.zzexq = zzeqoVar8;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbim(this.zzewk.get(), this.zzfqo.get(), this.zzexd.get(), this.zzfqp.get(), this.zzfqq.get(), this.zzexo.get(), this.zzfqr.get(), this.zzexq.get());
    }
}
