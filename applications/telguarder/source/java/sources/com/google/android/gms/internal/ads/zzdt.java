package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdt.class */
public final class zzdt implements Runnable {
    private final /* synthetic */ zzds zzvz;

    public zzdt(zzds zzdsVar) {
        this.zzvz = zzdsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        boolean z;
        Object obj2;
        zzdsy zzdsyVar;
        obj = this.zzvz.zzvx;
        synchronized (obj) {
            z = this.zzvz.zzvy;
            if (!z) {
                this.zzvz.zzvy = true;
                try {
                    this.zzvz.zzbs();
                } catch (Exception e) {
                    zzdsyVar = this.zzvz.zzvs;
                    zzdsyVar.zza(2023, -1L, e);
                }
                obj2 = this.zzvz.zzvx;
                synchronized (obj2) {
                    this.zzvz.zzvy = false;
                }
            }
        }
    }
}
