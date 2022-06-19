package com.google.android.gms.internal.measurement;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;
/* renamed from: com.google.android.gms.internal.measurement.y2 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/y2.class */
public final class C7619y2 {

    /* renamed from: f */
    static HashMap<String, String> f34779f;

    /* renamed from: k */
    private static Object f34784k;

    /* renamed from: l */
    private static boolean f34785l;

    /* renamed from: a */
    public static final Uri f34774a = Uri.parse("content://com.google.android.gsf.gservices");

    /* renamed from: b */
    public static final Uri f34775b = Uri.parse("content://com.google.android.gsf.gservices/prefix");

    /* renamed from: c */
    public static final Pattern f34776c = Pattern.compile("^(1|true|t|on|yes|y)$", 2);

    /* renamed from: d */
    public static final Pattern f34777d = Pattern.compile("^(0|false|f|off|no|n)$", 2);

    /* renamed from: e */
    private static final AtomicBoolean f34778e = new AtomicBoolean();

    /* renamed from: g */
    static final HashMap<String, Boolean> f34780g = new HashMap<>();

    /* renamed from: h */
    static final HashMap<String, Integer> f34781h = new HashMap<>();

    /* renamed from: i */
    static final HashMap<String, Long> f34782i = new HashMap<>();

    /* renamed from: j */
    static final HashMap<String, Float> f34783j = new HashMap<>();

    /* renamed from: m */
    static final String[] f34786m = new String[0];

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public static String m6744a(ContentResolver contentResolver, String str, String str2) {
        synchronized (C7619y2.class) {
            try {
                if (f34779f == null) {
                    f34778e.set(false);
                    f34779f = new HashMap<>();
                    f34784k = new Object();
                    f34785l = false;
                    contentResolver.registerContentObserver(f34774a, true, new C7606x2(null));
                } else if (f34778e.getAndSet(false)) {
                    f34779f.clear();
                    f34780g.clear();
                    f34781h.clear();
                    f34782i.clear();
                    f34783j.clear();
                    f34784k = new Object();
                    f34785l = false;
                }
                Object obj = f34784k;
                if (f34779f.containsKey(str)) {
                    String str3 = f34779f.get(str);
                    if (str3 == null) {
                        str3 = null;
                    }
                    return str3;
                }
                int length = f34786m.length;
                Cursor query = contentResolver.query(f34774a, null, null, new String[]{str}, null);
                if (query == null) {
                    return null;
                }
                try {
                    if (!query.moveToFirst()) {
                        m6742c(obj, str, null);
                        query.close();
                        return null;
                    }
                    String string = query.getString(1);
                    String str4 = string;
                    if (string != null) {
                        str4 = string;
                        if (string.equals(null)) {
                            str4 = null;
                        }
                    }
                    m6742c(obj, str, str4);
                    if (str4 == null) {
                        str4 = null;
                    }
                    query.close();
                    return str4;
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
    private static void m6742c(Object obj, String str, String str2) {
        synchronized (C7619y2.class) {
            try {
                if (obj == f34784k) {
                    f34779f.put(str, str2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
