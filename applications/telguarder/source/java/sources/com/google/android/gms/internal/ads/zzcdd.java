package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzf;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcdd.class */
public final class zzcdd implements zzeqb<zzccz> {
    private final zzeqo<Executor> zzewf;
    private final zzeqo<zzf> zzfag;
    private final zzeqo<zzcch> zzfih;
    private final zzeqo<zzcdh> zzfii;
    private final zzeqo<zzcdp> zzfij;
    private final zzeqo<zzccc> zzfil;
    private final zzeqo<Executor> zzfux;
    private final zzeqo<zzdnp> zzfvf;
    private final zzeqo<zzccd> zzgcy;

    private zzcdd(zzeqo<zzf> zzeqoVar, zzeqo<zzdnp> zzeqoVar2, zzeqo<zzcch> zzeqoVar3, zzeqo<zzccd> zzeqoVar4, zzeqo<zzcdh> zzeqoVar5, zzeqo<zzcdp> zzeqoVar6, zzeqo<Executor> zzeqoVar7, zzeqo<Executor> zzeqoVar8, zzeqo<zzccc> zzeqoVar9) {
        this.zzfag = zzeqoVar;
        this.zzfvf = zzeqoVar2;
        this.zzfih = zzeqoVar3;
        this.zzgcy = zzeqoVar4;
        this.zzfii = zzeqoVar5;
        this.zzfij = zzeqoVar6;
        this.zzfux = zzeqoVar7;
        this.zzewf = zzeqoVar8;
        this.zzfil = zzeqoVar9;
    }

    public static zzcdd zza(zzeqo<zzf> zzeqoVar, zzeqo<zzdnp> zzeqoVar2, zzeqo<zzcch> zzeqoVar3, zzeqo<zzccd> zzeqoVar4, zzeqo<zzcdh> zzeqoVar5, zzeqo<zzcdp> zzeqoVar6, zzeqo<Executor> zzeqoVar7, zzeqo<Executor> zzeqoVar8, zzeqo<zzccc> zzeqoVar9) {
        return new zzcdd(zzeqoVar, zzeqoVar2, zzeqoVar3, zzeqoVar4, zzeqoVar5, zzeqoVar6, zzeqoVar7, zzeqoVar8, zzeqoVar9);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzccz(this.zzfag.get(), this.zzfvf.get(), this.zzfih.get(), this.zzgcy.get(), this.zzfii.get(), this.zzfij.get(), this.zzfux.get(), this.zzewf.get(), this.zzfil.get());
    }
}
