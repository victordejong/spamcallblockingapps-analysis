package com.google.android.gms.internal.measurement;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.StrictMode;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import p020b.p036e.C1489a;
/* renamed from: com.google.android.gms.internal.measurement.d3 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/d3.class */
public final class C7334d3 implements AbstractC7390h3 {

    /* renamed from: a */
    private static final Map<Uri, C7334d3> f34388a = new C1489a();

    /* renamed from: b */
    public static final String[] f34389b = {"key", "value"};

    /* renamed from: c */
    private final ContentResolver f34390c;

    /* renamed from: d */
    private final Uri f34391d;

    /* renamed from: e */
    private final ContentObserver f34392e;

    /* renamed from: g */
    private volatile Map<String, String> f34394g;

    /* renamed from: f */
    private final Object f34393f = new Object();

    /* renamed from: h */
    private final List<AbstractC7348e3> f34395h = new ArrayList();

    private C7334d3(ContentResolver contentResolver, Uri uri) {
        C7320c3 c7320c3 = new C7320c3(this, null);
        this.f34392e = c7320c3;
        Objects.requireNonNull(contentResolver);
        Objects.requireNonNull(uri);
        this.f34390c = contentResolver;
        this.f34391d = uri;
        contentResolver.registerContentObserver(uri, false, c7320c3);
    }

    /* renamed from: a */
    public static C7334d3 m7612a(ContentResolver contentResolver, Uri uri) {
        C7334d3 c7334d3;
        synchronized (C7334d3.class) {
            try {
                Map<Uri, C7334d3> map = f34388a;
                C7334d3 c7334d32 = map.get(uri);
                c7334d3 = c7334d32;
                if (c7334d32 == null) {
                    try {
                        c7334d3 = new C7334d3(contentResolver, uri);
                        try {
                            map.put(uri, c7334d3);
                        } catch (SecurityException e) {
                        }
                    } catch (SecurityException e2) {
                        c7334d3 = c7334d32;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return c7334d3;
    }

    /* renamed from: d */
    public static void m7609d() {
        synchronized (C7334d3.class) {
            try {
                for (C7334d3 c7334d3 : f34388a.values()) {
                    c7334d3.f34390c.unregisterContentObserver(c7334d3.f34392e);
                }
                f34388a.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7390h3
    /* renamed from: B */
    public final /* bridge */ /* synthetic */ Object mo6741B(String str) {
        return m7611b().get(str);
    }

    /* renamed from: b */
    public final Map<String, String> m7611b() {
        Map<String, String> map = this.f34394g;
        Map<String, String> map2 = map;
        if (map == null) {
            synchronized (this.f34393f) {
                Map<String, String> map3 = this.f34394g;
                map2 = map3;
                if (map3 == null) {
                    StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
                    try {
                        map2 = (Map) C7362f3.m7534a(new AbstractC7376g3(this) { // from class: com.google.android.gms.internal.measurement.b3

                            /* renamed from: a */
                            private final C7334d3 f34344a;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f34344a = this;
                            }

                            @Override // com.google.android.gms.internal.measurement.AbstractC7376g3
                            public final Object zza() {
                                return this.f34344a.m7608e();
                            }
                        });
                        StrictMode.setThreadPolicy(allowThreadDiskReads);
                    } catch (SQLiteException | IllegalStateException | SecurityException e) {
                        Log.e("ConfigurationContentLoader", "PhenotypeFlag unable to load ContentProvider, using default values");
                        StrictMode.setThreadPolicy(allowThreadDiskReads);
                        map2 = null;
                    }
                    this.f34394g = map2;
                }
            }
        }
        return map2 != null ? map2 : Collections.emptyMap();
    }

    /* renamed from: c */
    public final void m7610c() {
        synchronized (this.f34393f) {
            this.f34394g = null;
            AbstractC7607x3.m6773c();
        }
        synchronized (this) {
            for (AbstractC7348e3 abstractC7348e3 : this.f34395h) {
                abstractC7348e3.zza();
            }
        }
    }

    /* renamed from: e */
    public final /* synthetic */ Map m7608e() {
        Cursor query = this.f34390c.query(this.f34391d, f34389b, null, null, null);
        if (query == null) {
            return Collections.emptyMap();
        }
        try {
            int count = query.getCount();
            if (count == 0) {
                return Collections.emptyMap();
            }
            Map c1489a = count <= 256 ? new C1489a(count) : new HashMap(count, 1.0f);
            while (query.moveToNext()) {
                c1489a.put(query.getString(0), query.getString(1));
            }
            query.close();
            return c1489a;
        } finally {
            query.close();
        }
    }
}
