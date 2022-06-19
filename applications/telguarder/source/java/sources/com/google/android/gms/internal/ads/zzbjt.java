package com.google.android.gms.internal.ads;

import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbjt.class */
public final class zzbjt implements zzaif<Object> {
    final /* synthetic */ zzbju zzfrx;

    public zzbjt(zzbju zzbjuVar) {
        this.zzfrx = zzbjuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaif
    public final void zza(Object obj, Map<String, String> map) {
        boolean zzn;
        Executor executor;
        zzn = this.zzfrx.zzn(map);
        if (!zzn) {
            return;
        }
        executor = this.zzfrx.executor;
        executor.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzbjw
            private final zzbjt zzfsc;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzfsc = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzbjz zzbjzVar;
                zzbjzVar = this.zzfsc.zzfrx.zzfrz;
                zzbjzVar.zzaiy();
            }
        });
    }
}
