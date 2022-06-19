package com.google.android.gms.internal.measurement;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.StrictMode;
import android.util.Log;
import androidx.p023b.C0428a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
/* renamed from: com.google.android.gms.internal.measurement.dj */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/dj.class */
public final class C13443dj implements AbstractC13446dm {

    /* renamed from: b */
    volatile Map<String, String> f50643b;

    /* renamed from: f */
    private final ContentResolver f50645f;

    /* renamed from: g */
    private final Uri f50646g;

    /* renamed from: h */
    private final ContentObserver f50647h;

    /* renamed from: e */
    private static final Map<Uri, C13443dj> f50641e = new C0428a();

    /* renamed from: d */
    public static final String[] f50640d = {"key", "value"};

    /* renamed from: a */
    final Object f50642a = new Object();

    /* renamed from: c */
    final List<Object> f50644c = new ArrayList();

    private C13443dj(ContentResolver contentResolver, Uri uri) {
        C13442di c13442di = new C13442di(this, null);
        this.f50647h = c13442di;
        Objects.requireNonNull(contentResolver);
        Objects.requireNonNull(uri);
        this.f50645f = contentResolver;
        this.f50646g = uri;
        contentResolver.registerContentObserver(uri, false, c13442di);
    }

    /* renamed from: a */
    public static C13443dj m12920a(ContentResolver contentResolver, Uri uri) {
        C13443dj c13443dj;
        synchronized (C13443dj.class) {
            try {
                Map<Uri, C13443dj> map = f50641e;
                C13443dj c13443dj2 = map.get(uri);
                c13443dj = c13443dj2;
                if (c13443dj2 == null) {
                    try {
                        c13443dj = new C13443dj(contentResolver, uri);
                        try {
                            map.put(uri, c13443dj);
                        } catch (SecurityException e) {
                        }
                    } catch (SecurityException e2) {
                        c13443dj = c13443dj2;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return c13443dj;
    }

    /* renamed from: b */
    public static void m12919b() {
        synchronized (C13443dj.class) {
            try {
                for (C13443dj c13443dj : f50641e.values()) {
                    c13443dj.f50645f.unregisterContentObserver(c13443dj.f50647h);
                }
                f50641e.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13446dm
    /* renamed from: a */
    public final /* synthetic */ Object mo12899a(String str) {
        return m12921a().get(str);
    }

    /* renamed from: a */
    public final Map<String, String> m12921a() {
        Map<String, String> map = this.f50643b;
        Map<String, String> map2 = map;
        if (map == null) {
            synchronized (this.f50642a) {
                Map<String, String> map3 = this.f50643b;
                map2 = map3;
                if (map3 == null) {
                    StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
                    try {
                        map2 = (Map) C13444dk.m12917a(new AbstractC13445dl(this) { // from class: com.google.android.gms.internal.measurement.dh

                            /* renamed from: a */
                            private final C13443dj f50638a;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f50638a = this;
                            }

                            @Override // com.google.android.gms.internal.measurement.AbstractC13445dl
                            /* renamed from: a */
                            public final Object mo12916a() {
                                return this.f50638a.m12918c();
                            }
                        });
                        StrictMode.setThreadPolicy(allowThreadDiskReads);
                    } catch (SQLiteException | IllegalStateException | SecurityException e) {
                        Log.e("ConfigurationContentLoader", "PhenotypeFlag unable to load ContentProvider, using default values");
                        StrictMode.setThreadPolicy(allowThreadDiskReads);
                        map2 = null;
                    }
                    this.f50643b = map2;
                }
            }
        }
        return map2 != null ? map2 : Collections.emptyMap();
    }

    /* renamed from: c */
    public final /* synthetic */ Map m12918c() {
        Cursor query = this.f50645f.query(this.f50646g, f50640d, null, null, null);
        if (query == null) {
            return Collections.emptyMap();
        }
        try {
            int count = query.getCount();
            if (count == 0) {
                return Collections.emptyMap();
            }
            Map c0428a = count <= 256 ? new C0428a(count) : new HashMap(count, 1.0f);
            while (query.moveToNext()) {
                c0428a.put(query.getString(0), query.getString(1));
            }
            query.close();
            return c0428a;
        } finally {
            query.close();
        }
    }
}
