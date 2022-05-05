package com.google.android.gms.internal.icing;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.StrictMode;
import androidx.annotation.GuardedBy;
import androidx.collection.ArrayMap;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzbt.class */
public final class zzbt implements zzbg {
    @GuardedBy

    /* renamed from: f */
    private static final Map<String, zzbt> f7926f = new ArrayMap();

    /* renamed from: a */
    private final SharedPreferences f7927a;

    /* renamed from: d */
    private volatile Map<String, ?> f7930d;

    /* renamed from: b */
    private final SharedPreferences.OnSharedPreferenceChangeListener f7928b = new SharedPreferences.OnSharedPreferenceChangeListener(this) { // from class: com.google.android.gms.internal.icing.zzbw

        /* renamed from: a */
        private final zzbt f7936a;

        /* JADX INFO: Access modifiers changed from: package-private */
        {
            this.f7936a = this;
        }

        @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
        public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
            this.f7936a.m14001c(sharedPreferences, str);
        }
    };

    /* renamed from: c */
    private final Object f7929c = new Object();
    @GuardedBy

    /* renamed from: e */
    private final List<zzbd> f7931e = new ArrayList();

    private zzbt(SharedPreferences sharedPreferences) {
        this.f7927a = sharedPreferences;
        sharedPreferences.registerOnSharedPreferenceChangeListener(this.f7928b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static zzbt m14002b(Context context, String str) {
        zzbt zzbtVar;
        if (!((!zzaz.m14033d() || str.startsWith("direct_boot:")) ? true : zzaz.m14036a(context))) {
            return null;
        }
        synchronized (zzbt.class) {
            try {
                zzbt zzbtVar2 = f7926f.get(str);
                zzbtVar = zzbtVar2;
                if (zzbtVar2 == null) {
                    zzbtVar = new zzbt(m14000d(context, str));
                    f7926f.put(str, zzbtVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzbtVar;
    }

    /* renamed from: d */
    private static SharedPreferences m14000d(Context context, String str) {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            if (!str.startsWith("direct_boot:")) {
                return context.getSharedPreferences(str, 0);
            }
            Context context2 = context;
            if (zzaz.m14033d()) {
                context2 = context.createDeviceProtectedStorageContext();
            }
            return context2.getSharedPreferences(str.substring(12), 0);
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public static void m13999e() {
        synchronized (zzbt.class) {
            try {
                for (zzbt zzbtVar : f7926f.values()) {
                    zzbtVar.f7927a.unregisterOnSharedPreferenceChangeListener(zzbtVar.f7928b);
                }
                f7926f.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.icing.zzbg
    /* renamed from: a */
    public final Object mo14003a(String str) {
        Map<String, ?> map = this.f7930d;
        Map<String, ?> map2 = map;
        if (map == null) {
            synchronized (this.f7929c) {
                Map<String, ?> map3 = this.f7930d;
                map2 = map3;
                if (map3 == null) {
                    StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
                    map2 = this.f7927a.getAll();
                    this.f7930d = map2;
                    StrictMode.setThreadPolicy(allowThreadDiskReads);
                }
            }
        }
        if (map2 != null) {
            return map2.get(str);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final /* synthetic */ void m14001c(SharedPreferences sharedPreferences, String str) {
        synchronized (this.f7929c) {
            this.f7930d = null;
            zzbq.m14007g();
        }
        synchronized (this) {
            for (zzbd zzbdVar : this.f7931e) {
                zzbdVar.m14026d();
            }
        }
    }
}
