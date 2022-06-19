package com.google.android.gms.common.util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Process;
import android.os.WorkSource;
import android.util.Log;
import com.google.android.gms.common.wrappers.Wrappers;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/WorkSourceUtil.class */
public class WorkSourceUtil {
    private static final int zza = Process.myUid();
    private static final Method zzb;
    private static final Method zzc;
    private static final Method zzd;
    private static final Method zze;
    private static final Method zzf;
    private static final Method zzg;
    private static final Method zzh;

    /* JADX WARN: Can't wrap try/catch for region: R(22:2|37|3|6|(18:43|8|10|41|11|14|47|15|18|(9:39|20|22|(6:49|24|28|(2:45|30)|33|34)|27|28|(0)|33|34)|21|22|(0)|27|28|(0)|33|34)|9|10|41|11|14|47|15|18|(0)|21|22|(0)|27|28|(0)|33|34) */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x005a, code lost:
        r8 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0076, code lost:
        r8 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0082 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00ca A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00a3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    static {
        /*
            Method dump skipped, instructions count: 256
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.util.WorkSourceUtil.m2334clinit():void");
    }

    private WorkSourceUtil() {
    }

    public static WorkSource fromPackage(Context context, String str) {
        if (context == null || context.getPackageManager() == null || str == null) {
            return null;
        }
        try {
            ApplicationInfo applicationInfo = Wrappers.packageManager(context).getApplicationInfo(str, 0);
            if (applicationInfo == null) {
                Log.e("WorkSourceUtil", str.length() != 0 ? "Could not get applicationInfo from package: ".concat(str) : new String("Could not get applicationInfo from package: "));
                return null;
            }
            int i = applicationInfo.uid;
            WorkSource workSource = new WorkSource();
            zza(workSource, i, str);
            return workSource;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e("WorkSourceUtil", str.length() != 0 ? "Could not find package: ".concat(str) : new String("Could not find package: "));
            return null;
        }
    }

    public static WorkSource fromPackageAndModuleExperimentalPi(Context context, String str, String str2) {
        Method method;
        if (context == null || context.getPackageManager() == null || str2 == null || str == null) {
            Log.w("WorkSourceUtil", "Unexpected null arguments");
            return null;
        }
        int i = -1;
        try {
            ApplicationInfo applicationInfo = Wrappers.packageManager(context).getApplicationInfo(str, 0);
            if (applicationInfo == null) {
                Log.e("WorkSourceUtil", str.length() != 0 ? "Could not get applicationInfo from package: ".concat(str) : new String("Could not get applicationInfo from package: "));
            } else {
                i = applicationInfo.uid;
            }
        } catch (PackageManager.NameNotFoundException e) {
            Log.e("WorkSourceUtil", str.length() != 0 ? "Could not find package: ".concat(str) : new String("Could not find package: "));
        }
        if (i < 0) {
            return null;
        }
        WorkSource workSource = new WorkSource();
        Method method2 = zzg;
        if (method2 == null || (method = zzh) == null) {
            zza(workSource, i, str);
        } else {
            try {
                Object invoke = method2.invoke(workSource, new Object[0]);
                int i2 = zza;
                if (i != i2) {
                    method.invoke(invoke, Integer.valueOf(i), str);
                }
                method.invoke(invoke, Integer.valueOf(i2), str2);
            } catch (Exception e2) {
                Log.w("WorkSourceUtil", "Unable to assign chained blame through WorkSource", e2);
            }
        }
        return workSource;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0044  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.List<java.lang.String> getNames(android.os.WorkSource r7) {
        /*
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r1.<init>()
            r8 = r0
            r0 = r7
            if (r0 != 0) goto L11
        Lc:
            r0 = 0
            r9 = r0
            goto L40
        L11:
            java.lang.reflect.Method r0 = com.google.android.gms.common.util.WorkSourceUtil.zzd
            r10 = r0
            r0 = r10
            if (r0 == 0) goto Lc
            r0 = r10
            r1 = r7
            r2 = 0
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch: java.lang.Exception -> L33
            java.lang.Object r0 = r0.invoke(r1, r2)     // Catch: java.lang.Exception -> L33
            r10 = r0
            r0 = r10
            java.lang.Object r0 = com.google.android.gms.common.internal.Preconditions.checkNotNull(r0)     // Catch: java.lang.Exception -> L33
            r0 = r10
            java.lang.Integer r0 = (java.lang.Integer) r0     // Catch: java.lang.Exception -> L33
            int r0 = r0.intValue()     // Catch: java.lang.Exception -> L33
            r9 = r0
            goto L40
        L33:
            r10 = move-exception
            java.lang.String r0 = "WorkSourceUtil"
            java.lang.String r1 = "Unable to assign blame through WorkSource"
            r2 = r10
            int r0 = android.util.Log.wtf(r0, r1, r2)
            goto Lc
        L40:
            r0 = r9
            if (r0 == 0) goto L9d
            r0 = 0
            r11 = r0
        L47:
            r0 = r11
            r1 = r9
            if (r0 >= r1) goto L9d
            java.lang.reflect.Method r0 = com.google.android.gms.common.util.WorkSourceUtil.zzf
            r12 = r0
            r0 = 0
            r13 = r0
            r0 = r13
            r10 = r0
            r0 = r12
            if (r0 == 0) goto L83
            r0 = r12
            r1 = r7
            r2 = 1
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch: java.lang.Exception -> L76
            r3 = r2
            r4 = 0
            r5 = r11
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)     // Catch: java.lang.Exception -> L76
            r3[r4] = r5     // Catch: java.lang.Exception -> L76
            java.lang.Object r0 = r0.invoke(r1, r2)     // Catch: java.lang.Exception -> L76
            java.lang.String r0 = (java.lang.String) r0     // Catch: java.lang.Exception -> L76
            r10 = r0
            goto L83
        L76:
            r10 = move-exception
            java.lang.String r0 = "WorkSourceUtil"
            java.lang.String r1 = "Unable to assign blame through WorkSource"
            r2 = r10
            int r0 = android.util.Log.wtf(r0, r1, r2)
            r0 = r13
            r10 = r0
        L83:
            r0 = r10
            boolean r0 = com.google.android.gms.common.util.Strings.isEmptyOrWhitespace(r0)
            if (r0 != 0) goto L97
            r0 = r10
            java.lang.Object r0 = com.google.android.gms.common.internal.Preconditions.checkNotNull(r0)
            r0 = r8
            r1 = r10
            boolean r0 = r0.add(r1)
        L97:
            int r11 = r11 + 1
            goto L47
        L9d:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.util.WorkSourceUtil.getNames(android.os.WorkSource):java.util.List");
    }

    public static boolean hasWorkSourcePermission(Context context) {
        return (context == null || context.getPackageManager() == null || Wrappers.packageManager(context).checkPermission("android.permission.UPDATE_DEVICE_STATS", context.getPackageName()) != 0) ? false : true;
    }

    public static void zza(WorkSource workSource, int i, String str) {
        Method method = zzc;
        if (method != null) {
            try {
                method.invoke(workSource, Integer.valueOf(i), str);
                return;
            } catch (Exception e) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e);
                return;
            }
        }
        Method method2 = zzb;
        if (method2 == null) {
            return;
        }
        try {
            method2.invoke(workSource, Integer.valueOf(i));
        } catch (Exception e2) {
            Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e2);
        }
    }
}
