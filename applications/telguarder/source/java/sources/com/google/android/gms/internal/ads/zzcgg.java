package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcgg.class */
public final class zzcgg implements zzeqb<zzcge> {
    private final zzeqo<zzccz> zzfim;
    private final zzeqo<Context> zzfxw;
    private final zzeqo<zzccd> zzgcy;
    private final zzeqo<zzcbu> zzgir;

    private zzcgg(zzeqo<Context> zzeqoVar, zzeqo<zzccd> zzeqoVar2, zzeqo<zzccz> zzeqoVar3, zzeqo<zzcbu> zzeqoVar4) {
        this.zzfxw = zzeqoVar;
        this.zzgcy = zzeqoVar2;
        this.zzfim = zzeqoVar3;
        this.zzgir = zzeqoVar4;
    }

    public static zzcgg zzc(zzeqo<Context> zzeqoVar, zzeqo<zzccd> zzeqoVar2, zzeqo<zzccz> zzeqoVar3, zzeqo<zzcbu> zzeqoVar4) {
        return new zzcgg(zzeqoVar, zzeqoVar2, zzeqoVar3, zzeqoVar4);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcge(this.zzfxw.get(), this.zzgcy.get(), this.zzfim.get(), this.zzgir.get());
    }
}
