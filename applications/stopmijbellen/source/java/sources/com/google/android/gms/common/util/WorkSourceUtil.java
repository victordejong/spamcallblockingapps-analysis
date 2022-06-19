package com.google.android.gms.common.util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Process;
import android.os.WorkSource;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.wrappers.Wrappers;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
@KeepForSdk
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
    private static final Method zzi;

    /* JADX WARN: Can't wrap try/catch for region: R(25:2|48|3|6|(21:52|8|10|50|11|14|56|15|18|(12:46|20|22|(9:58|24|28|(6:54|30|34|(6:36|60|37|38|39|40)|41|42)|33|34|(0)|41|42)|27|28|(0)|33|34|(0)|41|42)|21|22|(0)|27|28|(0)|33|34|(0)|41|42)|9|10|50|11|14|56|15|18|(0)|21|22|(0)|27|28|(0)|33|34|(0)|41|42) */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x005c, code lost:
        r9 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0078, code lost:
        r9 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0084 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00ca A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00a5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    static {
        /*
            Method dump skipped, instructions count: 295
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.util.WorkSourceUtil.m9344clinit():void");
    }

    private WorkSourceUtil() {
    }

    @KeepForSdk
    public static void add(WorkSource workSource, int i, String str) {
        Method method = zzc;
        if (method != null) {
            String str2 = str;
            if (str == null) {
                str2 = "";
            }
            try {
                method.invoke(workSource, Integer.valueOf(i), str2);
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

    @KeepForSdk
    public static WorkSource fromPackage(Context context, String str) {
        if (context == null || context.getPackageManager() == null || str == null) {
            return null;
        }
        try {
            ApplicationInfo applicationInfo = Wrappers.packageManager(context).getApplicationInfo(str, 0);
            if (applicationInfo == null) {
                if (str.length() == 0) {
                    return null;
                }
                "Could not get applicationInfo from package: ".concat(str);
                return null;
            }
            int i = applicationInfo.uid;
            WorkSource workSource = new WorkSource();
            add(workSource, i, str);
            return workSource;
        } catch (PackageManager.NameNotFoundException e) {
            if (str.length() == 0) {
                return null;
            }
            "Could not find package: ".concat(str);
            return null;
        }
    }

    @KeepForSdk
    public static WorkSource fromPackageAndModuleExperimentalPi(Context context, String str, String str2) {
        int i;
        Method method;
        if (context == null || context.getPackageManager() == null || str2 == null || str == null) {
            Log.w("WorkSourceUtil", "Unexpected null arguments");
            return null;
        }
        try {
            ApplicationInfo applicationInfo = Wrappers.packageManager(context).getApplicationInfo(str, 0);
            if (applicationInfo == null) {
                i = -1;
                if (str.length() != 0) {
                    "Could not get applicationInfo from package: ".concat(str);
                    i = -1;
                }
            } else {
                i = applicationInfo.uid;
            }
        } catch (PackageManager.NameNotFoundException e) {
            i = -1;
            if (str.length() != 0) {
                "Could not find package: ".concat(str);
                i = -1;
            }
        }
        if (i < 0) {
            return null;
        }
        WorkSource workSource = new WorkSource();
        Method method2 = zzg;
        if (method2 == null || (method = zzh) == null) {
            add(workSource, i, str);
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

    @KeepForSdk
    public static List<String> getNames(WorkSource workSource) {
        ArrayList arrayList = new ArrayList();
        int zza2 = workSource == null ? 0 : zza(workSource);
        if (zza2 != 0) {
            for (int i = 0; i < zza2; i++) {
                Method method = zzf;
                String str = null;
                if (method != null) {
                    try {
                        str = (String) method.invoke(workSource, Integer.valueOf(i));
                    } catch (Exception e) {
                        Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e);
                        str = null;
                    }
                }
                if (!Strings.isEmptyOrWhitespace(str)) {
                    Preconditions.checkNotNull(str);
                    arrayList.add(str);
                }
            }
        }
        return arrayList;
    }

    @KeepForSdk
    public static boolean hasWorkSourcePermission(Context context) {
        return (context == null || context.getPackageManager() == null || Wrappers.packageManager(context).checkPermission("android.permission.UPDATE_DEVICE_STATS", context.getPackageName()) != 0) ? false : true;
    }

    @KeepForSdk
    public static boolean isEmpty(WorkSource workSource) {
        Method method = zzi;
        if (method != null) {
            try {
                Object invoke = method.invoke(workSource, new Object[0]);
                Preconditions.checkNotNull(invoke);
                return ((Boolean) invoke).booleanValue();
            } catch (Exception e) {
            }
        }
        return zza(workSource) == 0;
    }

    public static int zza(WorkSource workSource) {
        Method method = zzd;
        if (method != null) {
            try {
                Object invoke = method.invoke(workSource, new Object[0]);
                Preconditions.checkNotNull(invoke);
                return ((Integer) invoke).intValue();
            } catch (Exception e) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e);
                return 0;
            }
        }
        return 0;
    }
}
