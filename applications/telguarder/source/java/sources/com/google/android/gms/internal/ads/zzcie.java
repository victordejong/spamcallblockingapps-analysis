package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzb;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcie.class */
public final class zzcie implements zzeqb<zzchq> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzacq> zzfdl;
    private final zzeqo<zzazn> zzfqo;
    private final zzeqo<zzbts> zzfvg;
    private final zzeqo<zzei> zzgcz;
    private final zzeqo<zztu> zzgii;
    private final zzeqo<zzbej> zzgjn;
    private final zzeqo<zzb> zzgke;

    private zzcie(zzeqo<zzbej> zzeqoVar, zzeqo<Context> zzeqoVar2, zzeqo<zzei> zzeqoVar3, zzeqo<zzacq> zzeqoVar4, zzeqo<zzazn> zzeqoVar5, zzeqo<zzb> zzeqoVar6, zzeqo<zztu> zzeqoVar7, zzeqo<zzbts> zzeqoVar8) {
        this.zzgjn = zzeqoVar;
        this.zzewk = zzeqoVar2;
        this.zzgcz = zzeqoVar3;
        this.zzfdl = zzeqoVar4;
        this.zzfqo = zzeqoVar5;
        this.zzgke = zzeqoVar6;
        this.zzgii = zzeqoVar7;
        this.zzfvg = zzeqoVar8;
    }

    public static zzcie zza(zzeqo<zzbej> zzeqoVar, zzeqo<Context> zzeqoVar2, zzeqo<zzei> zzeqoVar3, zzeqo<zzacq> zzeqoVar4, zzeqo<zzazn> zzeqoVar5, zzeqo<zzb> zzeqoVar6, zzeqo<zztu> zzeqoVar7, zzeqo<zzbts> zzeqoVar8) {
        return new zzcie(zzeqoVar, zzeqoVar2, zzeqoVar3, zzeqoVar4, zzeqoVar5, zzeqoVar6, zzeqoVar7, zzeqoVar8);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzchq(this.zzgjn.get(), this.zzewk.get(), this.zzgcz.get(), this.zzfdl.get(), this.zzfqo.get(), this.zzgke.get(), this.zzgii.get(), this.zzfvg.get());
    }
}
