package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.zzug;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcah.class */
public final class zzcah implements zzeqb<zzcai> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzazn> zzfqo;
    private final zzeqo<zzug.zza.EnumC2617zza> zzftc;
    private final zzeqo<zzbeb> zzfuu;
    private final zzeqo<zzdmw> zzfvr;

    private zzcah(zzeqo<Context> zzeqoVar, zzeqo<zzbeb> zzeqoVar2, zzeqo<zzdmw> zzeqoVar3, zzeqo<zzazn> zzeqoVar4, zzeqo<zzug.zza.EnumC2617zza> zzeqoVar5) {
        this.zzewk = zzeqoVar;
        this.zzfuu = zzeqoVar2;
        this.zzfvr = zzeqoVar3;
        this.zzfqo = zzeqoVar4;
        this.zzftc = zzeqoVar5;
    }

    public static zzcah zzc(zzeqo<Context> zzeqoVar, zzeqo<zzbeb> zzeqoVar2, zzeqo<zzdmw> zzeqoVar3, zzeqo<zzazn> zzeqoVar4, zzeqo<zzug.zza.EnumC2617zza> zzeqoVar5) {
        return new zzcah(zzeqoVar, zzeqoVar2, zzeqoVar3, zzeqoVar4, zzeqoVar5);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcai(this.zzewk.get(), this.zzfuu.get(), this.zzfvr.get(), this.zzfqo.get(), this.zzftc.get());
    }
}
