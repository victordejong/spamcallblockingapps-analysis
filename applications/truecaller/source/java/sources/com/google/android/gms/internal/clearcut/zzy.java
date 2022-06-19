package com.google.android.gms.internal.clearcut;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/clearcut/zzy.class */
public class zzy {
    private static HashMap<String, String> zzcu;
    private static Object zzcz;
    private static boolean zzda;
    private static final Uri CONTENT_URI = Uri.parse("content://com.google.android.gsf.gservices");
    private static final Uri zzcq = Uri.parse("content://com.google.android.gsf.gservices/prefix");
    public static final Pattern zzcr = Pattern.compile("^(1|true|t|on|yes|y)$", 2);
    public static final Pattern zzcs = Pattern.compile("^(0|false|f|off|no|n)$", 2);
    private static final AtomicBoolean zzct = new AtomicBoolean();
    private static final HashMap<String, Boolean> zzcv = new HashMap<>();
    private static final HashMap<String, Integer> zzcw = new HashMap<>();
    private static final HashMap<String, Long> zzcx = new HashMap<>();
    private static final HashMap<String, Float> zzcy = new HashMap<>();
    private static String[] zzdb = new String[0];

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    public static long getLong(ContentResolver contentResolver, String str, long j) {
        Long l;
        Object zzb = zzb(contentResolver);
        char c = 0;
        Long l2 = (Long) zza((HashMap<String, long>) zzcx, str, 0L);
        if (l2 != null) {
            return l2.longValue();
        }
        String zza = zza(contentResolver, str, (String) null);
        if (zza == null) {
            l = l2;
        } else {
            try {
                ?? parseLong = Long.parseLong(zza);
                l = Long.valueOf((long) parseLong);
                c = parseLong;
            } catch (NumberFormatException e) {
                l = l2;
            }
        }
        zza(zzb, zzcx, str, l);
        return c;
    }

    private static <T> T zza(HashMap<String, T> hashMap, String str, T t) {
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

    public static String zza(ContentResolver contentResolver, String str, String str2) {
        synchronized (zzy.class) {
            try {
                zza(contentResolver);
                Object obj = zzcz;
                if (zzcu.containsKey(str)) {
                    String str3 = zzcu.get(str);
                    String str4 = null;
                    if (str3 != null) {
                        str4 = str3;
                    }
                    return str4;
                }
                for (String str5 : zzdb) {
                    if (str.startsWith(str5)) {
                        if (!zzda || zzcu.isEmpty()) {
                            zzcu.putAll(zza(contentResolver, zzdb));
                            zzda = true;
                            if (zzcu.containsKey(str)) {
                                String str6 = zzcu.get(str);
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
                if (query != null) {
                    try {
                        if (query.moveToFirst()) {
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
        Cursor query = contentResolver.query(zzcq, null, null, strArr, null);
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
        if (zzcu == null) {
            zzct.set(false);
            zzcu = new HashMap<>();
            zzcz = new Object();
            zzda = false;
            contentResolver.registerContentObserver(CONTENT_URI, true, new zzz(null));
        } else if (!zzct.getAndSet(false)) {
        } else {
            zzcu.clear();
            zzcv.clear();
            zzcw.clear();
            zzcx.clear();
            zzcy.clear();
            zzcz = new Object();
            zzda = false;
        }
    }

    private static void zza(Object obj, String str, String str2) {
        synchronized (zzy.class) {
            try {
                if (obj == zzcz) {
                    zzcu.put(str, str2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static <T> void zza(Object obj, HashMap<String, T> hashMap, String str, T t) {
        synchronized (zzy.class) {
            try {
                if (obj == zzcz) {
                    hashMap.put(str, t);
                    zzcu.remove(str);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static boolean zza(ContentResolver contentResolver, String str, boolean z) {
        Object zzb = zzb(contentResolver);
        HashMap<String, Boolean> hashMap = zzcv;
        Boolean bool = (Boolean) zza(hashMap, str, Boolean.valueOf(z));
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
            } else if (zzcr.matcher(zza).matches()) {
                z2 = true;
                bool2 = Boolean.TRUE;
            } else {
                bool2 = bool;
                z2 = z;
                if (zzcs.matcher(zza).matches()) {
                    z2 = false;
                    bool2 = Boolean.FALSE;
                }
            }
        }
        zza(zzb, hashMap, str, bool2);
        return z2;
    }

    private static Object zzb(ContentResolver contentResolver) {
        Object obj;
        synchronized (zzy.class) {
            try {
                zza(contentResolver);
                obj = zzcz;
            } catch (Throwable th) {
                throw th;
            }
        }
        return obj;
    }
}
