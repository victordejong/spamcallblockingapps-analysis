package p081h.p203i.p204a.p224e.p259j.p266g;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;
/* renamed from: h.i.a.e.j.g.y5 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/y5.class */
public class C7733y5 {

    /* renamed from: f */
    public static HashMap<String, String> f18091f;

    /* renamed from: k */
    public static Object f18096k;

    /* renamed from: l */
    public static boolean f18097l;

    /* renamed from: a */
    public static final Uri f18086a = Uri.parse("content://com.google.android.gsf.gservices");

    /* renamed from: b */
    public static final Uri f18087b = Uri.parse("content://com.google.android.gsf.gservices/prefix");

    /* renamed from: c */
    public static final Pattern f18088c = Pattern.compile("^(1|true|t|on|yes|y)$", 2);

    /* renamed from: d */
    public static final Pattern f18089d = Pattern.compile("^(0|false|f|off|no|n)$", 2);

    /* renamed from: e */
    public static final AtomicBoolean f18090e = new AtomicBoolean();

    /* renamed from: g */
    public static final HashMap<String, Boolean> f18092g = new HashMap<>();

    /* renamed from: h */
    public static final HashMap<String, Integer> f18093h = new HashMap<>();

    /* renamed from: i */
    public static final HashMap<String, Long> f18094i = new HashMap<>();

    /* renamed from: j */
    public static final HashMap<String, Float> f18095j = new HashMap<>();

    /* renamed from: m */
    public static String[] f18098m = new String[0];

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v3, types: [long] */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long m19649a(android.content.ContentResolver r5, java.lang.String r6, long r7) {
        /*
            r0 = r5
            java.lang.Object r0 = m19642b(r0)
            r9 = r0
            java.util.HashMap<java.lang.String, java.lang.Long> r0 = p081h.p203i.p204a.p224e.p259j.p266g.C7733y5.f18094i
            r10 = r0
            r0 = 0
            r11 = r0
            r0 = r10
            r1 = r6
            r2 = 0
            java.lang.Long r2 = java.lang.Long.valueOf(r2)
            java.lang.Object r0 = m19643a(r0, r1, r2)
            java.lang.Long r0 = (java.lang.Long) r0
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L_0x0028
            r0 = r10
            long r0 = r0.longValue()
            return r0
        L_0x0028:
            r0 = r5
            r1 = r6
            r2 = 0
            java.lang.String r0 = m19648a(r0, r1, r2)
            r5 = r0
            r0 = r5
            if (r0 != 0) goto L_0x003c
            r0 = r11
            r7 = r0
            r0 = r10
            r5 = r0
            goto L_0x0046
        L_0x003c:
            r0 = r5
            long r0 = java.lang.Long.parseLong(r0)     // Catch: NumberFormatException -> 0x0052
            r7 = r0
            r0 = r7
            java.lang.Long r0 = java.lang.Long.valueOf(r0)     // Catch: NumberFormatException -> 0x0052
            r5 = r0
        L_0x0046:
            r0 = r9
            java.util.HashMap<java.lang.String, java.lang.Long> r1 = p081h.p203i.p204a.p224e.p259j.p266g.C7733y5.f18094i
            r2 = r6
            r3 = r5
            m19644a(r0, r1, r2, r3)
            r0 = r7
            return r0
        L_0x0052:
            r5 = move-exception
            r0 = r11
            r7 = r0
            r0 = r10
            r5 = r0
            goto L_0x0046
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p266g.C7733y5.m19649a(android.content.ContentResolver, java.lang.String, long):long");
    }

    /* renamed from: a */
    public static <T> T m19643a(HashMap<String, T> hashMap, String str, T t) {
        synchronized (C7733y5.class) {
            try {
                if (!hashMap.containsKey(str)) {
                    return null;
                }
                T t2 = hashMap.get(str);
                if (t2 != null) {
                    t = t2;
                }
                return t;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static String m19648a(ContentResolver contentResolver, String str, String str2) {
        synchronized (C7733y5.class) {
            try {
                m19650a(contentResolver);
                Object obj = f18096k;
                if (f18091f.containsKey(str)) {
                    String str3 = f18091f.get(str);
                    if (str3 == null) {
                        str3 = null;
                    }
                    return str3;
                }
                for (String str4 : f18098m) {
                    if (str.startsWith(str4)) {
                        if (!f18097l || f18091f.isEmpty()) {
                            f18091f.putAll(m19646a(contentResolver, f18098m));
                            f18097l = true;
                            if (f18091f.containsKey(str)) {
                                String str5 = f18091f.get(str);
                                if (str5 == null) {
                                    str5 = null;
                                }
                                return str5;
                            }
                        }
                        return null;
                    }
                }
                Cursor query = contentResolver.query(f18086a, null, null, new String[]{str}, null);
                if (query != null) {
                    try {
                        if (query.moveToFirst()) {
                            String string = query.getString(1);
                            String str6 = string;
                            if (string != null) {
                                str6 = string;
                                if (string.equals(null)) {
                                    str6 = null;
                                }
                            }
                            m19645a(obj, str, str6);
                            if (str6 == null) {
                                str6 = null;
                            }
                            return str6;
                        }
                    } finally {
                        if (query != null) {
                            query.close();
                        }
                    }
                }
                m19645a(obj, str, (String) null);
                if (query == null) {
                    return null;
                }
                query.close();
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static Map<String, String> m19646a(ContentResolver contentResolver, String... strArr) {
        Cursor query = contentResolver.query(f18087b, null, null, strArr, null);
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
    public static void m19650a(ContentResolver contentResolver) {
        if (f18091f == null) {
            f18090e.set(false);
            f18091f = new HashMap<>();
            f18096k = new Object();
            f18097l = false;
            contentResolver.registerContentObserver(f18086a, true, new C7740z5(null));
        } else if (f18090e.getAndSet(false)) {
            f18091f.clear();
            f18092g.clear();
            f18093h.clear();
            f18094i.clear();
            f18095j.clear();
            f18096k = new Object();
            f18097l = false;
        }
    }

    /* renamed from: a */
    public static void m19645a(Object obj, String str, String str2) {
        synchronized (C7733y5.class) {
            try {
                if (obj == f18096k) {
                    f18091f.put(str, str2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static <T> void m19644a(Object obj, HashMap<String, T> hashMap, String str, T t) {
        synchronized (C7733y5.class) {
            try {
                if (obj == f18096k) {
                    hashMap.put(str, t);
                    f18091f.remove(str);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static boolean m19647a(ContentResolver contentResolver, String str, boolean z) {
        Object b = m19642b(contentResolver);
        Boolean bool = (Boolean) m19643a(f18092g, str, Boolean.valueOf(z));
        if (bool != null) {
            return bool.booleanValue();
        }
        String a = m19648a(contentResolver, str, (String) null);
        Boolean bool2 = bool;
        boolean z2 = z;
        if (a != null) {
            if (a.equals("")) {
                bool2 = bool;
                z2 = z;
            } else if (f18088c.matcher(a).matches()) {
                bool2 = true;
                z2 = true;
            } else if (f18089d.matcher(a).matches()) {
                bool2 = false;
                z2 = false;
            } else {
                String str2 = "attempt to read gservices key " + str + " (value \"" + a + "\") as boolean";
                z2 = z;
                bool2 = bool;
            }
        }
        m19644a(b, f18092g, str, bool2);
        return z2;
    }

    /* renamed from: b */
    public static Object m19642b(ContentResolver contentResolver) {
        Object obj;
        synchronized (C7733y5.class) {
            try {
                m19650a(contentResolver);
                obj = f18096k;
            } catch (Throwable th) {
                throw th;
            }
        }
        return obj;
    }
}
