package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzakt.class */
public final /* synthetic */ class zzakt implements Runnable {
    private final zzako zzdje;
    private final String zzdjf;

    public zzakt(zzako zzakoVar, String str) {
        this.zzdje = zzakoVar;
        this.zzdjf = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzdje.zzda(this.zzdjf);
    }
}
