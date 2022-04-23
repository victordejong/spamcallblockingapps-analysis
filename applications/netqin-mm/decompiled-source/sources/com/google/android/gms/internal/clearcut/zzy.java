package com.google.android.gms.internal.clearcut;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.util.Log;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;
import p131c.p161d.p170b.p224d.p252g.p255c.C4418t3;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzy.class */
public class zzy {

    /* renamed from: f */
    public static HashMap<String, String> f29346f;

    /* renamed from: k */
    public static Object f29351k;

    /* renamed from: l */
    public static boolean f29352l;

    /* renamed from: a */
    public static final Uri f29341a = Uri.parse("content://com.google.android.gsf.gservices");

    /* renamed from: b */
    public static final Uri f29342b = Uri.parse("content://com.google.android.gsf.gservices/prefix");

    /* renamed from: c */
    public static final Pattern f29343c = Pattern.compile("^(1|true|t|on|yes|y)$", 2);

    /* renamed from: d */
    public static final Pattern f29344d = Pattern.compile("^(0|false|f|off|no|n)$", 2);

    /* renamed from: e */
    public static final AtomicBoolean f29345e = new AtomicBoolean();

    /* renamed from: g */
    public static final HashMap<String, Boolean> f29347g = new HashMap<>();

    /* renamed from: h */
    public static final HashMap<String, Integer> f29348h = new HashMap<>();

    /* renamed from: i */
    public static final HashMap<String, Long> f29349i = new HashMap<>();

    /* renamed from: j */
    public static final HashMap<String, Float> f29350j = new HashMap<>();

    /* renamed from: m */
    public static String[] f29353m = new String[0];

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long m10531a(android.content.ContentResolver r5, java.lang.String r6, long r7) {
        /*
            r0 = r5
            java.lang.Object r0 = m10524b(r0)
            r9 = r0
            java.util.HashMap<java.lang.String, java.lang.Long> r0 = com.google.android.gms.internal.clearcut.zzy.f29349i
            r10 = r0
            r0 = 0
            r7 = r0
            r0 = r10
            r1 = r6
            r2 = 0
            java.lang.Long r2 = java.lang.Long.valueOf(r2)
            java.lang.Object r0 = m10525a(r0, r1, r2)
            java.lang.Long r0 = (java.lang.Long) r0
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L_0x0027
            r0 = r10
            long r0 = r0.longValue()
            return r0
        L_0x0027:
            r0 = r5
            r1 = r6
            r2 = 0
            java.lang.String r0 = m10530a(r0, r1, r2)
            r5 = r0
            r0 = r5
            if (r0 != 0) goto L_0x0038
            r0 = r10
            r5 = r0
            goto L_0x0047
        L_0x0038:
            r0 = r5
            long r0 = java.lang.Long.parseLong(r0)     // Catch: NumberFormatException -> 0x0053
            r11 = r0
            r0 = r11
            java.lang.Long r0 = java.lang.Long.valueOf(r0)     // Catch: NumberFormatException -> 0x0053
            r5 = r0
            r0 = r11
            r7 = r0
        L_0x0047:
            r0 = r9
            java.util.HashMap<java.lang.String, java.lang.Long> r1 = com.google.android.gms.internal.clearcut.zzy.f29349i
            r2 = r6
            r3 = r5
            m10526a(r0, r1, r2, r3)
            r0 = r7
            return r0
        L_0x0053:
            r5 = move-exception
            r0 = r10
            r5 = r0
            goto L_0x0047
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.zzy.m10531a(android.content.ContentResolver, java.lang.String, long):long");
    }

    /* renamed from: a */
    public static <T> T m10525a(HashMap<String, T> hashMap, String str, T t) {
        synchronized (zzy.class) {
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
    public static String m10530a(ContentResolver contentResolver, String str, String str2) {
        synchronized (zzy.class) {
            try {
                m10532a(contentResolver);
                Object obj = f29351k;
                boolean containsKey = f29346f.containsKey(str);
                String str3 = null;
                String str4 = null;
                String str5 = null;
                if (containsKey) {
                    String str6 = f29346f.get(str);
                    if (str6 != null) {
                        str5 = str6;
                    }
                    return str5;
                }
                for (String str7 : f29353m) {
                    if (str.startsWith(str7)) {
                        if (!f29352l || f29346f.isEmpty()) {
                            f29346f.putAll(m10528a(contentResolver, f29353m));
                            f29352l = true;
                            if (f29346f.containsKey(str)) {
                                String str8 = f29346f.get(str);
                                if (str8 != null) {
                                    str3 = str8;
                                }
                                return str3;
                            }
                        }
                        return null;
                    }
                }
                Cursor query = contentResolver.query(f29341a, null, null, new String[]{str}, null);
                if (query != null) {
                    try {
                        if (query.moveToFirst()) {
                            String string = query.getString(1);
                            String str9 = string;
                            if (string != null) {
                                str9 = string;
                                if (string.equals(null)) {
                                    str9 = null;
                                }
                            }
                            m10527a(obj, str, str9);
                            if (str9 != null) {
                                str4 = str9;
                            }
                            return str4;
                        }
                    } finally {
                        if (query != null) {
                            query.close();
                        }
                    }
                }
                m10527a(obj, str, (String) null);
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
    public static Map<String, String> m10528a(ContentResolver contentResolver, String... strArr) {
        Cursor query = contentResolver.query(f29342b, null, null, strArr, null);
        TreeMap treeMap = new TreeMap();
        if (query == null) {
            return treeMap;
        }
        while (query.moveToNext()) {
            try {
                treeMap.put(query.getString(0), query.getString(1));
            } catch (Throwable th) {
                query.close();
                throw th;
            }
        }
        query.close();
        return treeMap;
    }

    /* renamed from: a */
    public static void m10532a(ContentResolver contentResolver) {
        if (f29346f == null) {
            f29345e.set(false);
            f29346f = new HashMap<>();
            f29351k = new Object();
            f29352l = false;
            contentResolver.registerContentObserver(f29341a, true, new C4418t3(null));
        } else if (f29345e.getAndSet(false)) {
            f29346f.clear();
            f29347g.clear();
            f29348h.clear();
            f29349i.clear();
            f29350j.clear();
            f29351k = new Object();
            f29352l = false;
        }
    }

    /* renamed from: a */
    public static void m10527a(Object obj, String str, String str2) {
        synchronized (zzy.class) {
            try {
                if (obj == f29351k) {
                    f29346f.put(str, str2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static <T> void m10526a(Object obj, HashMap<String, T> hashMap, String str, T t) {
        synchronized (zzy.class) {
            try {
                if (obj == f29351k) {
                    hashMap.put(str, t);
                    f29346f.remove(str);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static boolean m10529a(ContentResolver contentResolver, String str, boolean z) {
        Object b = m10524b(contentResolver);
        Boolean bool = (Boolean) m10525a(f29347g, str, Boolean.valueOf(z));
        if (bool != null) {
            return bool.booleanValue();
        }
        String a = m10530a(contentResolver, str, (String) null);
        Boolean bool2 = bool;
        boolean z2 = z;
        if (a != null) {
            if (a.equals("")) {
                bool2 = bool;
                z2 = z;
            } else if (f29343c.matcher(a).matches()) {
                bool2 = true;
                z2 = true;
            } else if (f29344d.matcher(a).matches()) {
                bool2 = false;
                z2 = false;
            } else {
                Log.w("Gservices", "attempt to read gservices key " + str + " (value \"" + a + "\") as boolean");
                z2 = z;
                bool2 = bool;
            }
        }
        m10526a(b, f29347g, str, bool2);
        return z2;
    }

    /* renamed from: b */
    public static Object m10524b(ContentResolver contentResolver) {
        Object obj;
        synchronized (zzy.class) {
            try {
                m10532a(contentResolver);
                obj = f29351k;
            } catch (Throwable th) {
                throw th;
            }
        }
        return obj;
    }
}
