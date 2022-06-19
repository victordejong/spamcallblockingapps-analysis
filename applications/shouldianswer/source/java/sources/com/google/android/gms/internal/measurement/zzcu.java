package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.p014c.C0374a;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcu.class */
public final class zzcu implements zzcb {
    private static final Map<String, zzcu> zza = new C0374a();
    private final SharedPreferences zzb;
    private volatile Map<String, ?> zze;
    private final SharedPreferences.OnSharedPreferenceChangeListener zzc = new SharedPreferences.OnSharedPreferenceChangeListener(this) { // from class: com.google.android.gms.internal.measurement.zzct
        private final zzcu zza;

        /* JADX INFO: Access modifiers changed from: package-private */
        {
            this.zza = this;
        }

        @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
        public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
            this.zza.zza(sharedPreferences, str);
        }
    };
    private final Object zzd = new Object();
    private final List<zzcc> zzf = new ArrayList();

    private zzcu(SharedPreferences sharedPreferences) {
        this.zzb = sharedPreferences;
        this.zzb.registerOnSharedPreferenceChangeListener(this.zzc);
    }

    public static zzcu zza(Context context, String str) {
        zzcu zzcuVar;
        SharedPreferences sharedPreferences;
        if (!((!zzby.zza() || str.startsWith("direct_boot:")) ? true : zzby.zza(context))) {
            return null;
        }
        synchronized (zzcu.class) {
            try {
                zzcu zzcuVar2 = zza.get(str);
                zzcuVar = zzcuVar2;
                if (zzcuVar2 == null) {
                    if (str.startsWith("direct_boot:")) {
                        Context context2 = context;
                        if (zzby.zza()) {
                            context2 = context.createDeviceProtectedStorageContext();
                        }
                        sharedPreferences = context2.getSharedPreferences(str.substring(12), 0);
                    } else {
                        sharedPreferences = context.getSharedPreferences(str, 0);
                    }
                    zzcu zzcuVar3 = new zzcu(sharedPreferences);
                    zza.put(str, zzcuVar3);
                    zzcuVar = zzcuVar3;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzcuVar;
    }

    public static void zza() {
        synchronized (zzcu.class) {
            try {
                for (zzcu zzcuVar : zza.values()) {
                    zzcuVar.zzb.unregisterOnSharedPreferenceChangeListener(zzcuVar.zzc);
                }
                zza.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcb
    public final Object zza(String str) {
        Map<String, ?> map = this.zze;
        Map<String, ?> map2 = map;
        if (map == null) {
            synchronized (this.zzd) {
                Map<String, ?> map3 = this.zze;
                map2 = map3;
                if (map3 == null) {
                    map2 = this.zzb.getAll();
                    this.zze = map2;
                }
            }
        }
        if (map2 != null) {
            return map2.get(str);
        }
        return null;
    }

    public final /* synthetic */ void zza(SharedPreferences sharedPreferences, String str) {
        synchronized (this.zzd) {
            this.zze = null;
            zzcl.zza();
        }
        synchronized (this) {
            for (zzcc zzccVar : this.zzf) {
                zzccVar.zza();
            }
        }
    }
}
