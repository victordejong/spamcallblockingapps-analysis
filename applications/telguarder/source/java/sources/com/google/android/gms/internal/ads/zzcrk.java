package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcrk.class */
public final class zzcrk implements zzeqb<zzcrb> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzckn> zzexw;
    private final zzeqo<zzcqr> zzgjo;
    private final zzeqo<zzdrz> zzgjp;
    private final zzeqo<zzazo> zzgst;

    public zzcrk(zzeqo<Context> zzeqoVar, zzeqo<zzcqr> zzeqoVar2, zzeqo<zzazo> zzeqoVar3, zzeqo<zzckn> zzeqoVar4, zzeqo<zzdrz> zzeqoVar5) {
        this.zzewk = zzeqoVar;
        this.zzgjo = zzeqoVar2;
        this.zzgst = zzeqoVar3;
        this.zzexw = zzeqoVar4;
        this.zzgjp = zzeqoVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcrb(this.zzewk.get(), this.zzgjo.get(), this.zzgst.get(), this.zzexw.get(), this.zzgjp.get());
    }
}
