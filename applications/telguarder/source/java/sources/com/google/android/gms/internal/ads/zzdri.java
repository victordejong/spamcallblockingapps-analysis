package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdri.class */
public final class zzdri implements zzdzl<O> {
    private final /* synthetic */ zzdqw zzhqf;
    private final /* synthetic */ zzdrb zzhqg;

    public zzdri(zzdrb zzdrbVar, zzdqw zzdqwVar) {
        this.zzhqg = zzdrbVar;
        this.zzhqf = zzdqwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void onSuccess(O o) {
        zzdrh zzdrhVar;
        zzdrhVar = this.zzhqg.zzhpy.zzhpt;
        zzdrhVar.zzc(this.zzhqf);
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void zzb(Throwable th) {
        zzdrh zzdrhVar;
        zzdrhVar = this.zzhqg.zzhpy.zzhpt;
        zzdrhVar.zza(this.zzhqf, th);
    }
}
