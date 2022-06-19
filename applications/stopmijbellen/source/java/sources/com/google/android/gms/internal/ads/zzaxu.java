package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.view.Surface;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaxu.class */
public final class zzaxu {
    private final Handler zza;
    private final zzaxv zzb;

    public zzaxu(Handler handler, zzaxv zzaxvVar) {
        Objects.requireNonNull(handler);
        this.zza = handler;
        this.zzb = zzaxvVar;
    }

    public final void zzb(String str, long j, long j2) {
        this.zza.post(new zzaxo(this, str, j, j2));
    }

    public final void zzc(zzara zzaraVar) {
        this.zza.post(new zzaxt(this, zzaraVar));
    }

    public final void zzd(int i, long j) {
        this.zza.post(new zzaxq(this, i, j));
    }

    public final void zze(zzara zzaraVar) {
        this.zza.post(new zzaxn(this, zzaraVar));
    }

    public final void zzf(zzapg zzapgVar) {
        this.zza.post(new zzaxp(this, zzapgVar));
    }

    public final void zzg(Surface surface) {
        this.zza.post(new zzaxs(this, surface));
    }

    public final void zzh(int i, int i2, int i3, float f) {
        this.zza.post(new zzaxr(this, i, i2, i3, f));
    }
}
