package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbjr.class */
public final class zzbjr implements zzeqb<zzbjq> {
    private final zzeqo<Executor> zzewf;
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzdsq> zzfcw;
    private final zzeqo<zzacq> zzfdl;
    private final zzeqo<zzdnx> zzfgb;
    private final zzeqo<ScheduledExecutorService> zzfrq;
    private final zzeqo<zzdnl> zzfrr;
    private final zzeqo<zzdmw> zzfrs;
    private final zzeqo<View> zzfrt;
    private final zzeqo<zzei> zzfru;
    private final zzeqo<zzacv> zzfrv;

    private zzbjr(zzeqo<Context> zzeqoVar, zzeqo<Executor> zzeqoVar2, zzeqo<ScheduledExecutorService> zzeqoVar3, zzeqo<zzdnl> zzeqoVar4, zzeqo<zzdmw> zzeqoVar5, zzeqo<zzdsq> zzeqoVar6, zzeqo<zzdnx> zzeqoVar7, zzeqo<View> zzeqoVar8, zzeqo<zzei> zzeqoVar9, zzeqo<zzacq> zzeqoVar10, zzeqo<zzacv> zzeqoVar11) {
        this.zzewk = zzeqoVar;
        this.zzewf = zzeqoVar2;
        this.zzfrq = zzeqoVar3;
        this.zzfrr = zzeqoVar4;
        this.zzfrs = zzeqoVar5;
        this.zzfcw = zzeqoVar6;
        this.zzfgb = zzeqoVar7;
        this.zzfrt = zzeqoVar8;
        this.zzfru = zzeqoVar9;
        this.zzfdl = zzeqoVar10;
        this.zzfrv = zzeqoVar11;
    }

    public static zzbjr zza(zzeqo<Context> zzeqoVar, zzeqo<Executor> zzeqoVar2, zzeqo<ScheduledExecutorService> zzeqoVar3, zzeqo<zzdnl> zzeqoVar4, zzeqo<zzdmw> zzeqoVar5, zzeqo<zzdsq> zzeqoVar6, zzeqo<zzdnx> zzeqoVar7, zzeqo<View> zzeqoVar8, zzeqo<zzei> zzeqoVar9, zzeqo<zzacq> zzeqoVar10, zzeqo<zzacv> zzeqoVar11) {
        return new zzbjr(zzeqoVar, zzeqoVar2, zzeqoVar3, zzeqoVar4, zzeqoVar5, zzeqoVar6, zzeqoVar7, zzeqoVar8, zzeqoVar9, zzeqoVar10, zzeqoVar11);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbjq(this.zzewk.get(), this.zzewf.get(), this.zzfrq.get(), this.zzfrr.get(), this.zzfrs.get(), this.zzfcw.get(), this.zzfgb.get(), this.zzfrt.get(), this.zzfru.get(), this.zzfdl.get(), this.zzfrv.get());
    }
}
