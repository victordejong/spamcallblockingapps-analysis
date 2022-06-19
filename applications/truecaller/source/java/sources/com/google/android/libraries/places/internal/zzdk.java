package com.google.android.libraries.places.internal;

import android.content.Context;
import android.os.Build;
import android.os.DropBoxManager;
import android.util.Log;
import com.tenor.android.core.constant.StringConstant;
import java.util.LinkedHashMap;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzdk.class */
public final class zzdk {
    private static DropBoxManager zza;
    private static final LinkedHashMap<Long, Integer> zzb = new zzdm(16, 0.75f, true);
    private static String zzc;

    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    private static long zza(String str) {
        List<String> zza2 = zzfs.zza(zzfd.zza('.')).zza(str);
        if (zza2.size() != 3) {
            return -1L;
        }
        char c = 0;
        for (int i = 0; i < zza2.size(); i++) {
            try {
                c = (c * 'd') + Integer.parseInt(zza2.get(i));
            } catch (NumberFormatException e) {
                c = 65535;
            }
        }
        return c;
    }

    public static void zza(Context context, boolean z) {
        synchronized (zzdk.class) {
            try {
                if (zza == null) {
                    zza = (DropBoxManager) context.getApplicationContext().getSystemService("dropbox");
                    zzc = "com.google.android.libraries.places";
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void zza(Throwable th) {
        synchronized (zzdk.class) {
            try {
                long id = Thread.currentThread().getId();
                int hashCode = th.hashCode();
                LinkedHashMap<Long, Integer> linkedHashMap = zzb;
                Integer num = linkedHashMap.get(Long.valueOf(id));
                if (num != null && num.intValue() == hashCode) {
                    return;
                }
                DropBoxManager dropBoxManager = zza;
                if (dropBoxManager != null && dropBoxManager.isTagEnabled("system_app_crash")) {
                    DropBoxManager dropBoxManager2 = zza;
                    dropBoxManager2.addText("system_app_crash", String.format("Package: %s v%d (%s)\n", zzc, Long.valueOf(zza("2.4.0")), "2.4.0") + String.format("Build: %s\n", Build.FINGERPRINT) + StringConstant.NEW_LINE + Log.getStackTraceString(th));
                    linkedHashMap.put(Long.valueOf(id), Integer.valueOf(hashCode));
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
