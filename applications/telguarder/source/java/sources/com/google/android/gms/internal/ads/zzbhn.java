package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbhn.class */
final class zzbhn implements zzdid {
    private final /* synthetic */ zzbgz zzffq;
    private zzeqo<Context> zzfmh;
    private zzeqo<String> zzfmi;
    private zzeqo<zzdkn<zzbkx, zzblg>> zzfmj;
    private zzeqo<zzdil> zzfmk;
    private zzeqo<zzdhv> zzfml;
    private zzeqo<zzdhx> zzfmm;
    private zzeqo<zzdkn<zzblk, zzblq>> zzfmn;
    private zzeqo<zzdix> zzfmo;
    private zzeqo<zzdiz> zzfmp;

    /* JADX INFO: Access modifiers changed from: private */
    public zzbhn(zzbgz zzbgzVar, Context context, String str) {
        zzeqo zzeqoVar;
        zzeqo zzeqoVar2;
        zzeqo zzeqoVar3;
        zzeqo zzeqoVar4;
        zzeqo zzeqoVar5;
        zzeqo zzeqoVar6;
        zzeqo zzeqoVar7;
        zzeqo zzeqoVar8;
        zzeqo zzeqoVar9;
        zzeqo zzeqoVar10;
        zzeqo zzeqoVar11;
        zzeqo zzeqoVar12;
        this.zzffq = zzbgzVar;
        this.zzfmh = zzeqe.zzbb(context);
        this.zzfmi = zzeqe.zzbb(str);
        zzeqo<Context> zzeqoVar13 = this.zzfmh;
        zzeqoVar = zzbgzVar.zzeyu;
        zzeqoVar2 = zzbgzVar.zzeyv;
        this.zzfmj = new zzdkt(zzeqoVar13, zzeqoVar, zzeqoVar2);
        zzeqoVar3 = zzbgzVar.zzeyu;
        this.zzfmk = zzeqc.zzau(new zzdiu(zzeqoVar3));
        zzeqo<Context> zzeqoVar14 = this.zzfmh;
        zzeqoVar4 = zzbgzVar.zzewz;
        zzeqoVar5 = zzbgzVar.zzewg;
        this.zzfml = zzeqc.zzau(new zzdhu(zzeqoVar14, zzeqoVar4, zzeqoVar5, this.zzfmj, this.zzfmk, zzdnq.zzavd()));
        zzeqoVar6 = zzbgzVar.zzewg;
        zzeqo<Context> zzeqoVar15 = this.zzfmh;
        zzeqo<String> zzeqoVar16 = this.zzfmi;
        zzeqo<zzdhv> zzeqoVar17 = this.zzfml;
        zzeqo<zzdil> zzeqoVar18 = this.zzfmk;
        zzeqoVar7 = zzbgzVar.zzews;
        this.zzfmm = zzeqc.zzau(new zzdia(zzeqoVar6, zzeqoVar15, zzeqoVar16, zzeqoVar17, zzeqoVar18, zzeqoVar7));
        zzeqo<Context> zzeqoVar19 = this.zzfmh;
        zzeqoVar8 = zzbgzVar.zzeyu;
        zzeqoVar9 = zzbgzVar.zzeyv;
        this.zzfmn = new zzdkq(zzeqoVar19, zzeqoVar8, zzeqoVar9);
        zzeqo<Context> zzeqoVar20 = this.zzfmh;
        zzeqoVar10 = zzbgzVar.zzewz;
        zzeqoVar11 = zzbgzVar.zzewg;
        this.zzfmo = zzeqc.zzau(new zzdiw(zzeqoVar20, zzeqoVar10, zzeqoVar11, this.zzfmn, this.zzfmk, zzdnq.zzavd()));
        zzeqoVar12 = zzbgzVar.zzewg;
        this.zzfmp = zzeqc.zzau(new zzdjf(zzeqoVar12, this.zzfmh, this.zzfmi, this.zzfmo, this.zzfmk));
    }

    @Override // com.google.android.gms.internal.ads.zzdid
    public final zzdhx zzahl() {
        return this.zzfmm.get();
    }

    @Override // com.google.android.gms.internal.ads.zzdid
    public final zzdiz zzahm() {
        return this.zzfmp.get();
    }
}
