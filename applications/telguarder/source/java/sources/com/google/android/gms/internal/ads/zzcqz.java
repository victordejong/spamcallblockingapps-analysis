package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcqz.class */
public final class zzcqz implements zzeqb<zzcqr> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzdzv> zzgqr;

    public zzcqz(zzeqo<Context> zzeqoVar, zzeqo<zzdzv> zzeqoVar2) {
        this.zzewk = zzeqoVar;
        this.zzgqr = zzeqoVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcqr(this.zzewk.get(), this.zzgqr.get());
    }
}
