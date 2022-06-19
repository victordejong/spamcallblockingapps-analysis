package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdgi.class */
public final class zzdgi implements zzeqb<zzdgg> {
    private final zzeqo<zzdzv> zzewf;
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzatx> zzexx;
    private final zzeqo<String> zzfyr;

    public zzdgi(zzeqo<zzatx> zzeqoVar, zzeqo<Context> zzeqoVar2, zzeqo<String> zzeqoVar3, zzeqo<zzdzv> zzeqoVar4) {
        this.zzexx = zzeqoVar;
        this.zzewk = zzeqoVar2;
        this.zzfyr = zzeqoVar3;
        this.zzewf = zzeqoVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdgg(this.zzexx.get(), this.zzewk.get(), this.zzfyr.get(), this.zzewf.get());
    }
}
