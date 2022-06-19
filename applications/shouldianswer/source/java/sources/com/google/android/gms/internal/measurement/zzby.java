package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.os.Build;
import android.os.UserManager;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzby.class */
public class zzby {
    private static UserManager zza;
    private static volatile boolean zzb = !zza();
    private static boolean zzc = false;

    private zzby() {
    }

    public static boolean zza() {
        return Build.VERSION.SDK_INT >= 24;
    }

    public static boolean zza(Context context) {
        return !zza() || zzc(context);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x003f, code lost:
        if (r0.isUserRunning(android.os.Process.myUserHandle()) == false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0042, code lost:
        r7 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean zzb(android.content.Context r4) {
        /*
            r0 = 1
            r5 = r0
        L2:
            r0 = 0
            r6 = r0
            r0 = r6
            r7 = r0
            r0 = r5
            r1 = 2
            if (r0 > r1) goto L5d
            android.os.UserManager r0 = com.google.android.gms.internal.measurement.zzby.zza
            if (r0 != 0) goto L1d
            r0 = r4
            java.lang.Class<android.os.UserManager> r1 = android.os.UserManager.class
            java.lang.Object r0 = r0.getSystemService(r1)
            android.os.UserManager r0 = (android.os.UserManager) r0
            com.google.android.gms.internal.measurement.zzby.zza = r0
        L1d:
            android.os.UserManager r0 = com.google.android.gms.internal.measurement.zzby.zza
            r8 = r0
            r0 = r8
            if (r0 != 0) goto L29
            r0 = 1
            return r0
        L29:
            r0 = r8
            boolean r0 = r0.isUserUnlocked()     // Catch: java.lang.NullPointerException -> L47
            if (r0 != 0) goto L42
            r0 = r8
            android.os.UserHandle r1 = android.os.Process.myUserHandle()     // Catch: java.lang.NullPointerException -> L47
            boolean r0 = r0.isUserRunning(r1)     // Catch: java.lang.NullPointerException -> L47
            r9 = r0
            r0 = r6
            r7 = r0
            r0 = r9
            if (r0 != 0) goto L5d
        L42:
            r0 = 1
            r7 = r0
            goto L5d
        L47:
            r8 = move-exception
            java.lang.String r0 = "DirectBootUtils"
            java.lang.String r1 = "Failed to check if user is unlocked."
            r2 = r8
            int r0 = android.util.Log.w(r0, r1, r2)
            r0 = 0
            com.google.android.gms.internal.measurement.zzby.zza = r0
            int r5 = r5 + 1
            goto L2
        L5d:
            r0 = r7
            if (r0 == 0) goto L65
            r0 = 0
            com.google.android.gms.internal.measurement.zzby.zza = r0
        L65:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzby.zzb(android.content.Context):boolean");
    }

    private static boolean zzc(Context context) {
        if (zzb) {
            return true;
        }
        synchronized (zzby.class) {
            try {
                if (zzb) {
                    return true;
                }
                boolean zzb2 = zzb(context);
                if (zzb2) {
                    zzb = zzb2;
                }
                return zzb2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
