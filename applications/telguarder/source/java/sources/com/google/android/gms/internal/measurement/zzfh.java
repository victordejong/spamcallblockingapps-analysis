package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.StrictMode;
import androidx.collection.ArrayMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzfh.class */
public final class zzfh implements zzer {
    private static final Map<String, zzfh> zza = new ArrayMap();
    private final SharedPreferences zzb;
    private final SharedPreferences.OnSharedPreferenceChangeListener zzc;

    public static zzfh zza(Context context, String str) {
        zzfh zzfhVar;
        if (!zzej.zza()) {
            synchronized (zzfh.class) {
                try {
                    zzfhVar = zza.get(null);
                    if (zzfhVar == null) {
                        StrictMode.allowThreadDiskReads();
                        throw null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return zzfhVar;
        }
        throw null;
    }

    public static void zzb() {
        synchronized (zzfh.class) {
            try {
                Map<String, zzfh> map = zza;
                Iterator<zzfh> it = map.values().iterator();
                if (it.hasNext()) {
                    zzfh next = it.next();
                    SharedPreferences sharedPreferences = next.zzb;
                    SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener = next.zzc;
                    throw null;
                }
                map.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzer
    public final Object zze(String str) {
        throw null;
    }
}
