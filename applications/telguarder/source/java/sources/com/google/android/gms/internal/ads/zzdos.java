package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdos.class */
public final class zzdos implements zzeqb<zzdop> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzayy> zzezq;

    private zzdos(zzeqo<Context> zzeqoVar, zzeqo<zzayy> zzeqoVar2) {
        this.zzewk = zzeqoVar;
        this.zzezq = zzeqoVar2;
    }

    public static zzdos zzbc(zzeqo<Context> zzeqoVar, zzeqo<zzayy> zzeqoVar2) {
        return new zzdos(zzeqoVar, zzeqoVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdop(this.zzewk.get(), this.zzezq.get());
    }
}
