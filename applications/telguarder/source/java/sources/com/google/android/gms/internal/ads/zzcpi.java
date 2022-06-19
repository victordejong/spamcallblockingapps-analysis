package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcpi.class */
public final class zzcpi implements zzeqb<zzcpf> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzdoc> zzeyk;
    private final zzeqo<zzdmw> zzfrs;
    private final zzeqo<zzcqr> zzgjo;
    private final zzeqo<zzdrz> zzgjp;
    private final zzeqo<String> zzgle;
    private final zzeqo<zzdnl> zzglp;

    private zzcpi(zzeqo<Context> zzeqoVar, zzeqo<zzdoc> zzeqoVar2, zzeqo<zzdnl> zzeqoVar3, zzeqo<zzdmw> zzeqoVar4, zzeqo<zzcqr> zzeqoVar5, zzeqo<zzdrz> zzeqoVar6, zzeqo<String> zzeqoVar7) {
        this.zzewk = zzeqoVar;
        this.zzeyk = zzeqoVar2;
        this.zzglp = zzeqoVar3;
        this.zzfrs = zzeqoVar4;
        this.zzgjo = zzeqoVar5;
        this.zzgjp = zzeqoVar6;
        this.zzgle = zzeqoVar7;
    }

    public static zzcpi zzb(zzeqo<Context> zzeqoVar, zzeqo<zzdoc> zzeqoVar2, zzeqo<zzdnl> zzeqoVar3, zzeqo<zzdmw> zzeqoVar4, zzeqo<zzcqr> zzeqoVar5, zzeqo<zzdrz> zzeqoVar6, zzeqo<String> zzeqoVar7) {
        return new zzcpi(zzeqoVar, zzeqoVar2, zzeqoVar3, zzeqoVar4, zzeqoVar5, zzeqoVar6, zzeqoVar7);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcpf(this.zzewk.get(), this.zzeyk.get(), this.zzglp.get(), this.zzfrs.get(), this.zzgjo.get(), this.zzgjp.get(), this.zzgle.get());
    }
}
