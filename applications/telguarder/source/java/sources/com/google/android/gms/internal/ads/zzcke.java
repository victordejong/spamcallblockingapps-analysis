package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcke.class */
public final class zzcke implements zzeqb<zzckb> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzckn> zzexw;
    private final zzeqo<zzdoc> zzeyk;
    private final zzeqo<zzdmw> zzfrs;
    private final zzeqo<zzcqr> zzgjo;
    private final zzeqo<zzdnl> zzglp;

    private zzcke(zzeqo<Context> zzeqoVar, zzeqo<zzdoc> zzeqoVar2, zzeqo<zzckn> zzeqoVar3, zzeqo<zzdnl> zzeqoVar4, zzeqo<zzdmw> zzeqoVar5, zzeqo<zzcqr> zzeqoVar6) {
        this.zzewk = zzeqoVar;
        this.zzeyk = zzeqoVar2;
        this.zzexw = zzeqoVar3;
        this.zzglp = zzeqoVar4;
        this.zzfrs = zzeqoVar5;
        this.zzgjo = zzeqoVar6;
    }

    public static zzcke zza(zzeqo<Context> zzeqoVar, zzeqo<zzdoc> zzeqoVar2, zzeqo<zzckn> zzeqoVar3, zzeqo<zzdnl> zzeqoVar4, zzeqo<zzdmw> zzeqoVar5, zzeqo<zzcqr> zzeqoVar6) {
        return new zzcke(zzeqoVar, zzeqoVar2, zzeqoVar3, zzeqoVar4, zzeqoVar5, zzeqoVar6);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzckb(this.zzewk.get(), this.zzeyk.get(), this.zzexw.get(), this.zzglp.get(), this.zzfrs.get(), this.zzgjo.get());
    }
}
