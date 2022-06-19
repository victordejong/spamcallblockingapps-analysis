package com.google.android.gms.internal.ads;

import androidx.recyclerview.widget.C0608b;
import com.google.android.gms.internal.ads.zzfvg;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfxf.class */
final class zzfxf extends zzfvg.zzi<Void> implements Runnable {
    private final Runnable zza;

    public zzfxf(Runnable runnable) {
        Objects.requireNonNull(runnable);
        this.zza = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.zza.run();
        } catch (Throwable th) {
            zzt(th);
            zzfqt.zzb(th);
            throw new RuntimeException(th);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfvg
    public final String zzd() {
        String valueOf = String.valueOf(this.zza);
        return C0608b.m7625j(new StringBuilder(valueOf.length() + 7), "task=[", valueOf, "]");
    }
}
