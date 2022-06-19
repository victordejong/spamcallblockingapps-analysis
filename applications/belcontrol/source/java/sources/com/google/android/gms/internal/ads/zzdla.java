package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdla.class */
public final /* synthetic */ class zzdla implements Runnable {
    private final zzvg zzgzk;
    private final zzdkz zzhhw;

    public zzdla(zzdkz zzdkzVar, zzvg zzvgVar) {
        this.zzhhw = zzdkzVar;
        this.zzgzk = zzvgVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzdkz zzdkzVar = this.zzhhw;
        zzdkx.zzb(zzdkzVar.zzhhy).zzc(this.zzgzk);
    }
}
