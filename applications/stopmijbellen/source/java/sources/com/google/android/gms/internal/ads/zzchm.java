package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzchm.class */
public final class zzchm {
    private final Map<String, zzchl> zza = new HashMap();
    private final List<zzchk> zzb = new ArrayList();
    private final Context zzc;
    private final zzcgk zzd;

    public zzchm(Context context, zzcgk zzcgkVar) {
        this.zzc = context;
        this.zzd = zzcgkVar;
    }

    public final /* synthetic */ void zzb(Map map, SharedPreferences sharedPreferences, String str, String str2) {
        if (map.containsKey(str) && ((Set) map.get(str)).contains(str2)) {
            this.zzd.zze();
        }
    }

    public final void zzc(String str) {
        synchronized (this) {
            if (this.zza.containsKey(str)) {
                return;
            }
            SharedPreferences defaultSharedPreferences = "__default__".equals(str) ? PreferenceManager.getDefaultSharedPreferences(this.zzc) : this.zzc.getSharedPreferences(str, 0);
            zzchl zzchlVar = new zzchl(this, str);
            this.zza.put(str, zzchlVar);
            defaultSharedPreferences.registerOnSharedPreferenceChangeListener(zzchlVar);
        }
    }

    public final void zzd(zzchk zzchkVar) {
        synchronized (this) {
            this.zzb.add(zzchkVar);
        }
    }
}
