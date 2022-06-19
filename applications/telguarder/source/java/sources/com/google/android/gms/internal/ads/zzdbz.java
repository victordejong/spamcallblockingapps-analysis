package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdbz.class */
public final class zzdbz implements zzeqb<zzdbx> {
    private final zzeqo<zzdzv> zzewf;
    private final zzeqo<Context> zzewk;

    private zzdbz(zzeqo<zzdzv> zzeqoVar, zzeqo<Context> zzeqoVar2) {
        this.zzewf = zzeqoVar;
        this.zzewk = zzeqoVar2;
    }

    public static zzdbz zzat(zzeqo<zzdzv> zzeqoVar, zzeqo<Context> zzeqoVar2) {
        return new zzdbz(zzeqoVar, zzeqoVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdbx(this.zzewf.get(), this.zzewk.get());
    }
}
