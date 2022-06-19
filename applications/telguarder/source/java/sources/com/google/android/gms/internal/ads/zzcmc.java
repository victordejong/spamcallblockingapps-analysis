package com.google.android.gms.internal.ads;

import android.content.Context;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcmc.class */
public final class zzcmc implements zzeqb<zzclq> {
    private final zzeqo<zzcin> zzewd;
    private final zzeqo<Executor> zzewf;
    private final zzeqo<zzcla> zzexj;
    private final zzeqo<zzbxg> zzexn;
    private final zzeqo<ScheduledExecutorService> zzfrq;
    private final zzeqo<zzazn> zzftb;
    private final zzeqo<Executor> zzfux;
    private final zzeqo<Context> zzgnn;
    private final zzeqo<WeakReference<Context>> zzgno;

    public zzcmc(zzeqo<Executor> zzeqoVar, zzeqo<Context> zzeqoVar2, zzeqo<WeakReference<Context>> zzeqoVar3, zzeqo<Executor> zzeqoVar4, zzeqo<zzcin> zzeqoVar5, zzeqo<ScheduledExecutorService> zzeqoVar6, zzeqo<zzcla> zzeqoVar7, zzeqo<zzazn> zzeqoVar8, zzeqo<zzbxg> zzeqoVar9) {
        this.zzfux = zzeqoVar;
        this.zzgnn = zzeqoVar2;
        this.zzgno = zzeqoVar3;
        this.zzewf = zzeqoVar4;
        this.zzewd = zzeqoVar5;
        this.zzfrq = zzeqoVar6;
        this.zzexj = zzeqoVar7;
        this.zzftb = zzeqoVar8;
        this.zzexn = zzeqoVar9;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzclq(this.zzfux.get(), this.zzgnn.get(), this.zzgno.get(), this.zzewf.get(), this.zzewd.get(), this.zzfrq.get(), this.zzexj.get(), this.zzftb.get(), this.zzexn.get());
    }
}
