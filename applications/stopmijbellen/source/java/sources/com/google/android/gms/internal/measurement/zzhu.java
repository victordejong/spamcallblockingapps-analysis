package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.StrictMode;
import java.util.Iterator;
import java.util.Map;
import p226s.C4251a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzhu.class */
public final class zzhu implements zzhe {
    private static final Map<String, zzhu> zza = new C4251a();
    private final SharedPreferences zzb;
    private final SharedPreferences.OnSharedPreferenceChangeListener zzc;

    public static zzhu zza(Context context, String str) {
        zzhu zzhuVar;
        if (!zzgw.zza()) {
            synchronized (zzhu.class) {
                try {
                    zzhuVar = zza.get(null);
                    if (zzhuVar == null) {
                        StrictMode.allowThreadDiskReads();
                        throw null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return zzhuVar;
        }
        throw null;
    }

    public static void zzb() {
        synchronized (zzhu.class) {
            try {
                Map<String, zzhu> map = zza;
                Iterator<zzhu> it2 = map.values().iterator();
                if (it2.hasNext()) {
                    SharedPreferences sharedPreferences = it2.next().zzb;
                    throw null;
                }
                map.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzhe
    public final Object zze(String str) {
        throw null;
    }
}
