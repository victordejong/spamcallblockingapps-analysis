package com.google.android.gms.internal.ads;

import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdag.class */
public final class zzdag implements zzeqb<zzdzw<zzdak>> {
    private final zzeqo<zzdrj> zzfvi;
    private final zzeqo<zzdaj> zzhab;
    private final zzeqo<zzbqu> zzhac;

    public zzdag(zzeqo<zzdrj> zzeqoVar, zzeqo<zzdaj> zzeqoVar2, zzeqo<zzbqu> zzeqoVar3) {
        this.zzfvi = zzeqoVar;
        this.zzhab = zzeqoVar2;
        this.zzhac = zzeqoVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        zzdrj zzdrjVar = this.zzfvi.get();
        return (zzdzw) zzeqh.zza(zzdrjVar.zza((zzdrj) zzdrk.GENERATE_SIGNALS, (zzdzw) this.zzhac.get().zzalj()).zza(this.zzhab.get()).zza(((Integer) zzwr.zzqr().zzd(zzabp.zzcwn)).intValue(), TimeUnit.SECONDS).zzaxj(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
