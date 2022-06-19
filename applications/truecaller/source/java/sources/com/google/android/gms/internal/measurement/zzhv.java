package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.StrictMode;
import java.util.Iterator;
import java.util.Map;
import p1727n3.p1788g.C26174a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzhv.class */
public final class zzhv implements zzhe {
    private static final Map zza = new C26174a();
    private final SharedPreferences zzb;
    private final SharedPreferences.OnSharedPreferenceChangeListener zzc;

    public static zzhv zza(Context context, String str) {
        zzhv zzhvVar;
        if (!zzgw.zza()) {
            synchronized (zzhv.class) {
                try {
                    zzhvVar = (zzhv) zza.get(null);
                    if (zzhvVar == null) {
                        StrictMode.allowThreadDiskReads();
                        throw null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return zzhvVar;
        }
        throw null;
    }

    public static void zzc() {
        synchronized (zzhv.class) {
            try {
                Map map = zza;
                Iterator it = map.values().iterator();
                if (it.hasNext()) {
                    SharedPreferences sharedPreferences = ((zzhv) it.next()).zzb;
                    throw null;
                }
                map.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzhe
    public final Object zzb(String str) {
        throw null;
    }
}
