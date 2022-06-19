package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzfqw;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfsr.class */
public final class zzfsr extends zzfqw.zzj<Void> implements Runnable {
    private final Runnable zza;

    public zzfsr(Runnable runnable) {
        Objects.requireNonNull(runnable);
        this.zza = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.zza.run();
        } catch (Throwable th) {
            zzq(th);
            zzfmk.zza(th);
            throw new RuntimeException(th);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfqw
    public final String zzc() {
        String valueOf = String.valueOf(this.zza);
        return C22128a.m8610j(new StringBuilder(valueOf.length() + 7), "task=[", valueOf, "]");
    }
}
