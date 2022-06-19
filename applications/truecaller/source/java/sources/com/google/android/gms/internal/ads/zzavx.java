package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.view.Surface;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzavx.class */
public final class zzavx {
    private final Handler zza;
    private final zzavy zzb;

    public zzavx(Handler handler, zzavy zzavyVar) {
        Objects.requireNonNull(handler);
        this.zza = handler;
        this.zzb = zzavyVar;
    }

    public final void zzb(zzapf zzapfVar) {
        this.zza.post(new zzavq(this, zzapfVar));
    }

    public final void zzc(String str, long j, long j2) {
        this.zza.post(new zzavr(this, str, j, j2));
    }

    public final void zzd(zzanm zzanmVar) {
        this.zza.post(new zzavs(this, zzanmVar));
    }

    public final void zze(int i, long j) {
        this.zza.post(new zzavt(this, i, j));
    }

    public final void zzf(int i, int i2, int i3, float f) {
        this.zza.post(new zzavu(this, i, i2, i3, f));
    }

    public final void zzg(Surface surface) {
        this.zza.post(new zzavv(this, surface));
    }

    public final void zzh(zzapf zzapfVar) {
        this.zza.post(new zzavw(this, zzapfVar));
    }
}
