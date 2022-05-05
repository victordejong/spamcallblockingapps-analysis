package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.StrictMode;
import androidx.annotation.GuardedBy;
import androidx.collection.ArrayMap;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzdo.class */
public final class zzdo implements zzcx {
    @GuardedBy

    /* renamed from: f */
    private static final Map<String, zzdo> f8359f = new ArrayMap();

    /* renamed from: a */
    private final SharedPreferences f8360a;

    /* renamed from: d */
    private volatile Map<String, ?> f8363d;

    /* renamed from: b */
    private final SharedPreferences.OnSharedPreferenceChangeListener f8361b = new SharedPreferences.OnSharedPreferenceChangeListener(this) { // from class: com.google.android.gms.internal.measurement.zzdr

        /* renamed from: a */
        private final zzdo f8366a;

        /* JADX INFO: Access modifiers changed from: package-private */
        {
            this.f8366a = this;
        }

        @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
        public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
            this.f8366a.m12753c(sharedPreferences, str);
        }
    };

    /* renamed from: c */
    private final Object f8362c = new Object();
    @GuardedBy

    /* renamed from: e */
    private final List<zzcu> f8364e = new ArrayList();

    private zzdo(SharedPreferences sharedPreferences) {
        this.f8360a = sharedPreferences;
        sharedPreferences.registerOnSharedPreferenceChangeListener(this.f8361b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static zzdo m12755a(Context context, String str) {
        zzdo zzdoVar;
        if (zzcr.m12799a()) {
            throw new NullPointerException();
        } else if (1 == 0) {
            return null;
        } else {
            synchronized (zzdo.class) {
                try {
                    zzdo zzdoVar2 = f8359f.get(null);
                    zzdoVar = zzdoVar2;
                    if (zzdoVar2 == null) {
                        zzdoVar = new zzdo(m12752d(context, null));
                        f8359f.put(null, zzdoVar);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return zzdoVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static void m12754b() {
        synchronized (zzdo.class) {
            try {
                for (zzdo zzdoVar : f8359f.values()) {
                    zzdoVar.f8360a.unregisterOnSharedPreferenceChangeListener(zzdoVar.f8361b);
                }
                f8359f.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: d */
    private static SharedPreferences m12752d(Context context, String str) {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            if (!str.startsWith("direct_boot:")) {
                return context.getSharedPreferences(str, 0);
            }
            Context context2 = context;
            if (zzcr.m12799a()) {
                context2 = context.createDeviceProtectedStorageContext();
            }
            return context2.getSharedPreferences(str.substring(12), 0);
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final /* synthetic */ void m12753c(SharedPreferences sharedPreferences, String str) {
        synchronized (this.f8362c) {
            this.f8363d = null;
            zzdh.m12772g();
        }
        synchronized (this) {
            for (zzcu zzcuVar : this.f8364e) {
                zzcuVar.zza();
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcx
    public final Object zza(String str) {
        Map<String, ?> map = this.f8363d;
        Map<String, ?> map2 = map;
        if (map == null) {
            synchronized (this.f8362c) {
                Map<String, ?> map3 = this.f8363d;
                map2 = map3;
                if (map3 == null) {
                    StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
                    map2 = this.f8360a.getAll();
                    this.f8363d = map2;
                    StrictMode.setThreadPolicy(allowThreadDiskReads);
                }
            }
        }
        if (map2 != null) {
            return map2.get(str);
        }
        return null;
    }
}
