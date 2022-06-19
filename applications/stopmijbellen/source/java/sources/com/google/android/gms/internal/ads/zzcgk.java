package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.util.Clock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcgk.class */
public final class zzcgk {
    private final Clock zza;
    private final zzcgi zzb;

    public zzcgk(Clock clock, zzcgi zzcgiVar) {
        this.zza = clock;
        this.zzb = zzcgiVar;
    }

    public static zzcgk zza(Context context) {
        return zzchi.zzd(context).zzb();
    }

    public final void zzb(int i, long j) {
        this.zzb.zzb(i, j);
    }

    public final void zzc() {
        this.zzb.zza();
    }

    public final void zzd(zzbkk zzbkkVar) {
        this.zzb.zzb(-1, this.zza.currentTimeMillis());
    }

    public final void zze() {
        this.zzb.zzb(-1, this.zza.currentTimeMillis());
    }
}
