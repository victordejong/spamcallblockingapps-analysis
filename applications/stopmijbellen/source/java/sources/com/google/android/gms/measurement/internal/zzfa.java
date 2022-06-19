package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfa.class */
public final class zzfa {
    public final /* synthetic */ zzfb zza;
    private final String zzb;
    private boolean zzc;
    private String zzd;

    public zzfa(zzfb zzfbVar, String str, String str2) {
        this.zza = zzfbVar;
        Preconditions.checkNotEmpty(str);
        this.zzb = str;
    }

    public final String zza() {
        if (!this.zzc) {
            this.zzc = true;
            this.zzd = this.zza.zzd().getString(this.zzb, null);
        }
        return this.zzd;
    }

    public final void zzb(String str) {
        SharedPreferences.Editor edit = this.zza.zzd().edit();
        edit.putString(this.zzb, str);
        edit.apply();
        this.zzd = str;
    }
}
