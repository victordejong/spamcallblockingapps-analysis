package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcwu.class */
public final class zzcwu implements zzeqb<zzcwo> {
    private final zzeqo<zzdzv> zzfux;
    private final zzeqo<zzdrj> zzfvi;
    private final zzeqo<zzbmr> zzgtg;
    private final zzeqo<Context> zzgwv;
    private final zzeqo<zzacl> zzgww;

    public zzcwu(zzeqo<Context> zzeqoVar, zzeqo<zzbmr> zzeqoVar2, zzeqo<zzdrj> zzeqoVar3, zzeqo<zzdzv> zzeqoVar4, zzeqo<zzacl> zzeqoVar5) {
        this.zzgwv = zzeqoVar;
        this.zzgtg = zzeqoVar2;
        this.zzfvi = zzeqoVar3;
        this.zzfux = zzeqoVar4;
        this.zzgww = zzeqoVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcwo(this.zzgwv.get(), this.zzgtg.get(), this.zzfvi.get(), this.zzfux.get(), this.zzgww.get());
    }
}
