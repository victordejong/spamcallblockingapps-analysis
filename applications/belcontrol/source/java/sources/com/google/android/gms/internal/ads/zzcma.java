package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcma.class */
public final /* synthetic */ class zzcma implements Runnable {
    private final String zzdjf;
    private final zzclx zzgnl;

    public zzcma(zzclx zzclxVar, String str) {
        this.zzgnl = zzclxVar;
        this.zzdjf = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzclx zzclxVar = this.zzgnl;
        zzclxVar.zzgng.zzgh(this.zzdjf);
    }
}
