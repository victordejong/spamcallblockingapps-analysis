package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbbe.class */
public final class zzbbe implements Runnable {
    private final /* synthetic */ zzbax zzekp;
    private final /* synthetic */ boolean zzeks;

    public zzbbe(zzbax zzbaxVar, boolean z) {
        this.zzekp = zzbaxVar;
        this.zzeks = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbax.zza(this.zzekp, "windowVisibilityChanged", new String[]{"isVisible", String.valueOf(this.zzeks)});
    }
}
