package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcfg.class */
public final class zzcfg {
    private final Map<String, zzcfe> zza = new HashMap();
    private final List<zzcff> zzb = new ArrayList();
    private final Context zzc;
    private final zzced zzd;

    public zzcfg(Context context, zzced zzcedVar) {
        this.zzc = context;
        this.zzd = zzcedVar;
    }

    public final void zzb(zzcff zzcffVar) {
        synchronized (this) {
            this.zzb.add(zzcffVar);
        }
    }

    public final void zzc(String str) {
        synchronized (this) {
            if (this.zza.containsKey(str)) {
                return;
            }
            SharedPreferences defaultSharedPreferences = "__default__".equals(str) ? PreferenceManager.getDefaultSharedPreferences(this.zzc) : this.zzc.getSharedPreferences(str, 0);
            zzcfe zzcfeVar = new zzcfe(this, str);
            this.zza.put(str, zzcfeVar);
            defaultSharedPreferences.registerOnSharedPreferenceChangeListener(zzcfeVar);
        }
    }

    public final /* synthetic */ void zzd(Map map, SharedPreferences sharedPreferences, String str, String str2) {
        if (map.containsKey(str) && ((Set) map.get(str)).contains(str2)) {
            this.zzd.zzb();
        }
    }
}
