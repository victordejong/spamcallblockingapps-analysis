package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzduz.class */
public final class zzduz extends Exception {
    private final int zzhus;

    public zzduz(int i, String str) {
        super(str);
        this.zzhus = i;
    }

    public zzduz(int i, Throwable th) {
        super(th);
        this.zzhus = i;
    }

    public final int zzayu() {
        return this.zzhus;
    }
}
