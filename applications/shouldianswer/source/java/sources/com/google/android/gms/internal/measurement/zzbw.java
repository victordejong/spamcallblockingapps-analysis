package com.google.android.gms.internal.measurement;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbw.class */
public class zzbw {
    private static HashMap<String, String> zzf;
    private static Object zzk;
    private static boolean zzl;
    public static final Uri zza = Uri.parse("content://com.google.android.gsf.gservices");
    private static final Uri zzd = Uri.parse("content://com.google.android.gsf.gservices/prefix");
    public static final Pattern zzb = Pattern.compile("^(1|true|t|on|yes|y)$", 2);
    public static final Pattern zzc = Pattern.compile("^(0|false|f|off|no|n)$", 2);
    private static final AtomicBoolean zze = new AtomicBoolean();
    private static final HashMap<String, Boolean> zzg = new HashMap<>();
    private static final HashMap<String, Integer> zzh = new HashMap<>();
    private static final HashMap<String, Long> zzi = new HashMap<>();
    private static final HashMap<String, Float> zzj = new HashMap<>();
    private static String[] zzm = new String[0];

    public static String zza(ContentResolver contentResolver, String str, String str2) {
        synchronized (zzbw.class) {
            try {
                if (zzf == null) {
                    zze.set(false);
                    zzf = new HashMap<>();
                    zzk = new Object();
                    zzl = false;
                    contentResolver.registerContentObserver(zza, true, new zzbv(null));
                } else if (zze.getAndSet(false)) {
                    zzf.clear();
                    zzg.clear();
                    zzh.clear();
                    zzi.clear();
                    zzj.clear();
                    zzk = new Object();
                    zzl = false;
                }
                Object obj = zzk;
                if (zzf.containsKey(str)) {
                    String str3 = zzf.get(str);
                    if (str3 == null) {
                        str3 = null;
                    }
                    return str3;
                }
                for (String str4 : zzm) {
                    if (str.startsWith(str4)) {
                        if (!zzl || zzf.isEmpty()) {
                            zzf.putAll(zza(contentResolver, zzm));
                            zzl = true;
                            if (zzf.containsKey(str)) {
                                String str5 = zzf.get(str);
                                if (str5 == null) {
                                    str5 = null;
                                }
                                return str5;
                            }
                        }
                        return null;
                    }
                }
                Cursor query = contentResolver.query(zza, null, null, new String[]{str}, null);
                if (query == null) {
                    if (query == null) {
                        return null;
                    }
                    query.close();
                    return null;
                }
                try {
                    if (!query.moveToFirst()) {
                        zza(obj, str, (String) null);
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
                    zza(obj, str, str6);
                    if (str6 == null) {
                        str6 = null;
                    }
                    if (query != null) {
                        query.close();
                    }
                    return str6;
                } catch (Throwable th) {
                    if (query != null) {
                        query.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private static Map<String, String> zza(ContentResolver contentResolver, String... strArr) {
        Cursor query = contentResolver.query(zzd, null, null, strArr, null);
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
        synchronized (zzbw.class) {
            try {
                if (obj == zzk) {
                    zzf.put(str, str2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
