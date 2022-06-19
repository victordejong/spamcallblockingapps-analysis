package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbex.class */
public final /* synthetic */ class zzbex implements Runnable {
    private final int zzefe;
    private final int zzeff;
    private final boolean zzers;
    private final boolean zzert;
    private final zzbev zzeug;

    public zzbex(zzbev zzbevVar, int i, int i2, boolean z, boolean z2) {
        this.zzeug = zzbevVar;
        this.zzefe = i;
        this.zzeff = i2;
        this.zzers = z;
        this.zzert = z2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzeug.zzb(this.zzefe, this.zzeff, this.zzers, this.zzert);
    }
}
