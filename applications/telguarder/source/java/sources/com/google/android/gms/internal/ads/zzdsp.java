package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.util.Clock;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdsp.class */
public final class zzdsp implements zzeqb<zzdsq> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzdnk> zzfpa;
    private final zzeqo<zzei> zzfru;
    private final zzeqo<Clock> zzfsz;
    private final zzeqo<zzazn> zzftb;
    private final zzeqo<String> zzhay;
    private final zzeqo<String> zzhbg;
    private final zzeqo<zzcuw> zzhrw;

    private zzdsp(zzeqo<zzcuw> zzeqoVar, zzeqo<zzazn> zzeqoVar2, zzeqo<String> zzeqoVar3, zzeqo<String> zzeqoVar4, zzeqo<Context> zzeqoVar5, zzeqo<zzdnk> zzeqoVar6, zzeqo<Clock> zzeqoVar7, zzeqo<zzei> zzeqoVar8) {
        this.zzhrw = zzeqoVar;
        this.zzftb = zzeqoVar2;
        this.zzhay = zzeqoVar3;
        this.zzhbg = zzeqoVar4;
        this.zzewk = zzeqoVar5;
        this.zzfpa = zzeqoVar6;
        this.zzfsz = zzeqoVar7;
        this.zzfru = zzeqoVar8;
    }

    public static zzdsp zzb(zzeqo<zzcuw> zzeqoVar, zzeqo<zzazn> zzeqoVar2, zzeqo<String> zzeqoVar3, zzeqo<String> zzeqoVar4, zzeqo<Context> zzeqoVar5, zzeqo<zzdnk> zzeqoVar6, zzeqo<Clock> zzeqoVar7, zzeqo<zzei> zzeqoVar8) {
        return new zzdsp(zzeqoVar, zzeqoVar2, zzeqoVar3, zzeqoVar4, zzeqoVar5, zzeqoVar6, zzeqoVar7, zzeqoVar8);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdsq(this.zzhrw.get(), this.zzftb.get(), this.zzhay.get(), this.zzhbg.get(), this.zzewk.get(), this.zzfpa.get(), this.zzfsz.get(), this.zzfru.get());
    }
}
