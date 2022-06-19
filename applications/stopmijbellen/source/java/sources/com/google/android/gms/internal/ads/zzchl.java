package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzchl.class */
public final class zzchl implements SharedPreferences.OnSharedPreferenceChangeListener {
    public final /* synthetic */ zzchm zza;
    private final String zzb;

    public zzchl(zzchm zzchmVar, String str) {
        this.zza = zzchmVar;
        this.zzb = str;
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        List<zzchk> list;
        synchronized (this.zza) {
            list = this.zza.zzb;
            for (zzchk zzchkVar : list) {
                zzchkVar.zza.zzb(zzchkVar.zzb, sharedPreferences, this.zzb, str);
            }
        }
    }
}
