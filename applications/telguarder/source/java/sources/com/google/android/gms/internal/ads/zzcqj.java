package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcqj.class */
public final class zzcqj implements zzeqb<zzcqi> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzcqb> zzfaa;
    private final zzeqo<zzcpv> zzfcp;
    private final zzeqo<zzbqu> zzgrj;

    private zzcqj(zzeqo<Context> zzeqoVar, zzeqo<zzbqu> zzeqoVar2, zzeqo<zzcqb> zzeqoVar3, zzeqo<zzcpv> zzeqoVar4) {
        this.zzewk = zzeqoVar;
        this.zzgrj = zzeqoVar2;
        this.zzfaa = zzeqoVar3;
        this.zzfcp = zzeqoVar4;
    }

    public static zzcqj zze(zzeqo<Context> zzeqoVar, zzeqo<zzbqu> zzeqoVar2, zzeqo<zzcqb> zzeqoVar3, zzeqo<zzcpv> zzeqoVar4) {
        return new zzcqj(zzeqoVar, zzeqoVar2, zzeqoVar3, zzeqoVar4);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcqi(this.zzewk.get(), this.zzgrj.get(), this.zzfaa.get(), this.zzfcp.get());
    }
}
