package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcpz.class */
public final class zzcpz implements zzbrr, zzbtb {
    private static final Object zzgqo = new Object();
    private static int zzgqp;
    private final zzcqi zzgqq;

    public zzcpz(zzcqi zzcqiVar) {
        this.zzgqq = zzcqiVar;
    }

    private static boolean zzart() {
        boolean z;
        synchronized (zzgqo) {
            z = zzgqp < ((Integer) zzwr.zzqr().zzd(zzabp.zzcxz)).intValue();
        }
        return z;
    }

    private final void zzbj(boolean z) {
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcxy)).booleanValue() && zzart()) {
            this.zzgqq.zzbj(z);
            synchronized (zzgqo) {
                zzgqp++;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbtb
    public final void onAdLoaded() {
        zzbj(true);
    }

    @Override // com.google.android.gms.internal.ads.zzbrr
    public final void zzc(zzvg zzvgVar) {
        zzbj(false);
    }
}
