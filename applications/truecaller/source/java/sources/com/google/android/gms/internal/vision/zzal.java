package com.google.android.gms.internal.vision;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zzal.class */
public class zzal {
    private static HashMap<String, String> zzex;
    private static Object zzfc;
    private static boolean zzfd;
    public static final Uri CONTENT_URI = Uri.parse("content://com.google.android.gsf.gservices");
    private static final Uri zzet = Uri.parse("content://com.google.android.gsf.gservices/prefix");
    public static final Pattern zzeu = Pattern.compile("^(1|true|t|on|yes|y)$", 2);
    public static final Pattern zzev = Pattern.compile("^(0|false|f|off|no|n)$", 2);
    private static final AtomicBoolean zzew = new AtomicBoolean();
    private static final HashMap<String, Boolean> zzey = new HashMap<>();
    private static final HashMap<String, Integer> zzez = new HashMap<>();
    private static final HashMap<String, Long> zzfa = new HashMap<>();
    private static final HashMap<String, Float> zzfb = new HashMap<>();
    private static String[] zzfe = new String[0];

    public static String zza(ContentResolver contentResolver, String str, String str2) {
        synchronized (zzal.class) {
            try {
                if (zzex == null) {
                    zzew.set(false);
                    zzex = new HashMap<>();
                    zzfc = new Object();
                    zzfd = false;
                    contentResolver.registerContentObserver(CONTENT_URI, true, new zzao(null));
                } else if (zzew.getAndSet(false)) {
                    zzex.clear();
                    zzey.clear();
                    zzez.clear();
                    zzfa.clear();
                    zzfb.clear();
                    zzfc = new Object();
                    zzfd = false;
                }
                Object obj = zzfc;
                if (zzex.containsKey(str)) {
                    String str3 = zzex.get(str);
                    String str4 = null;
                    if (str3 != null) {
                        str4 = str3;
                    }
                    return str4;
                }
                for (String str5 : zzfe) {
                    if (str.startsWith(str5)) {
                        if (!zzfd || zzex.isEmpty()) {
                            zzex.putAll(zza(contentResolver, zzfe));
                            zzfd = true;
                            if (zzex.containsKey(str)) {
                                String str6 = zzex.get(str);
                                String str7 = null;
                                if (str6 != null) {
                                    str7 = str6;
                                }
                                return str7;
                            }
                        }
                        return null;
                    }
                }
                Cursor query = contentResolver.query(CONTENT_URI, null, null, new String[]{str}, null);
                if (query == null) {
                    return query != null ? null : null;
                }
                try {
                    if (!query.moveToFirst()) {
                        zza(obj, str, (String) null);
                        query.close();
                        return null;
                    }
                    String string = query.getString(1);
                    String str8 = string;
                    if (string != null) {
                        str8 = string;
                        if (string.equals(null)) {
                            str8 = null;
                        }
                    }
                    zza(obj, str, str8);
                    String str9 = null;
                    if (str8 != null) {
                        str9 = str8;
                    }
                    query.close();
                    return str9;
                } finally {
                    query.close();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static Map<String, String> zza(ContentResolver contentResolver, String... strArr) {
        Cursor query = contentResolver.query(zzet, null, null, strArr, null);
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

    private static void zza(Object obj, String str, String str2) {
        synchronized (zzal.class) {
            try {
                if (obj == zzfc) {
                    zzex.put(str, str2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
