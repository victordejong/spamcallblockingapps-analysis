package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcmb.class */
public class zzcmb extends Exception {
    private final zzdom zzgnm;

    public zzcmb(zzdom zzdomVar) {
        this.zzgnm = zzdomVar;
    }

    public zzcmb(zzdom zzdomVar, String str) {
        super(str);
        this.zzgnm = zzdomVar;
    }

    public zzcmb(zzdom zzdomVar, String str, Throwable th) {
        super(str, th);
        this.zzgnm = zzdomVar;
    }

    public final zzdom zzarh() {
        return this.zzgnm;
    }
}
