package com.google.android.gms.internal.phenotype;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.util.Log;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/phenotype/zzf.class */
public class zzf {
    private static HashMap<String, String> zzbi;
    private static Object zzbn;
    private static boolean zzbo;
    private static final Uri CONTENT_URI = Uri.parse("content://com.google.android.gsf.gservices");
    private static final Uri zzbe = Uri.parse("content://com.google.android.gsf.gservices/prefix");
    private static final Pattern zzbf = Pattern.compile("^(1|true|t|on|yes|y)$", 2);
    private static final Pattern zzbg = Pattern.compile("^(0|false|f|off|no|n)$", 2);
    private static final AtomicBoolean zzbh = new AtomicBoolean();
    private static final HashMap<String, Boolean> zzbj = new HashMap<>();
    private static final HashMap<String, Integer> zzbk = new HashMap<>();
    private static final HashMap<String, Long> zzbl = new HashMap<>();
    private static final HashMap<String, Float> zzbm = new HashMap<>();
    private static String[] zzbp = new String[0];

    private static <T> T zza(HashMap<String, T> hashMap, String str, T t) {
        synchronized (zzf.class) {
            try {
                if (!hashMap.containsKey(str)) {
                    return null;
                }
                T t2 = hashMap.get(str);
                if (t2 == null) {
                    t2 = t;
                }
                return t2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static String zza(ContentResolver contentResolver, String str, String str2) {
        synchronized (zzf.class) {
            try {
                zza(contentResolver);
                Object obj = zzbn;
                if (zzbi.containsKey(str)) {
                    String str3 = zzbi.get(str);
                    if (str3 == null) {
                        str3 = null;
                    }
                    return str3;
                }
                for (String str4 : zzbp) {
                    if (str.startsWith(str4)) {
                        if (!zzbo || zzbi.isEmpty()) {
                            zzbi.putAll(zza(contentResolver, zzbp));
                            zzbo = true;
                            if (zzbi.containsKey(str)) {
                                String str5 = zzbi.get(str);
                                if (str5 == null) {
                                    str5 = null;
                                }
                                return str5;
                            }
                        }
                        return null;
                    }
                }
                Cursor query = contentResolver.query(CONTENT_URI, null, null, new String[]{str}, null);
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
                            zza(obj, str, str6);
                            if (str6 == null) {
                                str6 = null;
                            }
                            if (query != null) {
                                query.close();
                            }
                            return str6;
                        }
                    } catch (Throwable th) {
                        if (query != null) {
                            query.close();
                        }
                        throw th;
                    }
                }
                zza(obj, str, (String) null);
                if (query == null) {
                    return null;
                }
                query.close();
                return null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private static Map<String, String> zza(ContentResolver contentResolver, String... strArr) {
        Cursor query = contentResolver.query(zzbe, null, null, strArr, null);
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

    private static void zza(ContentResolver contentResolver) {
        if (zzbi == null) {
            zzbh.set(false);
            zzbi = new HashMap<>();
            zzbn = new Object();
            zzbo = false;
            contentResolver.registerContentObserver(CONTENT_URI, true, new zzg(null));
        } else if (!zzbh.getAndSet(false)) {
        } else {
            zzbi.clear();
            zzbj.clear();
            zzbk.clear();
            zzbl.clear();
            zzbm.clear();
            zzbn = new Object();
            zzbo = false;
        }
    }

    private static void zza(Object obj, String str, String str2) {
        synchronized (zzf.class) {
            try {
                if (obj == zzbn) {
                    zzbi.put(str, str2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static boolean zza(ContentResolver contentResolver, String str, boolean z) {
        Object zzb = zzb(contentResolver);
        Boolean bool = (Boolean) zza(zzbj, str, Boolean.valueOf(z));
        if (bool != null) {
            return bool.booleanValue();
        }
        String zza = zza(contentResolver, str, (String) null);
        Boolean bool2 = bool;
        boolean z2 = z;
        if (zza != null) {
            if (zza.equals("")) {
                bool2 = bool;
                z2 = z;
            } else if (zzbf.matcher(zza).matches()) {
                bool2 = true;
                z2 = true;
            } else if (zzbg.matcher(zza).matches()) {
                bool2 = false;
                z2 = false;
            } else {
                Log.w("Gservices", "attempt to read gservices key " + str + " (value \"" + zza + "\") as boolean");
                z2 = z;
                bool2 = bool;
            }
        }
        HashMap<String, Boolean> hashMap = zzbj;
        synchronized (zzf.class) {
            try {
                if (zzb == zzbn) {
                    hashMap.put(str, bool2);
                    zzbi.remove(str);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return z2;
    }

    private static Object zzb(ContentResolver contentResolver) {
        Object obj;
        synchronized (zzf.class) {
            try {
                zza(contentResolver);
                obj = zzbn;
            } catch (Throwable th) {
                throw th;
            }
        }
        return obj;
    }
}
