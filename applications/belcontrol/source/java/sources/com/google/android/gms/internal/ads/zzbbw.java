package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbbw.class */
public final /* synthetic */ class zzbbw implements Runnable {
    private final String zzdjf;
    private final zzbbr zzenn;

    public zzbbw(zzbbr zzbbrVar, String str) {
        this.zzenn = zzbbrVar;
        this.zzdjf = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzenn.zzfd(this.zzdjf);
    }
}
