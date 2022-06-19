package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbib.class */
final class zzbib implements zzdmo {
    private final /* synthetic */ zzbgz zzffq;
    private zzeqo<Context> zzfmh;
    private zzeqo<String> zzfmi;
    private zzeqo<zzdlh> zzfow;
    private zzeqo<zzdkn<zzchi, zzchb>> zzfoz;
    private zzeqo<zzdnk> zzfpa;
    private zzeqo<zzdmc> zzfpb;
    private zzeqo<zzdmq> zzfpc;
    private zzeqo<zzdmk> zzfpd;

    /* JADX INFO: Access modifiers changed from: private */
    public zzbib(zzbgz zzbgzVar, Context context, String str) {
        zzeqo zzeqoVar;
        zzeqo zzeqoVar2;
        zzeqo zzeqoVar3;
        zzeqo zzeqoVar4;
        zzeqo zzeqoVar5;
        this.zzffq = zzbgzVar;
        zzeqb zzbb = zzeqe.zzbb(context);
        this.zzfmh = zzbb;
        zzeqoVar = zzbgzVar.zzeyu;
        zzeqoVar2 = zzbgzVar.zzeyv;
        this.zzfoz = new zzdks(zzbb, zzeqoVar, zzeqoVar2);
        zzeqoVar3 = zzbgzVar.zzeyu;
        this.zzfow = zzeqc.zzau(zzdma.zzas(zzeqoVar3));
        this.zzfpa = zzeqc.zzau(zzdnn.zzavb());
        zzeqo<Context> zzeqoVar6 = this.zzfmh;
        zzeqoVar4 = zzbgzVar.zzewz;
        zzeqoVar5 = zzbgzVar.zzewg;
        zzeqo<zzdmc> zzau = zzeqc.zzau(new zzdml(zzeqoVar6, zzeqoVar4, zzeqoVar5, this.zzfoz, this.zzfow, zzdnq.zzavd(), this.zzfpa));
        this.zzfpb = zzau;
        this.zzfpc = zzeqc.zzau(new zzdmv(zzau, this.zzfow, this.zzfpa));
        zzeqb zzbc = zzeqe.zzbc(str);
        this.zzfmi = zzbc;
        this.zzfpd = zzeqc.zzau(new zzdmp(zzbc, this.zzfpb, this.zzfmh, this.zzfow, this.zzfpa));
    }

    @Override // com.google.android.gms.internal.ads.zzdmo
    public final zzdmq zzaie() {
        return this.zzfpc.get();
    }

    @Override // com.google.android.gms.internal.ads.zzdmo
    public final zzdmk zzaif() {
        return this.zzfpd.get();
    }
}
