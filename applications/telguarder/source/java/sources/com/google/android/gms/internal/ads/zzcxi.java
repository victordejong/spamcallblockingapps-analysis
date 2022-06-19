package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcxi.class */
public final class zzcxi implements zzeqb<zzcxe> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzbzy> zzgtg;

    public zzcxi(zzeqo<Context> zzeqoVar, zzeqo<zzbzy> zzeqoVar2) {
        this.zzewk = zzeqoVar;
        this.zzgtg = zzeqoVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcxe(this.zzewk.get(), this.zzgtg.get());
    }
}
