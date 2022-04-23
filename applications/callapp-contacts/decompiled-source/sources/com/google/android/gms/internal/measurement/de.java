package com.google.android.gms.internal.measurement;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/de.class */
public final class de {
    static HashMap<String, String> e;
    private static Object l;
    private static boolean m;

    /* renamed from: a  reason: collision with root package name */
    public static final Uri f28950a = Uri.parse("content://com.google.android.gsf.gservices");

    /* renamed from: b  reason: collision with root package name */
    public static final Uri f28951b = Uri.parse("content://com.google.android.gsf.gservices/prefix");

    /* renamed from: c  reason: collision with root package name */
    public static final Pattern f28952c = Pattern.compile("^(1|true|t|on|yes|y)$", 2);

    /* renamed from: d  reason: collision with root package name */
    public static final Pattern f28953d = Pattern.compile("^(0|false|f|off|no|n)$", 2);
    private static final AtomicBoolean k = new AtomicBoolean();
    static final HashMap<String, Boolean> f = new HashMap<>();
    static final HashMap<String, Integer> g = new HashMap<>();
    static final HashMap<String, Long> h = new HashMap<>();
    static final HashMap<String, Float> i = new HashMap<>();
    static final String[] j = new String[0];

    /* JADX WARN: Finally extract failed */
    public static String a(ContentResolver contentResolver, String str) {
        synchronized (de.class) {
            try {
                String str2 = null;
                String str3 = null;
                if (e == null) {
                    k.set(false);
                    e = new HashMap<>();
                    l = new Object();
                    m = false;
                    contentResolver.registerContentObserver(f28950a, true, new dd(null));
                } else if (k.getAndSet(false)) {
                    e.clear();
                    f.clear();
                    g.clear();
                    h.clear();
                    i.clear();
                    l = new Object();
                    m = false;
                }
                Object obj = l;
                if (e.containsKey(str)) {
                    str3 = e.get(str);
                    if (str3 == null) {
                    }
                    return str3;
                }
                Cursor query = contentResolver.query(f28950a, null, null, new String[]{str}, null);
                if (query == null) {
                    return null;
                }
                try {
                    if (!query.moveToFirst()) {
                        a(obj, str, null);
                        query.close();
                        return null;
                    }
                    String string = query.getString(1);
                    str2 = string;
                    if (string != null) {
                        str2 = string;
                        if (string.equals(null)) {
                            str2 = null;
                        }
                    }
                    a(obj, str, str2);
                    if (str2 == null) {
                    }
                    query.close();
                    return str2;
                } catch (Throwable th) {
                    query.close();
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private static void a(Object obj, String str, String str2) {
        synchronized (de.class) {
            try {
                if (obj == l) {
                    e.put(str, str2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
