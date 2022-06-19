package com.google.android.gms.internal.measurement;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.StrictMode;
import android.util.Log;
import androidx.p013b.C0373a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.measurement.av */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/av.class */
public final class C3806av implements AbstractC3810az {

    /* renamed from: a */
    private static final Map<Uri, C3806av> f17857a = new C0373a();

    /* renamed from: h */
    private static final String[] f17858h = {"key", "value"};

    /* renamed from: b */
    private final ContentResolver f17859b;

    /* renamed from: c */
    private final Uri f17860c;

    /* renamed from: f */
    private volatile Map<String, String> f17863f;

    /* renamed from: d */
    private final ContentObserver f17861d = new C3808ax(this, null);

    /* renamed from: e */
    private final Object f17862e = new Object();

    /* renamed from: g */
    private final List<AbstractC3812ba> f17864g = new ArrayList();

    private C3806av(ContentResolver contentResolver, Uri uri) {
        this.f17859b = contentResolver;
        this.f17860c = uri;
        contentResolver.registerContentObserver(uri, false, this.f17861d);
    }

    /* renamed from: a */
    public static C3806av m5900a(ContentResolver contentResolver, Uri uri) {
        C3806av c3806av;
        synchronized (C3806av.class) {
            try {
                C3806av c3806av2 = f17857a.get(uri);
                c3806av = c3806av2;
                if (c3806av2 == null) {
                    try {
                        c3806av = new C3806av(contentResolver, uri);
                        try {
                            f17857a.put(uri, c3806av);
                        } catch (SecurityException e) {
                        }
                    } catch (SecurityException e2) {
                        c3806av = c3806av2;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return c3806av;
    }

    /* renamed from: c */
    public static void m5898c() {
        synchronized (C3806av.class) {
            try {
                for (C3806av c3806av : f17857a.values()) {
                    c3806av.f17859b.unregisterContentObserver(c3806av.f17861d);
                }
                f17857a.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: e */
    private final Map<String, String> m5896e() {
        Map<String, String> map;
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            try {
                map = (Map) C3814bc.m5890a(new AbstractC3813bb(this) { // from class: com.google.android.gms.internal.measurement.ay

                    /* renamed from: a */
                    private final C3806av f17869a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f17869a = this;
                    }

                    @Override // com.google.android.gms.internal.measurement.AbstractC3813bb
                    /* renamed from: a */
                    public final Object mo5889a() {
                        return this.f17869a.m5897d();
                    }
                });
            } finally {
                StrictMode.setThreadPolicy(allowThreadDiskReads);
            }
        } catch (SQLiteException | IllegalStateException | SecurityException e) {
            Log.e("ConfigurationContentLoader", "PhenotypeFlag unable to load ContentProvider, using default values");
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            map = null;
        }
        return map;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3810az
    /* renamed from: a */
    public final /* synthetic */ Object mo5853a(String str) {
        return m5901a().get(str);
    }

    /* renamed from: a */
    public final Map<String, String> m5901a() {
        Map<String, String> map = this.f17863f;
        Map<String, String> map2 = map;
        if (map == null) {
            synchronized (this.f17862e) {
                Map<String, String> map3 = this.f17863f;
                map2 = map3;
                if (map3 == null) {
                    map2 = m5896e();
                    this.f17863f = map2;
                }
            }
        }
        if (map2 == null) {
            map2 = Collections.emptyMap();
        }
        return map2;
    }

    /* renamed from: b */
    public final void m5899b() {
        synchronized (this.f17862e) {
            this.f17863f = null;
            AbstractC3821bj.m5878a();
        }
        synchronized (this) {
            for (AbstractC3812ba abstractC3812ba : this.f17864g) {
                abstractC3812ba.m5891a();
            }
        }
    }

    /* renamed from: d */
    public final /* synthetic */ Map m5897d() {
        Map c0373a;
        Cursor query = this.f17859b.query(this.f17860c, f17858h, null, null, null);
        if (query == null) {
            c0373a = Collections.emptyMap();
        } else {
            try {
                int count = query.getCount();
                if (count == 0) {
                    c0373a = Collections.emptyMap();
                } else {
                    c0373a = count <= 256 ? new C0373a(count) : new HashMap(count, 1.0f);
                    while (query.moveToNext()) {
                        c0373a.put(query.getString(0), query.getString(1));
                    }
                    query.close();
                }
            } finally {
                query.close();
            }
        }
        return c0373a;
    }
}
