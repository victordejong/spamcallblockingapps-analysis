package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzakq.class */
public final /* synthetic */ class zzakq implements Runnable {
    private final zzako zzdje;
    private final String zzdjf;

    public zzakq(zzako zzakoVar, String str) {
        this.zzdje = zzakoVar;
        this.zzdjf = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzdje.zzdb(this.zzdjf);
    }
}
