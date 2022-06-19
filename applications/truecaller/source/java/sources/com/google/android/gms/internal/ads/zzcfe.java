package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcfe.class */
public final class zzcfe implements SharedPreferences.OnSharedPreferenceChangeListener {
    public final /* synthetic */ zzcfg zza;
    private final String zzb;

    public zzcfe(zzcfg zzcfgVar, String str) {
        this.zza = zzcfgVar;
        this.zzb = str;
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        List<zzcff> list;
        synchronized (this.zza) {
            list = this.zza.zzb;
            for (zzcff zzcffVar : list) {
                zzcffVar.zza(sharedPreferences, this.zzb, str);
            }
        }
    }
}
