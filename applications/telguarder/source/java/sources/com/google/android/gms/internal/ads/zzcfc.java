package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzb;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcfc.class */
public final class zzcfc implements zzeqb<zzcer> {
    private final zzeqo<Executor> zzewf;
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzcem> zzfdk;
    private final zzeqo<zzcfi> zzfdn;
    private final zzeqo<zzazn> zzfqo;
    private final zzeqo<ScheduledExecutorService> zzfrq;
    private final zzeqo<zzdnp> zzfvf;
    private final zzeqo<zzei> zzgcz;
    private final zzeqo<zzb> zzgih;
    private final zzeqo<zztu> zzgii;

    public zzcfc(zzeqo<Context> zzeqoVar, zzeqo<zzcem> zzeqoVar2, zzeqo<zzei> zzeqoVar3, zzeqo<zzazn> zzeqoVar4, zzeqo<zzb> zzeqoVar5, zzeqo<zztu> zzeqoVar6, zzeqo<Executor> zzeqoVar7, zzeqo<zzdnp> zzeqoVar8, zzeqo<zzcfi> zzeqoVar9, zzeqo<ScheduledExecutorService> zzeqoVar10) {
        this.zzewk = zzeqoVar;
        this.zzfdk = zzeqoVar2;
        this.zzgcz = zzeqoVar3;
        this.zzfqo = zzeqoVar4;
        this.zzgih = zzeqoVar5;
        this.zzgii = zzeqoVar6;
        this.zzewf = zzeqoVar7;
        this.zzfvf = zzeqoVar8;
        this.zzfdn = zzeqoVar9;
        this.zzfrq = zzeqoVar10;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcer(this.zzewk.get(), this.zzfdk.get(), this.zzgcz.get(), this.zzfqo.get(), this.zzgih.get(), this.zzgii.get(), this.zzewf.get(), this.zzfvf.get(), this.zzfdn.get(), this.zzfrq.get());
    }
}
