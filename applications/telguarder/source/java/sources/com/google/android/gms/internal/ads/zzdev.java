package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdev.class */
public final class zzdev implements zzeqb<zzdet> {
    private final zzeqo<zzdzv> zzewf;
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzaxc> zzfqr;

    private zzdev(zzeqo<zzaxc> zzeqoVar, zzeqo<zzdzv> zzeqoVar2, zzeqo<Context> zzeqoVar3) {
        this.zzfqr = zzeqoVar;
        this.zzewf = zzeqoVar2;
        this.zzewk = zzeqoVar3;
    }

    public static zzdev zzac(zzeqo<zzaxc> zzeqoVar, zzeqo<zzdzv> zzeqoVar2, zzeqo<Context> zzeqoVar3) {
        return new zzdev(zzeqoVar, zzeqoVar2, zzeqoVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdet(this.zzfqr.get(), this.zzewf.get(), this.zzewk.get());
    }
}
