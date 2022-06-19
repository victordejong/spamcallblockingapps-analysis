package org.mistergroup.shouldianswer.model;

import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.provider.ContactsContract;
import java.util.HashMap;
import kotlin.C1775o;
import kotlin.p081e.p083b.C1694h;
import kotlin.p088io.C1763a;
import org.mistergroup.shouldianswer.MyApp;
import org.mistergroup.shouldianswer.utils.C3099f;
import org.mistergroup.shouldianswer.utils.C3100g;
import org.mistergroup.shouldianswer.utils.C3104j;
import org.mistergroup.shouldianswer.utils.C3115o;
import org.mistergroup.shouldianswer.utils.C3131u;
import org.mistergroup.shouldianswer.utils.C3133w;
/* renamed from: org.mistergroup.shouldianswer.model.ae */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/ae.class */
public final class C2391ae {

    /* renamed from: b */
    private static boolean f6910b;

    /* renamed from: a */
    public static final C2391ae f6909a = new C2391ae();

    /* renamed from: c */
    private static final HashMap<String, C2385ac> f6911c = new HashMap<>();

    /* renamed from: d */
    private static final ContentObserver f6912d = new C2392a(null);

    /* renamed from: org.mistergroup.shouldianswer.model.ae$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/ae$a.class */
    public static final class C2392a extends ContentObserver {
        C2392a(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z, Uri uri) {
            C1694h.m3117b(uri, "uri");
            super.onChange(z, uri);
            C3104j.m157a(C3104j.f9124a, "PhoneContactsFinder contactsObserver.changed!", (String) null, 2, (Object) null);
            C2391ae c2391ae = C2391ae.f6909a;
            C2391ae.f6911c.clear();
        }
    }

    private C2391ae() {
    }

    /* renamed from: a */
    public static /* synthetic */ C2385ac m1319a(C2391ae c2391ae, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = null;
        }
        return c2391ae.m1321a(str, str2);
    }

    /* renamed from: b */
    private final boolean m1318b() {
        if (!f6910b) {
            C3104j.m157a(C3104j.f9124a, "PhoneContactsFinder.registerObserver", (String) null, 2, (Object) null);
            try {
                if (C3115o.f9175a.m113j()) {
                    MyApp.f5480c.m1801b().registerContentObserver(ContactsContract.Contacts.CONTENT_URI, true, f6912d);
                    f6910b = true;
                } else {
                    C3104j.m152c(C3104j.f9124a, "PhoneContactsFinder.registerObserver - READ CONTACTS permission NOT granted!", null, 2, null);
                }
            } catch (Exception e) {
                C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            }
        }
        return f6910b;
    }

    /* renamed from: a */
    public final C2385ac m1322a(Uri uri) {
        C1694h.m3117b(uri, "contactData");
        C3104j.m157a(C3104j.f9124a, "PhoneContactsFinder.getByUri", (String) null, 2, (Object) null);
        Cursor query = MyApp.f5480c.m1801b().query(uri, null, null, null, null);
        if (query != null) {
            Cursor cursor = query;
            th = null;
            try {
                Cursor cursor2 = cursor;
                if (!cursor2.moveToFirst()) {
                    C1775o c1775o = C1775o.f4450a;
                    return null;
                }
                C2385ac c2385ac = new C2385ac();
                C3100g c3100g = C3100g.f9119a;
                C1694h.m3122a((Object) cursor2, "cursor");
                c2385ac.m1367a(c3100g.m168d(cursor2, "contact_id"));
                c2385ac.m1364a(C3100g.f9119a.m171b(cursor2, "display_name"));
                boolean z = true;
                if (C3100g.f9119a.m169c(cursor2, "has_phone_number") != 1) {
                    z = false;
                }
                c2385ac.m1365a(Boolean.valueOf(z));
                return c2385ac;
            } catch (Throwable th) {
                try {
                    throw th;
                } finally {
                    C1763a.m2995a(cursor, th);
                }
            }
        }
        return null;
    }

    /* renamed from: a */
    public final C2385ac m1321a(String str, String str2) {
        C2385ac c2385ac;
        C1694h.m3117b(str, "number");
        C2385ac c2385ac2 = null;
        try {
        } catch (Exception e) {
            boolean m113j = C3115o.f9175a.m113j();
            boolean m112k = C3115o.f9175a.m112k();
            C3104j.m152c(C3104j.f9124a, "Contact Permissions read=" + String.valueOf(m113j) + " write=" + String.valueOf(m112k), null, 2, null);
            C3104j.f9124a.m160a("Permissions.Contacts.Read", String.valueOf(m113j));
            C3104j.f9124a.m160a("Permissions.Contacts.Write", String.valueOf(m112k));
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            c2385ac = c2385ac2;
        }
        if (C3133w.f9268a.m30a(str)) {
            return null;
        }
        if (!f6910b && !m1318b()) {
            return null;
        }
        if (f6911c.containsKey(str)) {
            return f6911c.get(str);
        }
        C3131u.f9265a.m41a();
        Cursor query = MyApp.f5480c.m1801b().query(Uri.withAppendedPath(ContactsContract.PhoneLookup.CONTENT_FILTER_URI, Uri.encode(str)), new String[]{"_id", "display_name", "photo_id", "starred", "has_phone_number", "number", "normalized_number"}, null, null, null);
        c2385ac = c2385ac2;
        if (query != null) {
            Cursor cursor = query;
            Throwable th = null;
            Cursor cursor2 = cursor;
            c2385ac = c2385ac2;
            if (cursor2.moveToFirst()) {
                c2385ac = new C2385ac();
                C3100g c3100g = C3100g.f9119a;
                C1694h.m3122a((Object) cursor2, "cur");
                c2385ac.m1367a(c3100g.m169c(cursor2, "_id"));
                c2385ac.m1364a(C3100g.f9119a.m171b(cursor2, "display_name"));
                c2385ac.m1359b(C3100g.f9119a.m168d(cursor2, "photo_id"));
                c2385ac.m1361a(C3100g.f9119a.m169c(cursor2, "starred") != 0);
                boolean z = false;
                if (C3100g.f9119a.m169c(cursor2, "has_phone_number") != 0) {
                    z = true;
                }
                c2385ac.m1365a(Boolean.valueOf(z));
                String m171b = C3100g.f9119a.m171b(cursor2, "number");
                if (m171b != null) {
                    c2385ac.m1363a(m171b, C3099f.f9116a.m177a(), true);
                }
            }
            C2385ac c2385ac3 = c2385ac;
            C1775o c1775o = C1775o.f4450a;
            C2385ac c2385ac4 = c2385ac;
            C1763a.m2995a(cursor, th);
        }
        f6911c.put(str, c2385ac);
        return c2385ac;
    }

    /* renamed from: a */
    public final void m1323a() {
        f6911c.clear();
    }
}
