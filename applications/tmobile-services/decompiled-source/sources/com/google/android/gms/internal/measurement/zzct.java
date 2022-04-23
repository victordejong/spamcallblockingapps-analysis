package com.google.android.gms.internal.measurement;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.StrictMode;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.collection.ArrayMap;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzct.class */
public final class zzct implements zzcx {
    @GuardedBy

    /* renamed from: g */
    private static final Map<Uri, zzct> f8326g = new ArrayMap();

    /* renamed from: h */
    private static final String[] f8327h = {"key", FirebaseAnalytics.Param.VALUE};

    /* renamed from: a */
    private final ContentResolver f8328a;

    /* renamed from: b */
    private final Uri f8329b;

    /* renamed from: e */
    private volatile Map<String, String> f8332e;

    /* renamed from: c */
    private final ContentObserver f8330c = new zzcv(this, null);

    /* renamed from: d */
    private final Object f8331d = new Object();
    @GuardedBy

    /* renamed from: f */
    private final List<zzcu> f8333f = new ArrayList();

    private zzct(ContentResolver contentResolver, Uri uri) {
        zzeb.m12741b(contentResolver);
        zzeb.m12741b(uri);
        this.f8328a = contentResolver;
        this.f8329b = uri;
        contentResolver.registerContentObserver(uri, false, this.f8330c);
    }

    /* renamed from: a */
    public static zzct m12795a(ContentResolver contentResolver, Uri uri) {
        zzct zzctVar;
        synchronized (zzct.class) {
            try {
                zzct zzctVar2 = f8326g.get(uri);
                zzctVar = zzctVar2;
                if (zzctVar2 == null) {
                    try {
                        zzctVar = new zzct(contentResolver, uri);
                        try {
                            f8326g.put(uri, zzctVar);
                        } catch (SecurityException e) {
                        }
                    } catch (SecurityException e2) {
                        zzctVar = zzctVar2;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzctVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static void m12792d() {
        synchronized (zzct.class) {
            try {
                for (zzct zzctVar : f8326g.values()) {
                    zzctVar.f8328a.unregisterContentObserver(zzctVar.f8330c);
                }
                f8326g.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: f */
    private final Map<String, String> m12790f() {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            try {
                Map<String, String> map = (Map) zzcw.m12789a(new zzcz(this) { // from class: com.google.android.gms.internal.measurement.zzcs

                    /* renamed from: a */
                    private final zzct f8325a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f8325a = this;
                    }

                    @Override // com.google.android.gms.internal.measurement.zzcz
                    public final Object zza() {
                        return this.f8325a.m12791e();
                    }
                });
                StrictMode.setThreadPolicy(allowThreadDiskReads);
                return map;
            } catch (SQLiteException | IllegalStateException | SecurityException e) {
                Log.e("ConfigurationContentLoader", "PhenotypeFlag unable to load ContentProvider, using default values");
                StrictMode.setThreadPolicy(allowThreadDiskReads);
                return null;
            }
        } catch (Throwable th) {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            throw th;
        }
    }

    /* renamed from: b */
    public final Map<String, String> m12794b() {
        Map<String, String> map = this.f8332e;
        Map<String, String> map2 = map;
        if (map == null) {
            synchronized (this.f8331d) {
                Map<String, String> map3 = this.f8332e;
                map2 = map3;
                if (map3 == null) {
                    map2 = m12790f();
                    this.f8332e = map2;
                }
            }
        }
        return map2 != null ? map2 : Collections.emptyMap();
    }

    /* renamed from: c */
    public final void m12793c() {
        synchronized (this.f8331d) {
            this.f8332e = null;
            zzdh.m12772g();
        }
        synchronized (this) {
            for (zzcu zzcuVar : this.f8333f) {
                zzcuVar.zza();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public final /* synthetic */ Map m12791e() {
        Cursor query = this.f8328a.query(this.f8329b, f8327h, null, null, null);
        if (query == null) {
            return Collections.emptyMap();
        }
        try {
            int count = query.getCount();
            if (count == 0) {
                return Collections.emptyMap();
            }
            Map arrayMap = count <= 256 ? new ArrayMap(count) : new HashMap(count, 1.0f);
            while (query.moveToNext()) {
                arrayMap.put(query.getString(0), query.getString(1));
            }
            return arrayMap;
        } finally {
            query.close();
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcx
    public final /* synthetic */ Object zza(String str) {
        return m12794b().get(str);
    }
}
