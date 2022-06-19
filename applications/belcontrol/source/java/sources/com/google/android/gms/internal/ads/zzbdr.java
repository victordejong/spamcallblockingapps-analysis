package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbdr.class */
public final /* synthetic */ class zzbdr implements Runnable {
    private final boolean zzekn;
    private final long zzeno;
    private final zzbbo zzeol;

    public zzbdr(zzbbo zzbboVar, boolean z, long j) {
        this.zzeol = zzbboVar;
        this.zzekn = z;
        this.zzeno = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzeol.zza(this.zzekn, this.zzeno);
    }
}
