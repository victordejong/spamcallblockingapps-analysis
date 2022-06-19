package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.StrictMode;
import androidx.p013b.C0373a;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.measurement.bs */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/bs.class */
public final class C3830bs implements AbstractC3810az {

    /* renamed from: a */
    private static final Map<String, C3830bs> f17908a = new C0373a();

    /* renamed from: b */
    private final SharedPreferences f17909b;

    /* renamed from: e */
    private volatile Map<String, ?> f17912e;

    /* renamed from: c */
    private final SharedPreferences.OnSharedPreferenceChangeListener f17910c = new SharedPreferences.OnSharedPreferenceChangeListener(this) { // from class: com.google.android.gms.internal.measurement.br

        /* renamed from: a */
        private final C3830bs f17907a;

        /* JADX INFO: Access modifiers changed from: package-private */
        {
            this.f17907a = this;
        }

        @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
        public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
            this.f17907a.m5854a(sharedPreferences, str);
        }
    };

    /* renamed from: d */
    private final Object f17911d = new Object();

    /* renamed from: f */
    private final List<AbstractC3812ba> f17913f = new ArrayList();

    private C3830bs(SharedPreferences sharedPreferences) {
        this.f17909b = sharedPreferences;
        this.f17909b.registerOnSharedPreferenceChangeListener(this.f17910c);
    }

    /* renamed from: a */
    public static C3830bs m5855a(Context context, String str) {
        C3830bs c3830bs;
        if (!((!C3807aw.m5895a() || str.startsWith("direct_boot:")) ? true : C3807aw.m5894a(context))) {
            c3830bs = null;
        } else {
            synchronized (C3830bs.class) {
                try {
                    C3830bs c3830bs2 = f17908a.get(str);
                    c3830bs = c3830bs2;
                    if (c3830bs2 == null) {
                        c3830bs = new C3830bs(m5852b(context, str));
                        f17908a.put(str, c3830bs);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return c3830bs;
    }

    /* renamed from: a */
    public static void m5856a() {
        synchronized (C3830bs.class) {
            try {
                for (C3830bs c3830bs : f17908a.values()) {
                    c3830bs.f17909b.unregisterOnSharedPreferenceChangeListener(c3830bs.f17910c);
                }
                f17908a.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    private static SharedPreferences m5852b(Context context, String str) {
        SharedPreferences sharedPreferences;
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            if (str.startsWith("direct_boot:")) {
                Context context2 = context;
                if (C3807aw.m5895a()) {
                    context2 = context.createDeviceProtectedStorageContext();
                }
                sharedPreferences = context2.getSharedPreferences(str.substring(12), 0);
            } else {
                sharedPreferences = context.getSharedPreferences(str, 0);
                StrictMode.setThreadPolicy(allowThreadDiskReads);
            }
            return sharedPreferences;
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3810az
    /* renamed from: a */
    public final Object mo5853a(String str) {
        Map<String, ?> map = this.f17912e;
        Map<String, ?> map2 = map;
        if (map == null) {
            synchronized (this.f17911d) {
                Map<String, ?> map3 = this.f17912e;
                map2 = map3;
                if (map3 == null) {
                    StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
                    map2 = this.f17909b.getAll();
                    this.f17912e = map2;
                    StrictMode.setThreadPolicy(allowThreadDiskReads);
                }
            }
        }
        return map2 != null ? map2.get(str) : null;
    }

    /* renamed from: a */
    public final /* synthetic */ void m5854a(SharedPreferences sharedPreferences, String str) {
        synchronized (this.f17911d) {
            this.f17912e = null;
            AbstractC3821bj.m5878a();
        }
        synchronized (this) {
            for (AbstractC3812ba abstractC3812ba : this.f17913f) {
                abstractC3812ba.m5891a();
            }
        }
    }
}
