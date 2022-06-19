package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbht.class */
final class zzbht implements zzdjk {
    private final /* synthetic */ zzbgz zzffq;
    private final Context zzflt;
    private final String zzflu;
    private zzeqo<Context> zzfmh;
    private final zzvs zzfnv;
    private zzeqo<zzvs> zzfoe;
    private zzeqo<zzcxy> zzfof;
    private zzeqo<zzcys> zzfog;
    private zzeqo<zzdje> zzfoh;

    /* JADX INFO: Access modifiers changed from: private */
    public zzbht(zzbgz zzbgzVar, Context context, String str, zzvs zzvsVar) {
        zzeqo zzeqoVar;
        zzeqo zzeqoVar2;
        zzeqo zzeqoVar3;
        this.zzffq = zzbgzVar;
        this.zzflt = context;
        this.zzfnv = zzvsVar;
        this.zzflu = str;
        this.zzfmh = zzeqe.zzbb(context);
        this.zzfoe = zzeqe.zzbb(zzvsVar);
        zzeqoVar = zzbgzVar.zzewy;
        this.zzfof = zzeqc.zzau(zzcyn.zzak(zzeqoVar));
        this.zzfog = zzeqc.zzau(zzcyr.zzasl());
        zzeqo<Context> zzeqoVar4 = this.zzfmh;
        zzeqoVar2 = zzbgzVar.zzewz;
        zzeqo<zzvs> zzeqoVar5 = this.zzfoe;
        zzeqoVar3 = zzbgzVar.zzewg;
        this.zzfoh = zzeqc.zzau(new zzdjl(zzeqoVar4, zzeqoVar2, zzeqoVar5, zzeqoVar3, this.zzfof, this.zzfog, zzdnq.zzavd()));
    }

    @Override // com.google.android.gms.internal.ads.zzdjk
    public final zzcxw zzahw() {
        return new zzcxw(this.zzflt, this.zzfnv, this.zzflu, this.zzfoh.get(), this.zzfof.get());
    }
}
