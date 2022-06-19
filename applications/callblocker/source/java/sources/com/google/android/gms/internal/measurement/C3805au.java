package com.google.android.gms.internal.measurement;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;
/* renamed from: com.google.android.gms.internal.measurement.au */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/au.class */
public class C3805au {

    /* renamed from: f */
    private static HashMap<String, String> f17849f;

    /* renamed from: k */
    private static Object f17854k;

    /* renamed from: l */
    private static boolean f17855l;

    /* renamed from: a */
    public static final Uri f17844a = Uri.parse("content://com.google.android.gsf.gservices");

    /* renamed from: d */
    private static final Uri f17847d = Uri.parse("content://com.google.android.gsf.gservices/prefix");

    /* renamed from: b */
    public static final Pattern f17845b = Pattern.compile("^(1|true|t|on|yes|y)$", 2);

    /* renamed from: c */
    public static final Pattern f17846c = Pattern.compile("^(0|false|f|off|no|n)$", 2);

    /* renamed from: e */
    private static final AtomicBoolean f17848e = new AtomicBoolean();

    /* renamed from: g */
    private static final HashMap<String, Boolean> f17850g = new HashMap<>();

    /* renamed from: h */
    private static final HashMap<String, Integer> f17851h = new HashMap<>();

    /* renamed from: i */
    private static final HashMap<String, Long> f17852i = new HashMap<>();

    /* renamed from: j */
    private static final HashMap<String, Float> f17853j = new HashMap<>();

    /* renamed from: m */
    private static String[] f17856m = new String[0];

    /* renamed from: a */
    public static String m5904a(ContentResolver contentResolver, String str, String str2) {
        String str3;
        synchronized (C3805au.class) {
            try {
                if (f17849f == null) {
                    f17848e.set(false);
                    f17849f = new HashMap<>();
                    f17854k = new Object();
                    f17855l = false;
                    contentResolver.registerContentObserver(f17844a, true, new C3804at(null));
                } else if (f17848e.getAndSet(false)) {
                    f17849f.clear();
                    f17850g.clear();
                    f17851h.clear();
                    f17852i.clear();
                    f17853j.clear();
                    f17854k = new Object();
                    f17855l = false;
                }
                Object obj = f17854k;
                if (f17849f.containsKey(str)) {
                    String str4 = f17849f.get(str);
                    str3 = null;
                    if (str4 != null) {
                        str3 = str4;
                    }
                } else {
                    String[] strArr = f17856m;
                    int length = strArr.length;
                    int i = 0;
                    while (true) {
                        if (i >= length) {
                            Cursor query = contentResolver.query(f17844a, null, null, new String[]{str}, null);
                            if (query == null) {
                                str3 = null;
                                if (query != null) {
                                    query.close();
                                    str3 = null;
                                }
                            } else {
                                try {
                                    if (!query.moveToFirst()) {
                                        m5902a(obj, str, (String) null);
                                        str3 = null;
                                        if (query != null) {
                                            query.close();
                                            str3 = null;
                                        }
                                    } else {
                                        String string = query.getString(1);
                                        String str5 = string;
                                        if (string != null) {
                                            str5 = string;
                                            if (string.equals(null)) {
                                                str5 = null;
                                            }
                                        }
                                        m5902a(obj, str, str5);
                                        String str6 = null;
                                        if (str5 != null) {
                                            str6 = str5;
                                        }
                                        str3 = str6;
                                        if (query != null) {
                                            query.close();
                                            str3 = str6;
                                        }
                                    }
                                } catch (Throwable th) {
                                    if (query != null) {
                                        query.close();
                                    }
                                    throw th;
                                }
                            }
                        } else if (str.startsWith(strArr[i])) {
                            if (!f17855l || f17849f.isEmpty()) {
                                f17849f.putAll(m5903a(contentResolver, f17856m));
                                f17855l = true;
                                if (f17849f.containsKey(str)) {
                                    String str7 = f17849f.get(str);
                                    str3 = null;
                                    if (str7 != null) {
                                        str3 = str7;
                                    }
                                }
                            }
                            str3 = null;
                        } else {
                            i++;
                        }
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return str3;
    }

    /* renamed from: a */
    private static Map<String, String> m5903a(ContentResolver contentResolver, String... strArr) {
        Cursor query = contentResolver.query(f17847d, null, null, strArr, null);
        TreeMap treeMap = new TreeMap();
        if (query != null) {
            while (query.moveToNext()) {
                try {
                    treeMap.put(query.getString(0), query.getString(1));
                } finally {
                    query.close();
                }
            }
        }
        return treeMap;
    }

    /* renamed from: a */
    private static void m5902a(Object obj, String str, String str2) {
        synchronized (C3805au.class) {
            try {
                if (obj == f17854k) {
                    f17849f.put(str, str2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
