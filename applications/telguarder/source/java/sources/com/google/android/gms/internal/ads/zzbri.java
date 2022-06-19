package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbri.class */
public final class zzbri implements zzeqb<zzawz> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzdmw> zzfta;
    private final zzbrj zzfzd;
    private final zzeqo<zzazn> zzfze;
    private final zzeqo<zzaxb> zzfzf;

    private zzbri(zzbrj zzbrjVar, zzeqo<Context> zzeqoVar, zzeqo<zzazn> zzeqoVar2, zzeqo<zzdmw> zzeqoVar3, zzeqo<zzaxb> zzeqoVar4) {
        this.zzfzd = zzbrjVar;
        this.zzewk = zzeqoVar;
        this.zzfze = zzeqoVar2;
        this.zzfta = zzeqoVar3;
        this.zzfzf = zzeqoVar4;
    }

    public static zzbri zza(zzbrj zzbrjVar, zzeqo<Context> zzeqoVar, zzeqo<zzazn> zzeqoVar2, zzeqo<zzdmw> zzeqoVar3, zzeqo<zzaxb> zzeqoVar4) {
        return new zzbri(zzbrjVar, zzeqoVar, zzeqoVar2, zzeqoVar3, zzeqoVar4);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        Context context = this.zzewk.get();
        zzazn zzaznVar = this.zzfze.get();
        zzdmw zzdmwVar = this.zzfta.get();
        zzaxb zzaxbVar = this.zzfzf.get();
        if (zzdmwVar.zzhjk != null) {
            return new zzawm(context, zzaznVar, zzdmwVar.zzhjk, zzdmwVar.zzhjg.zzdsw, zzaxbVar);
        }
        return null;
    }
}
