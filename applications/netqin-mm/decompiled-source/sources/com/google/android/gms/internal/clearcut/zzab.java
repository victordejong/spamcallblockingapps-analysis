package com.google.android.gms.internal.clearcut;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import p131c.p161d.p170b.p224d.p252g.p255c.C4315a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzab.class */
public final class zzab {

    /* renamed from: h */
    public static final ConcurrentHashMap<Uri, zzab> f29201h = new ConcurrentHashMap<>();

    /* renamed from: i */
    public static final String[] f29202i = {"key", "value"};

    /* renamed from: a */
    public final ContentResolver f29203a;

    /* renamed from: b */
    public final Uri f29204b;

    /* renamed from: e */
    public volatile Map<String, String> f29207e;

    /* renamed from: d */
    public final Object f29206d = new Object();

    /* renamed from: f */
    public final Object f29208f = new Object();

    /* renamed from: g */
    public final List<zzad> f29209g = new ArrayList();

    /* renamed from: c */
    public final ContentObserver f29205c = new C4315a(this, null);

    public zzab(ContentResolver contentResolver, Uri uri) {
        this.f29203a = contentResolver;
        this.f29204b = uri;
    }

    /* renamed from: a */
    public static zzab m10869a(ContentResolver contentResolver, Uri uri) {
        zzab zzabVar = f29201h.get(uri);
        zzab zzabVar2 = zzabVar;
        if (zzabVar == null) {
            zzabVar2 = new zzab(contentResolver, uri);
            zzab putIfAbsent = f29201h.putIfAbsent(uri, zzabVar2);
            if (putIfAbsent == null) {
                zzabVar2.f29203a.registerContentObserver(zzabVar2.f29204b, false, zzabVar2.f29205c);
            } else {
                zzabVar2 = putIfAbsent;
            }
        }
        return zzabVar2;
    }

    /* renamed from: a */
    public final Map<String, String> m10870a() {
        Map<String, String> c = zzae.m10855a("gms:phenotype:phenotype_flag:debug_disable_caching", false) ? m10866c() : this.f29207e;
        Map<String, String> map = c;
        if (c == null) {
            synchronized (this.f29206d) {
                Map<String, String> map2 = this.f29207e;
                map = map2;
                if (map2 == null) {
                    map = m10866c();
                    this.f29207e = map;
                }
            }
        }
        return map != null ? map : Collections.emptyMap();
    }

    /* renamed from: b */
    public final void m10867b() {
        synchronized (this.f29206d) {
            this.f29207e = null;
        }
    }

    /* renamed from: c */
    public final Map<String, String> m10866c() {
        try {
            HashMap hashMap = new HashMap();
            Cursor query = this.f29203a.query(this.f29204b, f29202i, null, null, null);
            if (query != null) {
                while (query.moveToNext()) {
                    hashMap.put(query.getString(0), query.getString(1));
                }
                query.close();
            }
            return hashMap;
        } catch (SQLiteException | SecurityException e) {
            Log.e("ConfigurationContentLoader", "PhenotypeFlag unable to load ContentProvider, using default values");
            return null;
        }
    }

    /* renamed from: d */
    public final void m10865d() {
        synchronized (this.f29208f) {
            try {
                for (zzad zzadVar : this.f29209g) {
                    zzadVar.m10864E();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
