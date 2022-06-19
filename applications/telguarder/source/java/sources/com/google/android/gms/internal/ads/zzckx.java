package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzckx.class */
public final class zzckx implements zzeqb<zzckw> {
    private final zzeqo<Executor> zzewf;
    private final zzeqo<zzdsh> zzewt;
    private final zzeqo<zzazo> zzexv;
    private final zzeqo<zzdsj> zzgme;

    public zzckx(zzeqo<Executor> zzeqoVar, zzeqo<zzazo> zzeqoVar2, zzeqo<zzdsh> zzeqoVar3, zzeqo<zzdsj> zzeqoVar4) {
        this.zzewf = zzeqoVar;
        this.zzexv = zzeqoVar2;
        this.zzewt = zzeqoVar3;
        this.zzgme = zzeqoVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzckw(this.zzewf.get(), this.zzexv.get(), this.zzewt.get(), this.zzgme.get());
    }
}
