package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzakr.class */
public final /* synthetic */ class zzakr implements Runnable {
    private final zzako zzdje;
    private final String zzdjf;

    public zzakr(zzako zzakoVar, String str) {
        this.zzdje = zzakoVar;
        this.zzdjf = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzdje.zzdc(this.zzdjf);
    }
}
