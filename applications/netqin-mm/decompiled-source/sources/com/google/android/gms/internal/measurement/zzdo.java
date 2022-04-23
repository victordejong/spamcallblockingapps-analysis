package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.StrictMode;
import com.google.android.gms.internal.measurement.zzdo;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import p012b.p035f.C0780a;
import p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4597u0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzdo.class */
public final class zzdo implements AbstractC4597u0 {

    /* renamed from: f */
    public static final Map<String, zzdo> f29469f = new C0780a();

    /* renamed from: a */
    public final SharedPreferences f29470a;

    /* renamed from: d */
    public volatile Map<String, ?> f29473d;

    /* renamed from: b */
    public final SharedPreferences.OnSharedPreferenceChangeListener f29471b = new SharedPreferences.OnSharedPreferenceChangeListener(this) { // from class: c.d.b.d.g.f.f1

        /* renamed from: a */
        public final zzdo f16742a;

        {
            this.f16742a = this;
        }

        @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
        public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
            this.f16742a.m9824a(sharedPreferences, str);
        }
    };

    /* renamed from: c */
    public final Object f29472c = new Object();

    /* renamed from: e */
    public final List<zzcu> f29474e = new ArrayList();

    public zzdo(SharedPreferences sharedPreferences) {
        this.f29470a = sharedPreferences;
        sharedPreferences.registerOnSharedPreferenceChangeListener(this.f29471b);
    }

    /* renamed from: a */
    public static zzdo m9825a(Context context, String str) {
        zzdo zzdoVar;
        if (zzcr.m9864a()) {
            throw new NullPointerException();
        } else if (1 == 0) {
            return null;
        } else {
            synchronized (zzdo.class) {
                try {
                    zzdo zzdoVar2 = f29469f.get(null);
                    zzdoVar = zzdoVar2;
                    if (zzdoVar2 == null) {
                        zzdoVar = new zzdo(m9823b(context, null));
                        f29469f.put(null, zzdoVar);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return zzdoVar;
        }
    }

    /* renamed from: a */
    public static void m9826a() {
        synchronized (zzdo.class) {
            try {
                for (zzdo zzdoVar : f29469f.values()) {
                    zzdoVar.f29470a.unregisterOnSharedPreferenceChangeListener(zzdoVar.f29471b);
                }
                f29469f.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    public static SharedPreferences m9823b(Context context, String str) {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            if (!str.startsWith("direct_boot:")) {
                return context.getSharedPreferences(str, 0);
            }
            Context context2 = context;
            if (zzcr.m9864a()) {
                context2 = context.createDeviceProtectedStorageContext();
            }
            return context2.getSharedPreferences(str.substring(12), 0);
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }

    /* renamed from: a */
    public final /* synthetic */ void m9824a(SharedPreferences sharedPreferences, String str) {
        synchronized (this.f29472c) {
            try {
                this.f29473d = null;
                zzdh.m9832c();
            } catch (Throwable th) {
                throw th;
            }
        }
        synchronized (this) {
            for (zzcu zzcuVar : this.f29474e) {
                zzcuVar.zza();
            }
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4597u0
    /* renamed from: c */
    public final Object mo9822c(String str) {
        Map<String, ?> map = this.f29473d;
        Map<String, ?> map2 = map;
        if (map == null) {
            synchronized (this.f29472c) {
                Map<String, ?> map3 = this.f29473d;
                map2 = map3;
                if (map3 == null) {
                    StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
                    map2 = this.f29470a.getAll();
                    this.f29473d = map2;
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
