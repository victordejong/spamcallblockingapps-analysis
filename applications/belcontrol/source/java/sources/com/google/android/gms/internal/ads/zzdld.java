package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdld.class */
public final /* synthetic */ class zzdld implements Runnable {
    private final zzvg zzgzk;
    private final zzdkz zzhhw;

    public zzdld(zzdkz zzdkzVar, zzvg zzvgVar) {
        this.zzhhw = zzdkzVar;
        this.zzgzk = zzvgVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzdkz zzdkzVar = this.zzhhw;
        zzdkx.zza(zzdkzVar.zzhhy).zzc(this.zzgzk);
    }
}
