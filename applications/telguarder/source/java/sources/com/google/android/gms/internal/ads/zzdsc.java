package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdsc.class */
public final class zzdsc implements zzeqb<zzdrz> {
    private final zzeqo<zzdsf> zzewu;
    private final zzeqo<ScheduledExecutorService> zzfrq;
    private final zzeqo<zzdso> zzhrp;

    public zzdsc(zzeqo<zzdsf> zzeqoVar, zzeqo<zzdso> zzeqoVar2, zzeqo<ScheduledExecutorService> zzeqoVar3) {
        this.zzewu = zzeqoVar;
        this.zzhrp = zzeqoVar2;
        this.zzfrq = zzeqoVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        zzepv zzav = zzeqc.zzav(this.zzewu);
        zzepv zzav2 = zzeqc.zzav(this.zzhrp);
        return (zzdrz) zzeqh.zza(((Boolean) zzwr.zzqr().zzd(zzabp.zzdam)).booleanValue() ? new zzdsb((zzdrz) zzav.get(), this.zzfrq.get()) : (zzdrz) zzav2.get(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
