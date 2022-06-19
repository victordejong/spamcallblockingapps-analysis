package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzeu.class */
public final class zzeu {
    final /* synthetic */ zzex zza;
    private final String zzb;
    private final long zzc;
    private boolean zzd;
    private long zze;

    public zzeu(zzex zzexVar, String str, long j) {
        this.zza = zzexVar;
        Preconditions.checkNotEmpty(str);
        this.zzb = str;
        this.zzc = j;
    }

    public final long zza() {
        if (!this.zzd) {
            this.zzd = true;
            this.zze = this.zza.zzd().getLong(this.zzb, this.zzc);
        }
        return this.zze;
    }

    public final void zzb(long j) {
        SharedPreferences.Editor edit = this.zza.zzd().edit();
        edit.putLong(this.zzb, j);
        edit.apply();
        this.zze = j;
    }
}
