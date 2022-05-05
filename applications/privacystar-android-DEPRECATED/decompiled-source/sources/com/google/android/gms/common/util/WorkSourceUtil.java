package com.google.android.gms.common.util;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Process;
import android.os.WorkSource;
import android.support.annotation.Nullable;
import android.util.Log;
import com.google.android.gms.analytics.ecommerce.ProductAction;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.wrappers.Wrappers;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/WorkSourceUtil.class */
public class WorkSourceUtil {
    private static final int zzhh = Process.myUid();
    private static final Method zzhi = zzw();
    private static final Method zzhj = zzx();
    private static final Method zzhk = zzy();
    private static final Method zzhl = zzz();
    private static final Method zzhm = zzaa();
    private static final Method zzhn = zzab();
    private static final Method zzho = zzac();

    private WorkSourceUtil() {
    }

    @KeepForSdk
    @Nullable
    public static WorkSource fromPackage(Context context, @Nullable String str) {
        if (context == null || context.getPackageManager() == null || str == null) {
            return null;
        }
        try {
            ApplicationInfo applicationInfo = Wrappers.packageManager(context).getApplicationInfo(str, 0);
            if (applicationInfo != null) {
                return zza(applicationInfo.uid, str);
            }
            String valueOf = String.valueOf(str);
            Log.e("WorkSourceUtil", valueOf.length() != 0 ? "Could not get applicationInfo from package: ".concat(valueOf) : new String("Could not get applicationInfo from package: "));
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            String valueOf2 = String.valueOf(str);
            Log.e("WorkSourceUtil", valueOf2.length() != 0 ? "Could not find package: ".concat(valueOf2) : new String("Could not find package: "));
            return null;
        }
    }

    @KeepForSdk
    public static WorkSource fromPackageAndModuleExperimentalPi(Context context, String str, String str2) {
        if (context == null || context.getPackageManager() == null || str2 == null || str == null) {
            Log.w("WorkSourceUtil", "Unexpected null arguments");
            return null;
        }
        int zzd = zzd(context, str);
        if (zzd < 0) {
            return null;
        }
        WorkSource workSource = new WorkSource();
        if (zzhn == null || zzho == null) {
            zza(workSource, zzd, str);
        } else {
            try {
                Object invoke = zzhn.invoke(workSource, new Object[0]);
                if (zzd != zzhh) {
                    zzho.invoke(invoke, Integer.valueOf(zzd), str);
                }
                zzho.invoke(invoke, Integer.valueOf(zzhh), str2);
            } catch (Exception e) {
                Log.w("WorkSourceUtil", "Unable to assign chained blame through WorkSource", e);
            }
        }
        return workSource;
    }

    @KeepForSdk
    public static List<String> getNames(@Nullable WorkSource workSource) {
        int zza = workSource == null ? 0 : zza(workSource);
        if (zza == 0) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < zza; i++) {
            String zza2 = zza(workSource, i);
            if (!Strings.isEmptyOrWhitespace(zza2)) {
                arrayList.add(zza2);
            }
        }
        return arrayList;
    }

    @KeepForSdk
    public static boolean hasWorkSourcePermission(Context context) {
        return (context == null || context.getPackageManager() == null || Wrappers.packageManager(context).checkPermission("android.permission.UPDATE_DEVICE_STATS", context.getPackageName()) != 0) ? false : true;
    }

    private static int zza(WorkSource workSource) {
        if (zzhk == null) {
            return 0;
        }
        try {
            return ((Integer) zzhk.invoke(workSource, new Object[0])).intValue();
        } catch (Exception e) {
            Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e);
            return 0;
        }
    }

    private static WorkSource zza(int i, String str) {
        WorkSource workSource = new WorkSource();
        zza(workSource, i, str);
        return workSource;
    }

    @Nullable
    private static String zza(WorkSource workSource, int i) {
        if (zzhm == null) {
            return null;
        }
        try {
            return (String) zzhm.invoke(workSource, Integer.valueOf(i));
        } catch (Exception e) {
            Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e);
            return null;
        }
    }

    private static void zza(WorkSource workSource, int i, @Nullable String str) {
        if (zzhj != null) {
            String str2 = str;
            if (str == null) {
                str2 = "";
            }
            try {
                zzhj.invoke(workSource, Integer.valueOf(i), str2);
            } catch (Exception e) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e);
            }
        } else if (zzhi != null) {
            try {
                zzhi.invoke(workSource, Integer.valueOf(i));
            } catch (Exception e2) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e2);
            }
        }
    }

    private static Method zzaa() {
        Method method;
        if (PlatformVersion.isAtLeastJellyBeanMR2()) {
            try {
                method = WorkSource.class.getMethod("getName", Integer.TYPE);
            } catch (Exception e) {
            }
            return method;
        }
        method = null;
        return method;
    }

    private static final Method zzab() {
        Method method;
        if (PlatformVersion.isAtLeastP()) {
            try {
                method = WorkSource.class.getMethod("createWorkChain", new Class[0]);
            } catch (Exception e) {
                Log.w("WorkSourceUtil", "Missing WorkChain API createWorkChain", e);
            }
            return method;
        }
        method = null;
        return method;
    }

    @SuppressLint({"PrivateApi"})
    private static final Method zzac() {
        Method method;
        if (PlatformVersion.isAtLeastP()) {
            try {
                method = Class.forName("android.os.WorkSource$WorkChain").getMethod("addNode", Integer.TYPE, String.class);
            } catch (Exception e) {
                Log.w("WorkSourceUtil", "Missing WorkChain class", e);
            }
            return method;
        }
        method = null;
        return method;
    }

    private static int zzd(Context context, String str) {
        try {
            ApplicationInfo applicationInfo = Wrappers.packageManager(context).getApplicationInfo(str, 0);
            if (applicationInfo != null) {
                return applicationInfo.uid;
            }
            String valueOf = String.valueOf(str);
            Log.e("WorkSourceUtil", valueOf.length() != 0 ? "Could not get applicationInfo from package: ".concat(valueOf) : new String("Could not get applicationInfo from package: "));
            return -1;
        } catch (PackageManager.NameNotFoundException e) {
            String valueOf2 = String.valueOf(str);
            Log.e("WorkSourceUtil", valueOf2.length() != 0 ? "Could not find package: ".concat(valueOf2) : new String("Could not find package: "));
            return -1;
        }
    }

    private static Method zzw() {
        Method method;
        try {
            method = WorkSource.class.getMethod(ProductAction.ACTION_ADD, Integer.TYPE);
        } catch (Exception e) {
            method = null;
        }
        return method;
    }

    private static Method zzx() {
        Method method;
        if (PlatformVersion.isAtLeastJellyBeanMR2()) {
            try {
                method = WorkSource.class.getMethod(ProductAction.ACTION_ADD, Integer.TYPE, String.class);
            } catch (Exception e) {
            }
            return method;
        }
        method = null;
        return method;
    }

    private static Method zzy() {
        Method method;
        try {
            method = WorkSource.class.getMethod("size", new Class[0]);
        } catch (Exception e) {
            method = null;
        }
        return method;
    }

    private static Method zzz() {
        Method method;
        try {
            method = WorkSource.class.getMethod("get", Integer.TYPE);
        } catch (Exception e) {
            method = null;
        }
        return method;
    }
}
