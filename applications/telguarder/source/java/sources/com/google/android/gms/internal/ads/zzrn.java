package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzrn.class */
final class zzrn implements Runnable {
    private final /* synthetic */ zzrk zzbtf;

    public zzrn(zzrk zzrkVar) {
        this.zzbtf = zzrkVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        boolean z;
        boolean z2;
        List<zzrm> list;
        obj = this.zzbtf.lock;
        synchronized (obj) {
            z = this.zzbtf.foreground;
            if (z) {
                z2 = this.zzbtf.zzbsx;
                if (z2) {
                    this.zzbtf.foreground = false;
                    zzd.zzdy("App went background");
                    list = this.zzbtf.zzbsy;
                    for (zzrm zzrmVar : list) {
                        try {
                            zzrmVar.zzp(false);
                        } catch (Exception e) {
                            zzazk.zzc("", e);
                        }
                    }
                }
            }
            zzd.zzdy("App is still foreground");
        }
    }
}
