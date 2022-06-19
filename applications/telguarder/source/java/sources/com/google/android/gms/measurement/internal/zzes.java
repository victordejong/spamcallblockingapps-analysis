package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzes.class */
public final class zzes {
    final /* synthetic */ zzex zza;
    private final String zzb;
    private final boolean zzc;
    private boolean zzd;
    private boolean zze;

    public zzes(zzex zzexVar, String str, boolean z) {
        this.zza = zzexVar;
        Preconditions.checkNotEmpty(str);
        this.zzb = str;
        this.zzc = z;
    }

    public final boolean zza() {
        if (!this.zzd) {
            this.zzd = true;
            this.zze = this.zza.zzd().getBoolean(this.zzb, this.zzc);
        }
        return this.zze;
    }

    public final void zzb(boolean z) {
        SharedPreferences.Editor edit = this.zza.zzd().edit();
        edit.putBoolean(this.zzb, z);
        edit.apply();
        this.zze = z;
    }
}
