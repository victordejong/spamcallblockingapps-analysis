package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzblz.class */
public final class zzblz implements zzeqb<zzblx> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzbye> zzfhb;
    private final zzeqo<zzbnw> zzfib;
    private final zzeqo<zzcxs> zzfna;
    private final zzeqo<View> zzfrt;
    private final zzeqo<zzdmz> zzfut;
    private final zzeqo<zzbeb> zzfuu;
    private final zzeqo<zzbnu> zzfuv;
    private final zzeqo<zzcco> zzfuw;
    private final zzeqo<Executor> zzfux;

    public zzblz(zzeqo<zzbnw> zzeqoVar, zzeqo<Context> zzeqoVar2, zzeqo<zzdmz> zzeqoVar3, zzeqo<View> zzeqoVar4, zzeqo<zzbeb> zzeqoVar5, zzeqo<zzbnu> zzeqoVar6, zzeqo<zzcco> zzeqoVar7, zzeqo<zzbye> zzeqoVar8, zzeqo<zzcxs> zzeqoVar9, zzeqo<Executor> zzeqoVar10) {
        this.zzfib = zzeqoVar;
        this.zzewk = zzeqoVar2;
        this.zzfut = zzeqoVar3;
        this.zzfrt = zzeqoVar4;
        this.zzfuu = zzeqoVar5;
        this.zzfuv = zzeqoVar6;
        this.zzfuw = zzeqoVar7;
        this.zzfhb = zzeqoVar8;
        this.zzfna = zzeqoVar9;
        this.zzfux = zzeqoVar10;
    }

    public static zzblx zza(zzbnw zzbnwVar, Context context, zzdmz zzdmzVar, View view, zzbeb zzbebVar, zzbnu zzbnuVar, zzcco zzccoVar, zzbye zzbyeVar, zzepv<zzcxs> zzepvVar, Executor executor) {
        return new zzblx(zzbnwVar, context, zzdmzVar, view, zzbebVar, zzbnuVar, zzccoVar, zzbyeVar, zzepvVar, executor);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zza(this.zzfib.get(), this.zzewk.get(), this.zzfut.get(), this.zzfrt.get(), this.zzfuu.get(), this.zzfuv.get(), this.zzfuw.get(), this.zzfhb.get(), zzeqc.zzav(this.zzfna), this.zzfux.get());
    }
}
