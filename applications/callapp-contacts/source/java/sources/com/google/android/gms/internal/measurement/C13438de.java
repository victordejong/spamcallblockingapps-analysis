package com.google.android.gms.internal.measurement;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;
/* renamed from: com.google.android.gms.internal.measurement.de */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/de.class */
public final class C13438de {

    /* renamed from: e */
    static HashMap<String, String> f50626e;

    /* renamed from: l */
    private static Object f50633l;

    /* renamed from: m */
    private static boolean f50634m;

    /* renamed from: a */
    public static final Uri f50622a = Uri.parse("content://com.google.android.gsf.gservices");

    /* renamed from: b */
    public static final Uri f50623b = Uri.parse("content://com.google.android.gsf.gservices/prefix");

    /* renamed from: c */
    public static final Pattern f50624c = Pattern.compile("^(1|true|t|on|yes|y)$", 2);

    /* renamed from: d */
    public static final Pattern f50625d = Pattern.compile("^(0|false|f|off|no|n)$", 2);

    /* renamed from: k */
    private static final AtomicBoolean f50632k = new AtomicBoolean();

    /* renamed from: f */
    static final HashMap<String, Boolean> f50627f = new HashMap<>();

    /* renamed from: g */
    static final HashMap<String, Integer> f50628g = new HashMap<>();

    /* renamed from: h */
    static final HashMap<String, Long> f50629h = new HashMap<>();

    /* renamed from: i */
    static final HashMap<String, Float> f50630i = new HashMap<>();

    /* renamed from: j */
    static final String[] f50631j = new String[0];

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public static String m12924a(ContentResolver contentResolver, String str) {
        synchronized (C13438de.class) {
            try {
                if (f50626e == null) {
                    f50632k.set(false);
                    f50626e = new HashMap<>();
                    f50633l = new Object();
                    f50634m = false;
                    contentResolver.registerContentObserver(f50622a, true, new C13437dd(null));
                } else if (f50632k.getAndSet(false)) {
                    f50626e.clear();
                    f50627f.clear();
                    f50628g.clear();
                    f50629h.clear();
                    f50630i.clear();
                    f50633l = new Object();
                    f50634m = false;
                }
                Object obj = f50633l;
                if (f50626e.containsKey(str)) {
                    String str2 = f50626e.get(str);
                    if (str2 == null) {
                        str2 = null;
                    }
                    return str2;
                }
                Cursor query = contentResolver.query(f50622a, null, null, new String[]{str}, null);
                if (query == null) {
                    return null;
                }
                try {
                    if (!query.moveToFirst()) {
                        m12923a(obj, str, null);
                        query.close();
                        return null;
                    }
                    String string = query.getString(1);
                    String str3 = string;
                    if (string != null) {
                        str3 = string;
                        if (string.equals(null)) {
                            str3 = null;
                        }
                    }
                    m12923a(obj, str, str3);
                    if (str3 == null) {
                        str3 = null;
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

    /* renamed from: a */
    private static void m12923a(Object obj, String str, String str2) {
        synchronized (C13438de.class) {
            try {
                if (obj == f50633l) {
                    f50626e.put(str, str2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
