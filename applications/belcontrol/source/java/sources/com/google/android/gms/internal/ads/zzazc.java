package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzazc.class */
public final class zzazc extends Thread {
    private final /* synthetic */ String zzegh;

    public zzazc(zzayz zzayzVar, String str) {
        this.zzegh = str;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        new zzazo().zzel(this.zzegh);
    }
}
