package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzf;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbqi.class */
public final class zzbqi implements zzeqb<zzbqf> {
    private final zzeqo<zzclq> zzexo;
    private final zzeqo<zzf> zzfag;
    private final zzeqo<zzazn> zzftb;
    private final zzeqo<zzdnp> zzfvf;
    private final zzeqo<Context> zzfxw;

    private zzbqi(zzeqo<Context> zzeqoVar, zzeqo<zzdnp> zzeqoVar2, zzeqo<zzazn> zzeqoVar3, zzeqo<zzf> zzeqoVar4, zzeqo<zzclq> zzeqoVar5) {
        this.zzfxw = zzeqoVar;
        this.zzfvf = zzeqoVar2;
        this.zzftb = zzeqoVar3;
        this.zzfag = zzeqoVar4;
        this.zzexo = zzeqoVar5;
    }

    public static zzbqi zzb(zzeqo<Context> zzeqoVar, zzeqo<zzdnp> zzeqoVar2, zzeqo<zzazn> zzeqoVar3, zzeqo<zzf> zzeqoVar4, zzeqo<zzclq> zzeqoVar5) {
        return new zzbqi(zzeqoVar, zzeqoVar2, zzeqoVar3, zzeqoVar4, zzeqoVar5);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbqf(this.zzfxw.get(), this.zzfvf.get(), this.zzftb.get(), this.zzfag.get(), this.zzexo.get());
    }
}
