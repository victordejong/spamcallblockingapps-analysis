package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbcb.class */
public final /* synthetic */ class zzbcb implements Runnable {
    private final boolean zzekn;
    private final zzbbr zzenn;
    private final long zzeno;

    public zzbcb(zzbbr zzbbrVar, boolean z, long j) {
        this.zzenn = zzbbrVar;
        this.zzekn = z;
        this.zzeno = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzenn.zzc(this.zzekn, this.zzeno);
    }
}
