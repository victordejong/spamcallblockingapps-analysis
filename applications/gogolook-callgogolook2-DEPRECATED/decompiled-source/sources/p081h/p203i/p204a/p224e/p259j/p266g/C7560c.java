package p081h.p203i.p204a.p224e.p259j.p266g;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.core.app.Person;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import p459j.p460a.p541n0.C13032a;
/* renamed from: h.i.a.e.j.g.c */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/c.class */
public final class C7560c {

    /* renamed from: h */
    public static final ConcurrentHashMap<Uri, C7560c> f17781h = new ConcurrentHashMap<>();

    /* renamed from: i */
    public static final String[] f17782i = {Person.KEY_KEY, C13032a.f29462d};

    /* renamed from: a */
    public final ContentResolver f17783a;

    /* renamed from: b */
    public final Uri f17784b;

    /* renamed from: e */
    public volatile Map<String, String> f17787e;

    /* renamed from: d */
    public final Object f17786d = new Object();

    /* renamed from: f */
    public final Object f17788f = new Object();
    @GuardedBy("listenersLock")

    /* renamed from: g */
    public final List<AbstractC7574e> f17789g = new ArrayList();

    /* renamed from: c */
    public final ContentObserver f17785c = new C7567d(this, null);

    public C7560c(ContentResolver contentResolver, Uri uri) {
        this.f17783a = contentResolver;
        this.f17784b = uri;
    }

    /* renamed from: a */
    public static C7560c m20299a(ContentResolver contentResolver, Uri uri) {
        C7560c cVar = f17781h.get(uri);
        C7560c cVar2 = cVar;
        if (cVar == null) {
            cVar2 = new C7560c(contentResolver, uri);
            C7560c putIfAbsent = f17781h.putIfAbsent(uri, cVar2);
            if (putIfAbsent == null) {
                cVar2.f17783a.registerContentObserver(cVar2.f17784b, false, cVar2.f17785c);
            } else {
                cVar2 = putIfAbsent;
            }
        }
        return cVar2;
    }

    /* renamed from: a */
    public final Map<String, String> m20300a() {
        Map<String, String> c = AbstractC7581f.m20185a("gms:phenotype:phenotype_flag:debug_disable_caching", false) ? m20296c() : this.f17787e;
        Map<String, String> map = c;
        if (c == null) {
            synchronized (this.f17786d) {
                Map<String, String> map2 = this.f17787e;
                map = map2;
                if (map2 == null) {
                    map = m20296c();
                    this.f17787e = map;
                }
            }
        }
        return map != null ? map : Collections.emptyMap();
    }

    /* renamed from: b */
    public final void m20297b() {
        synchronized (this.f17786d) {
            this.f17787e = null;
        }
    }

    /* renamed from: c */
    public final Map<String, String> m20296c() {
        try {
            HashMap hashMap = new HashMap();
            Cursor query = this.f17783a.query(this.f17784b, f17782i, null, null, null);
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
    public final void m20295d() {
        synchronized (this.f17788f) {
            for (AbstractC7574e eVar : this.f17789g) {
                eVar.m20216D();
            }
        }
    }
}
