package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaqc.class */
public final class zzaqc {
    private final Handler zza;
    private final zzaqd zzb;

    public zzaqc(Handler handler, zzaqd zzaqdVar) {
        Objects.requireNonNull(handler);
        this.zza = handler;
        this.zzb = zzaqdVar;
    }

    public final void zzb(int i) {
        this.zza.post(new zzaqb(this, i));
    }

    public final void zzc(int i, long j, long j2) {
        this.zza.post(new zzapz(this, i, j, j2));
    }

    public final void zzd(String str, long j, long j2) {
        this.zza.post(new zzapx(this, str, j, j2));
    }

    public final void zze(zzara zzaraVar) {
        this.zza.post(new zzaqa(this, zzaraVar));
    }

    public final void zzf(zzara zzaraVar) {
        this.zza.post(new zzapw(this, zzaraVar));
    }

    public final void zzg(zzapg zzapgVar) {
        this.zza.post(new zzapy(this, zzapgVar));
    }
}
