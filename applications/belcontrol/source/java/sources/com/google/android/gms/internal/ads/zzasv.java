package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzasv.class */
public final /* synthetic */ class zzasv implements Runnable {
    private final String zzdjf;
    private final zzazo zzdua;

    public zzasv(zzazo zzazoVar, String str) {
        this.zzdua = zzazoVar;
        this.zzdjf = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzass.zza(this.zzdua, this.zzdjf);
    }
}
