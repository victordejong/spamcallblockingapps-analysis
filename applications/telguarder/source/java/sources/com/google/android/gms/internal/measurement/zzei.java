package com.google.android.gms.internal.measurement;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzei.class */
public final class zzei {
    static HashMap<String, String> zze;
    private static Object zzl;
    private static boolean zzm;
    public static final Uri zza = Uri.parse("content://com.google.android.gsf.gservices");
    public static final Uri zzb = Uri.parse("content://com.google.android.gsf.gservices/prefix");
    public static final Pattern zzc = Pattern.compile("^(1|true|t|on|yes|y)$", 2);
    public static final Pattern zzd = Pattern.compile("^(0|false|f|off|no|n)$", 2);
    private static final AtomicBoolean zzk = new AtomicBoolean();
    static final HashMap<String, Boolean> zzf = new HashMap<>();
    static final HashMap<String, Integer> zzg = new HashMap<>();
    static final HashMap<String, Long> zzh = new HashMap<>();
    static final HashMap<String, Float> zzi = new HashMap<>();
    static final String[] zzj = new String[0];

    /* JADX WARN: Finally extract failed */
    public static String zza(ContentResolver contentResolver, String str, String str2) {
        synchronized (zzei.class) {
            try {
                if (zze == null) {
                    zzk.set(false);
                    zze = new HashMap<>();
                    zzl = new Object();
                    zzm = false;
                    contentResolver.registerContentObserver(zza, true, new zzeh(null));
                } else if (zzk.getAndSet(false)) {
                    zze.clear();
                    zzf.clear();
                    zzg.clear();
                    zzh.clear();
                    zzi.clear();
                    zzl = new Object();
                    zzm = false;
                }
                Object obj = zzl;
                if (zze.containsKey(str)) {
                    String str3 = zze.get(str);
                    if (str3 == null) {
                        str3 = null;
                    }
                    return str3;
                }
                int length = zzj.length;
                Cursor query = contentResolver.query(zza, null, null, new String[]{str}, null);
                if (query == null) {
                    return null;
                }
                try {
                    if (!query.moveToFirst()) {
                        zzc(obj, str, null);
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
                    zzc(obj, str, str4);
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

    private static void zzc(Object obj, String str, String str2) {
        synchronized (zzei.class) {
            try {
                if (obj == zzl) {
                    zze.put(str, str2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
