package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcst.class */
public final class zzcst implements zzeqb<zzcsp> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzbmr> zzgtg;

    public zzcst(zzeqo<Context> zzeqoVar, zzeqo<zzbmr> zzeqoVar2) {
        this.zzewk = zzeqoVar;
        this.zzgtg = zzeqoVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcsp(this.zzewk.get(), this.zzgtg.get());
    }
}
