package com.google.android.gms.internal.measurement;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;
/* renamed from: com.google.android.gms.internal.measurement.t2 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/t2.class */
public final class C2179t2 {

    /* renamed from: f */
    static HashMap<String, String> f9835f;

    /* renamed from: k */
    private static Object f9840k;

    /* renamed from: l */
    private static boolean f9841l;

    /* renamed from: a */
    public static final Uri f9830a = Uri.parse("content://com.google.android.gsf.gservices");

    /* renamed from: b */
    public static final Uri f9831b = Uri.parse("content://com.google.android.gsf.gservices/prefix");

    /* renamed from: c */
    public static final Pattern f9832c = Pattern.compile("^(1|true|t|on|yes|y)$", 2);

    /* renamed from: d */
    public static final Pattern f9833d = Pattern.compile("^(0|false|f|off|no|n)$", 2);

    /* renamed from: e */
    private static final AtomicBoolean f9834e = new AtomicBoolean();

    /* renamed from: g */
    static final HashMap<String, Boolean> f9836g = new HashMap<>();

    /* renamed from: h */
    static final HashMap<String, Integer> f9837h = new HashMap<>();

    /* renamed from: i */
    static final HashMap<String, Long> f9838i = new HashMap<>();

    /* renamed from: j */
    static final HashMap<String, Float> f9839j = new HashMap<>();

    /* renamed from: m */
    static final String[] f9842m = new String[0];

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public static String m4181a(ContentResolver contentResolver, String str, String str2) {
        synchronized (C2179t2.class) {
            try {
                String str3 = null;
                String str4 = null;
                if (f9835f == null) {
                    f9834e.set(false);
                    f9835f = new HashMap<>();
                    f9840k = new Object();
                    f9841l = false;
                    contentResolver.registerContentObserver(f9830a, true, new C2171s2(null));
                } else if (f9834e.getAndSet(false)) {
                    f9835f.clear();
                    f9836g.clear();
                    f9837h.clear();
                    f9838i.clear();
                    f9839j.clear();
                    f9840k = new Object();
                    f9841l = false;
                }
                Object obj = f9840k;
                if (f9835f.containsKey(str)) {
                    str4 = f9835f.get(str);
                    if (str4 == null) {
                    }
                    return str4;
                }
                int length = f9842m.length;
                Cursor query = contentResolver.query(f9830a, null, null, new String[]{str}, null);
                if (query == null) {
                    return null;
                }
                try {
                    if (!query.moveToFirst()) {
                        m4179c(obj, str, null);
                        query.close();
                        return null;
                    }
                    String string = query.getString(1);
                    str3 = string;
                    if (string != null) {
                        str3 = string;
                        if (string.equals(null)) {
                            str3 = null;
                        }
                    }
                    m4179c(obj, str, str3);
                    if (str3 == null) {
                    }
                    query.close();
                    return str3;
                } catch (Throwable th) {
                    query.close();
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* renamed from: c */
    private static void m4179c(Object obj, String str, String str2) {
        synchronized (C2179t2.class) {
            try {
                if (obj == f9840k) {
                    f9835f.put(str, str2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
