package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzap.class */
public class zzap extends Exception {
    private long zzal;
    private final zzz zzbt;

    public zzap() {
        this.zzbt = null;
    }

    public zzap(zzz zzzVar) {
        this.zzbt = zzzVar;
    }

    public zzap(String str) {
        super(str);
        this.zzbt = null;
    }

    public zzap(Throwable th) {
        super(th);
        this.zzbt = null;
    }

    public final void zza(long j) {
        this.zzal = j;
    }
}
