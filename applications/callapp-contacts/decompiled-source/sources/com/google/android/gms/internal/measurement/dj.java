package com.google.android.gms.internal.measurement;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.StrictMode;
import android.util.Log;
import androidx.b.a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/dj.class */
public final class dj implements dm {

    /* renamed from: b  reason: collision with root package name */
    volatile Map<String, String> f28961b;
    private final ContentResolver f;
    private final Uri g;
    private final ContentObserver h;
    private static final Map<Uri, dj> e = new a();

    /* renamed from: d  reason: collision with root package name */
    public static final String[] f28959d = {"key", "value"};

    /* renamed from: a  reason: collision with root package name */
    final Object f28960a = new Object();

    /* renamed from: c  reason: collision with root package name */
    final List<Object> f28962c = new ArrayList();

    private dj(ContentResolver contentResolver, Uri uri) {
        di diVar = new di(this, null);
        this.h = diVar;
        Objects.requireNonNull(contentResolver);
        Objects.requireNonNull(uri);
        this.f = contentResolver;
        this.g = uri;
        contentResolver.registerContentObserver(uri, false, diVar);
    }

    public static dj a(ContentResolver contentResolver, Uri uri) {
        dj djVar;
        synchronized (dj.class) {
            try {
                Map<Uri, dj> map = e;
                dj djVar2 = map.get(uri);
                djVar = djVar2;
                if (djVar2 == null) {
                    try {
                        djVar = new dj(contentResolver, uri);
                        try {
                            map.put(uri, djVar);
                        } catch (SecurityException e2) {
                        }
                    } catch (SecurityException e3) {
                        djVar = djVar2;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return djVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b() {
        synchronized (dj.class) {
            try {
                for (dj djVar : e.values()) {
                    djVar.f.unregisterContentObserver(djVar.h);
                }
                e.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.dm
    public final /* synthetic */ Object a(String str) {
        return a().get(str);
    }

    public final Map<String, String> a() {
        Map<String, String> map = this.f28961b;
        Map<String, String> map2 = map;
        if (map == null) {
            synchronized (this.f28960a) {
                Map<String, String> map3 = this.f28961b;
                map2 = map3;
                if (map3 == null) {
                    StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
                    try {
                        map2 = (Map) dk.a(new dl(this) { // from class: com.google.android.gms.internal.measurement.dh

                            /* renamed from: a  reason: collision with root package name */
                            private final dj f28957a;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f28957a = this;
                            }

                            @Override // com.google.android.gms.internal.measurement.dl
                            public final Object a() {
                                return this.f28957a.c();
                            }
                        });
                        StrictMode.setThreadPolicy(allowThreadDiskReads);
                    } catch (SQLiteException | IllegalStateException | SecurityException e2) {
                        Log.e("ConfigurationContentLoader", "PhenotypeFlag unable to load ContentProvider, using default values");
                        StrictMode.setThreadPolicy(allowThreadDiskReads);
                        map2 = null;
                    }
                    this.f28961b = map2;
                }
            }
        }
        return map2 != null ? map2 : Collections.emptyMap();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Map c() {
        Cursor query = this.f.query(this.g, f28959d, null, null, null);
        if (query == null) {
            return Collections.emptyMap();
        }
        try {
            int count = query.getCount();
            if (count == 0) {
                return Collections.emptyMap();
            }
            Map aVar = count <= 256 ? new a(count) : new HashMap(count, 1.0f);
            while (query.moveToNext()) {
                aVar.put(query.getString(0), query.getString(1));
            }
            return aVar;
        } finally {
            query.close();
        }
    }
}
