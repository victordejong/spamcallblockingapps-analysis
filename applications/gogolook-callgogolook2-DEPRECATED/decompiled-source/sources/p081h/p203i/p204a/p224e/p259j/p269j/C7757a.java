package p081h.p203i.p204a.p224e.p259j.p269j;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;
/* renamed from: h.i.a.e.j.j.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/a.class */
public class C7757a {

    /* renamed from: d */
    public static HashMap<String, String> f18150d;

    /* renamed from: i */
    public static Object f18155i;

    /* renamed from: j */
    public static boolean f18156j;

    /* renamed from: a */
    public static final Uri f18147a = Uri.parse("content://com.google.android.gsf.gservices");

    /* renamed from: b */
    public static final Uri f18148b = Uri.parse("content://com.google.android.gsf.gservices/prefix");

    /* renamed from: c */
    public static final AtomicBoolean f18149c = new AtomicBoolean();

    /* renamed from: e */
    public static final HashMap<String, Boolean> f18151e = new HashMap<>();

    /* renamed from: f */
    public static final HashMap<String, Integer> f18152f = new HashMap<>();

    /* renamed from: g */
    public static final HashMap<String, Long> f18153g = new HashMap<>();

    /* renamed from: h */
    public static final HashMap<String, Float> f18154h = new HashMap<>();

    /* renamed from: k */
    public static String[] f18157k = new String[0];

    static {
        Pattern.compile("^(1|true|t|on|yes|y)$", 2);
        Pattern.compile("^(0|false|f|off|no|n)$", 2);
    }

    /* renamed from: a */
    public static String m19581a(ContentResolver contentResolver, String str, String str2) {
        synchronized (C7757a.class) {
            try {
                if (f18150d == null) {
                    f18149c.set(false);
                    f18150d = new HashMap<>();
                    f18155i = new Object();
                    f18156j = false;
                    contentResolver.registerContentObserver(f18147a, true, new C7758a0(null));
                } else if (f18149c.getAndSet(false)) {
                    f18150d.clear();
                    f18151e.clear();
                    f18152f.clear();
                    f18153g.clear();
                    f18154h.clear();
                    f18155i = new Object();
                    f18156j = false;
                }
                Object obj = f18155i;
                if (f18150d.containsKey(str)) {
                    String str3 = f18150d.get(str);
                    if (str3 == null) {
                        str3 = null;
                    }
                    return str3;
                }
                for (String str4 : f18157k) {
                    if (str.startsWith(str4)) {
                        if (!f18156j || f18150d.isEmpty()) {
                            f18150d.putAll(m19580a(contentResolver, f18157k));
                            f18156j = true;
                            if (f18150d.containsKey(str)) {
                                String str5 = f18150d.get(str);
                                if (str5 == null) {
                                    str5 = null;
                                }
                                return str5;
                            }
                        }
                        return null;
                    }
                }
                Cursor query = contentResolver.query(f18147a, null, null, new String[]{str}, null);
                if (query != null) {
                    try {
                        if (!query.moveToFirst()) {
                            m19579a(obj, str, (String) null);
                            if (query == null) {
                                return null;
                            }
                            query.close();
                            return null;
                        }
                        String string = query.getString(1);
                        String str6 = string;
                        if (string != null) {
                            str6 = string;
                            if (string.equals(null)) {
                                str6 = null;
                            }
                        }
                        m19579a(obj, str, str6);
                        if (str6 == null) {
                            str6 = null;
                        }
                        return str6;
                    } finally {
                        if (query != null) {
                            query.close();
                        }
                    }
                } else if (query == null) {
                    return null;
                } else {
                    query.close();
                    return null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static Map<String, String> m19580a(ContentResolver contentResolver, String... strArr) {
        Cursor query = contentResolver.query(f18148b, null, null, strArr, null);
        TreeMap treeMap = new TreeMap();
        if (query == null) {
            return treeMap;
        }
        while (query.moveToNext()) {
            try {
                treeMap.put(query.getString(0), query.getString(1));
            } finally {
                query.close();
            }
        }
        return treeMap;
    }

    /* renamed from: a */
    public static void m19579a(Object obj, String str, String str2) {
        synchronized (C7757a.class) {
            try {
                if (obj == f18155i) {
                    f18150d.put(str, str2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
