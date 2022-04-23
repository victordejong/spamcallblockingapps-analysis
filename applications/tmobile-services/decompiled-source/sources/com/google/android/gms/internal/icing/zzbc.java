package com.google.android.gms.internal.icing;

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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzbc.class */
public final class zzbc implements zzbg {
    @GuardedBy

    /* renamed from: g */
    private static final Map<Uri, zzbc> f7898g = new ArrayMap();

    /* renamed from: h */
    private static final String[] f7899h = {"key", FirebaseAnalytics.Param.VALUE};

    /* renamed from: a */
    private final ContentResolver f7900a;

    /* renamed from: b */
    private final Uri f7901b;

    /* renamed from: e */
    private volatile Map<String, String> f7904e;

    /* renamed from: c */
    private final ContentObserver f7902c = new zzbe(this, null);

    /* renamed from: d */
    private final Object f7903d = new Object();
    @GuardedBy

    /* renamed from: f */
    private final List<zzbd> f7905f = new ArrayList();

    private zzbc(ContentResolver contentResolver, Uri uri) {
        this.f7900a = contentResolver;
        this.f7901b = uri;
        contentResolver.registerContentObserver(uri, false, this.f7902c);
    }

    /* renamed from: b */
    public static zzbc m14032b(ContentResolver contentResolver, Uri uri) {
        zzbc zzbcVar;
        synchronized (zzbc.class) {
            try {
                zzbc zzbcVar2 = f7898g.get(uri);
                zzbcVar = zzbcVar2;
                if (zzbcVar2 == null) {
                    try {
                        zzbcVar = new zzbc(contentResolver, uri);
                        try {
                            f7898g.put(uri, zzbcVar);
                        } catch (SecurityException e) {
                        }
                    } catch (SecurityException e2) {
                        zzbcVar = zzbcVar2;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzbcVar;
    }

    /* renamed from: c */
    private final Map<String, String> m14031c() {
        Map<String, String> map = this.f7904e;
        Map<String, String> map2 = map;
        if (map == null) {
            synchronized (this.f7903d) {
                Map<String, String> map3 = this.f7904e;
                map2 = map3;
                if (map3 == null) {
                    map2 = m14029e();
                    this.f7904e = map2;
                }
            }
        }
        return map2 != null ? map2 : Collections.emptyMap();
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: e */
    private final Map<String, String> m14029e() {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            try {
                Map<String, String> map = (Map) zzbf.m14025a(new zzbi(this) { // from class: com.google.android.gms.internal.icing.zzbb

                    /* renamed from: a */
                    private final zzbc f7897a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f7897a = this;
                    }

                    @Override // com.google.android.gms.internal.icing.zzbi
                    /* renamed from: a */
                    public final Object mo14020a() {
                        return this.f7897a.m14027g();
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public static void m14028f() {
        synchronized (zzbc.class) {
            try {
                for (zzbc zzbcVar : f7898g.values()) {
                    zzbcVar.f7900a.unregisterContentObserver(zzbcVar.f7902c);
                }
                f7898g.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.icing.zzbg
    /* renamed from: a */
    public final /* synthetic */ Object mo14003a(String str) {
        return m14031c().get(str);
    }

    /* renamed from: d */
    public final void m14030d() {
        synchronized (this.f7903d) {
            this.f7904e = null;
            zzbq.m14007g();
        }
        synchronized (this) {
            for (zzbd zzbdVar : this.f7905f) {
                zzbdVar.m14026d();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public final /* synthetic */ Map m14027g() {
        Cursor query = this.f7900a.query(this.f7901b, f7899h, null, null, null);
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
}
