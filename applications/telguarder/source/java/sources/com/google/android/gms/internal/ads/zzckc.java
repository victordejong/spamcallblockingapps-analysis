package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzckc.class */
public final class zzckc implements zzeqb<zzcjx> {
    private final zzeqo<zztu> zzgjp;
    private final zzeqo<Map<zzdrk, zzcjz>> zzglm;

    private zzckc(zzeqo<zztu> zzeqoVar, zzeqo<Map<zzdrk, zzcjz>> zzeqoVar2) {
        this.zzgjp = zzeqoVar;
        this.zzglm = zzeqoVar2;
    }

    public static zzckc zzae(zzeqo<zztu> zzeqoVar, zzeqo<Map<zzdrk, zzcjz>> zzeqoVar2) {
        return new zzckc(zzeqoVar, zzeqoVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcjx(this.zzgjp.get(), this.zzglm.get());
    }
}
