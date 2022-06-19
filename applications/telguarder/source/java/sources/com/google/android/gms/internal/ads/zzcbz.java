package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcbz.class */
public final class zzcbz implements zzeqb<zzcbu> {
    private final zzeqo<Executor> zzewf;
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzbnw> zzfib;
    private final zzeqo<zzccl> zzfig;
    private final zzeqo<zzcch> zzfih;
    private final zzeqo<zzccc> zzfil;
    private final zzeqo<zzazn> zzfqo;
    private final zzeqo<zzcco> zzfuw;
    private final zzeqo<zzaxd> zzfwc;
    private final zzeqo<zzccd> zzgcy;
    private final zzeqo<zzei> zzgcz;
    private final zzeqo<zzccz> zzgdw;
    private final zzeqo<zzcgc> zzgdx;
    private final zzeqo<zzcga> zzgdy;
    private final zzeqo<zzcgf> zzgdz;
    private final zzeqo<zzcfw> zzgea;
    private final zzeqo<zzcge> zzgeb;
    private final zzeqo<zzcyq> zzgec;

    private zzcbz(zzeqo<zzbnw> zzeqoVar, zzeqo<Executor> zzeqoVar2, zzeqo<zzccd> zzeqoVar3, zzeqo<zzccl> zzeqoVar4, zzeqo<zzccz> zzeqoVar5, zzeqo<zzcch> zzeqoVar6, zzeqo<zzcco> zzeqoVar7, zzeqo<zzcgc> zzeqoVar8, zzeqo<zzcga> zzeqoVar9, zzeqo<zzcgf> zzeqoVar10, zzeqo<zzcfw> zzeqoVar11, zzeqo<zzcge> zzeqoVar12, zzeqo<zzaxd> zzeqoVar13, zzeqo<zzei> zzeqoVar14, zzeqo<zzazn> zzeqoVar15, zzeqo<Context> zzeqoVar16, zzeqo<zzccc> zzeqoVar17, zzeqo<zzcyq> zzeqoVar18) {
        this.zzfib = zzeqoVar;
        this.zzewf = zzeqoVar2;
        this.zzgcy = zzeqoVar3;
        this.zzfig = zzeqoVar4;
        this.zzgdw = zzeqoVar5;
        this.zzfih = zzeqoVar6;
        this.zzfuw = zzeqoVar7;
        this.zzgdx = zzeqoVar8;
        this.zzgdy = zzeqoVar9;
        this.zzgdz = zzeqoVar10;
        this.zzgea = zzeqoVar11;
        this.zzgeb = zzeqoVar12;
        this.zzfwc = zzeqoVar13;
        this.zzgcz = zzeqoVar14;
        this.zzfqo = zzeqoVar15;
        this.zzewk = zzeqoVar16;
        this.zzfil = zzeqoVar17;
        this.zzgec = zzeqoVar18;
    }

    public static zzcbz zza(zzeqo<zzbnw> zzeqoVar, zzeqo<Executor> zzeqoVar2, zzeqo<zzccd> zzeqoVar3, zzeqo<zzccl> zzeqoVar4, zzeqo<zzccz> zzeqoVar5, zzeqo<zzcch> zzeqoVar6, zzeqo<zzcco> zzeqoVar7, zzeqo<zzcgc> zzeqoVar8, zzeqo<zzcga> zzeqoVar9, zzeqo<zzcgf> zzeqoVar10, zzeqo<zzcfw> zzeqoVar11, zzeqo<zzcge> zzeqoVar12, zzeqo<zzaxd> zzeqoVar13, zzeqo<zzei> zzeqoVar14, zzeqo<zzazn> zzeqoVar15, zzeqo<Context> zzeqoVar16, zzeqo<zzccc> zzeqoVar17, zzeqo<zzcyq> zzeqoVar18) {
        return new zzcbz(zzeqoVar, zzeqoVar2, zzeqoVar3, zzeqoVar4, zzeqoVar5, zzeqoVar6, zzeqoVar7, zzeqoVar8, zzeqoVar9, zzeqoVar10, zzeqoVar11, zzeqoVar12, zzeqoVar13, zzeqoVar14, zzeqoVar15, zzeqoVar16, zzeqoVar17, zzeqoVar18);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcbu(this.zzfib.get(), this.zzewf.get(), this.zzgcy.get(), this.zzfig.get(), this.zzgdw.get(), this.zzfih.get(), this.zzfuw.get(), zzeqc.zzav(this.zzgdx), zzeqc.zzav(this.zzgdy), zzeqc.zzav(this.zzgdz), zzeqc.zzav(this.zzgea), zzeqc.zzav(this.zzgeb), this.zzfwc.get(), this.zzgcz.get(), this.zzfqo.get(), this.zzewk.get(), this.zzfil.get(), this.zzgec.get());
    }
}
