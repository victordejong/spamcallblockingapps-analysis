package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzalc.class */
public final /* synthetic */ class zzalc implements Runnable {
    private final zzakz zzdjk;
    private final zzalq zzdjs;
    private final zzakm zzdjt;

    public zzalc(zzakz zzakzVar, zzalq zzalqVar, zzakm zzakmVar) {
        this.zzdjk = zzakzVar;
        this.zzdjs = zzalqVar;
        this.zzdjt = zzakmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzdjk.zza(this.zzdjs, this.zzdjt);
    }
}
