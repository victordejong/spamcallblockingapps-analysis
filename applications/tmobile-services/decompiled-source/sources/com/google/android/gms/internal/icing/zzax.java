package com.google.android.gms.internal.icing;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzax.class */
public class zzax {

    /* renamed from: f */
    private static HashMap<String, String> f7885f;

    /* renamed from: k */
    private static Object f7890k;

    /* renamed from: l */
    private static boolean f7891l;

    /* renamed from: a */
    public static final Uri f7880a = Uri.parse("content://com.google.android.gsf.gservices");

    /* renamed from: b */
    private static final Uri f7881b = Uri.parse("content://com.google.android.gsf.gservices/prefix");

    /* renamed from: c */
    public static final Pattern f7882c = Pattern.compile("^(1|true|t|on|yes|y)$", 2);

    /* renamed from: d */
    public static final Pattern f7883d = Pattern.compile("^(0|false|f|off|no|n)$", 2);

    /* renamed from: e */
    private static final AtomicBoolean f7884e = new AtomicBoolean();

    /* renamed from: g */
    private static final HashMap<String, Boolean> f7886g = new HashMap<>();

    /* renamed from: h */
    private static final HashMap<String, Integer> f7887h = new HashMap<>();

    /* renamed from: i */
    private static final HashMap<String, Long> f7888i = new HashMap<>();

    /* renamed from: j */
    private static final HashMap<String, Float> f7889j = new HashMap<>();

    /* renamed from: m */
    private static String[] f7892m = new String[0];

    /* renamed from: a */
    public static String m14040a(ContentResolver contentResolver, String str, String str2) {
        synchronized (zzax.class) {
            try {
                String str3 = null;
                String str4 = null;
                String str5 = null;
                if (f7885f == null) {
                    f7884e.set(false);
                    f7885f = new HashMap<>();
                    f7890k = new Object();
                    f7891l = false;
                    contentResolver.registerContentObserver(f7880a, true, new zzba(null));
                } else if (f7884e.getAndSet(false)) {
                    f7885f.clear();
                    f7886g.clear();
                    f7887h.clear();
                    f7888i.clear();
                    f7889j.clear();
                    f7890k = new Object();
                    f7891l = false;
                }
                Object obj = f7890k;
                if (f7885f.containsKey(str)) {
                    String str6 = f7885f.get(str);
                    if (str6 != null) {
                        str5 = str6;
                    }
                    return str5;
                }
                for (String str7 : f7892m) {
                    if (str.startsWith(str7)) {
                        if (!f7891l || f7885f.isEmpty()) {
                            f7885f.putAll(m14039b(contentResolver, f7892m));
                            f7891l = true;
                            if (f7885f.containsKey(str)) {
                                String str8 = f7885f.get(str);
                                if (str8 != null) {
                                    str3 = str8;
                                }
                                return str3;
                            }
                        }
                        return null;
                    }
                }
                Cursor query = contentResolver.query(f7880a, null, null, new String[]{str}, null);
                if (query != null) {
                    try {
                        if (!query.moveToFirst()) {
                            m14038c(obj, str, null);
                            if (query == null) {
                                return null;
                            }
                            query.close();
                            return null;
                        }
                        String string = query.getString(1);
                        String str9 = string;
                        if (string != null) {
                            str9 = string;
                            if (string.equals(null)) {
                                str9 = null;
                            }
                        }
                        m14038c(obj, str, str9);
                        if (str9 != null) {
                            str4 = str9;
                        }
                        return str4;
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

    /* renamed from: b */
    private static Map<String, String> m14039b(ContentResolver contentResolver, String... strArr) {
        Cursor query = contentResolver.query(f7881b, null, null, strArr, null);
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

    /* renamed from: c */
    private static void m14038c(Object obj, String str, String str2) {
        synchronized (zzax.class) {
            try {
                if (obj == f7890k) {
                    f7885f.put(str, str2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
