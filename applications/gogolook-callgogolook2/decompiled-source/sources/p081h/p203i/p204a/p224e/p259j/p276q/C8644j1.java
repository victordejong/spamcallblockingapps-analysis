package p081h.p203i.p204a.p224e.p259j.p276q;

import android.content.ContentResolver;
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
import p459j.p460a.p541n0.C13032a;
/* renamed from: h.i.a.e.j.q.j1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/j1.class */
public final class C8644j1 {

    /* renamed from: g */
    public static final Object f19782g = new Object();
    @GuardedBy("loadersLock")

    /* renamed from: h */
    public static final Map<Uri, C8644j1> f19783h = new HashMap();

    /* renamed from: i */
    public static final String[] f19784i = {Person.KEY_KEY, C13032a.f29462d};

    /* renamed from: a */
    public final ContentResolver f19785a;

    /* renamed from: b */
    public final Uri f19786b;

    /* renamed from: d */
    public volatile Map<String, String> f19788d;

    /* renamed from: c */
    public final Object f19787c = new Object();

    /* renamed from: e */
    public final Object f19789e = new Object();
    @GuardedBy("listenersLock")

    /* renamed from: f */
    public final List<AbstractC8662l1> f19790f = new ArrayList();

    public C8644j1(ContentResolver contentResolver, Uri uri) {
        this.f19785a = contentResolver;
        this.f19786b = uri;
        this.f19785a.registerContentObserver(uri, false, new C8653k1(this, null));
    }

    /* renamed from: a */
    public static C8644j1 m17449a(ContentResolver contentResolver, Uri uri) {
        C8644j1 j1Var;
        synchronized (f19782g) {
            C8644j1 j1Var2 = f19783h.get(uri);
            j1Var = j1Var2;
            if (j1Var2 == null) {
                j1Var = new C8644j1(contentResolver, uri);
                f19783h.put(uri, j1Var);
            }
        }
        return j1Var;
    }

    /* renamed from: a */
    public final Map<String, String> m17450a() {
        Map<String, String> c = AbstractC8671m1.m17406a("gms:phenotype:phenotype_flag:debug_disable_caching", false) ? m17446c() : this.f19788d;
        Map<String, String> map = c;
        if (c == null) {
            synchronized (this.f19787c) {
                Map<String, String> map2 = this.f19788d;
                map = map2;
                if (map2 == null) {
                    map = m17446c();
                    this.f19788d = map;
                }
            }
        }
        return map != null ? map : Collections.emptyMap();
    }

    /* renamed from: b */
    public final void m17447b() {
        synchronized (this.f19787c) {
            this.f19788d = null;
        }
    }

    /* renamed from: c */
    public final Map<String, String> m17446c() {
        try {
            HashMap hashMap = new HashMap();
            Cursor query = this.f19785a.query(this.f19786b, f19784i, null, null, null);
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
    public final void m17445d() {
        synchronized (this.f19789e) {
            for (AbstractC8662l1 l1Var : this.f19790f) {
                l1Var.m17425a();
            }
        }
    }
}
