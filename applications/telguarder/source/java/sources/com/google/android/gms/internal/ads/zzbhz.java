package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbhz.class */
final class zzbhz implements zzdlf {
    private final /* synthetic */ zzbgz zzffq;
    private zzeqo<Context> zzfmh;
    private zzeqo<String> zzfmi;
    private zzeqo<zzvs> zzfoe;
    private zzeqo<zzcxy> zzfof;
    private zzeqo<zzdlh> zzfow;
    private zzeqo<zzdkx> zzfox;
    private zzeqo<zzcyt> zzfoy;

    /* JADX INFO: Access modifiers changed from: private */
    public zzbhz(zzbgz zzbgzVar, Context context, String str, zzvs zzvsVar) {
        zzeqo zzeqoVar;
        zzeqo zzeqoVar2;
        zzeqo zzeqoVar3;
        zzeqo zzeqoVar4;
        this.zzffq = zzbgzVar;
        this.zzfmh = zzeqe.zzbb(context);
        this.zzfoe = zzeqe.zzbb(zzvsVar);
        this.zzfmi = zzeqe.zzbb(str);
        zzeqoVar = zzbgzVar.zzewy;
        this.zzfof = zzeqc.zzau(zzcyn.zzak(zzeqoVar));
        zzeqoVar2 = zzbgzVar.zzeyu;
        this.zzfow = zzeqc.zzau(zzdma.zzas(zzeqoVar2));
        zzeqo<Context> zzeqoVar5 = this.zzfmh;
        zzeqoVar3 = zzbgzVar.zzewz;
        zzeqoVar4 = zzbgzVar.zzewg;
        zzeqo<zzdkx> zzau = zzeqc.zzau(new zzdlc(zzeqoVar5, zzeqoVar3, zzeqoVar4, this.zzfof, this.zzfow, zzdnq.zzavd()));
        this.zzfox = zzau;
        this.zzfoy = zzeqc.zzau(new zzcyv(this.zzfmh, this.zzfoe, this.zzfmi, zzau, this.zzfof, this.zzfow));
    }

    @Override // com.google.android.gms.internal.ads.zzdlf
    public final zzcyt zzaic() {
        return this.zzfoy.get();
    }
}
