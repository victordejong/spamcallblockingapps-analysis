package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfez.class */
public final class zzfez {
    private final Executor zza;
    private final zzcgy zzb;

    public zzfez(Executor executor, zzcgy zzcgyVar) {
        this.zza = executor;
        this.zzb = zzcgyVar;
    }

    public final void zza(String str) {
        this.zza.execute(new Runnable(this, str) { // from class: com.google.android.gms.internal.ads.zzfey
            private final zzfez zza;
            private final String zzb;

            {
                this.zza = this;
                this.zzb = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzb(this.zzb);
            }
        });
    }

    public final /* synthetic */ void zzb(String str) {
        this.zzb.zza(str);
    }
}
