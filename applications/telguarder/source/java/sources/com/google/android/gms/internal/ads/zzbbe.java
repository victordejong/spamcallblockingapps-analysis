package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbbe.class */
final class zzbbe implements Runnable {
    private final /* synthetic */ zzbax zzekp;
    private final /* synthetic */ boolean zzeks;

    public zzbbe(zzbax zzbaxVar, boolean z) {
        this.zzekp = zzbaxVar;
        this.zzeks = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzekp.zzd("windowVisibilityChanged", "isVisible", String.valueOf(this.zzeks));
    }
}
