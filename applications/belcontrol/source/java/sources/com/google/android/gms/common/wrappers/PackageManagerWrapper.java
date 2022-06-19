package com.google.android.gms.common.wrappers;

import android.annotation.TargetApi;
import android.app.AppOpsManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.graphics.drawable.Drawable;
import android.os.Binder;
import android.os.Process;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.PlatformVersion;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/wrappers/PackageManagerWrapper.class */
public class PackageManagerWrapper {
    @RecentlyNonNull
    public final Context zza;

    public PackageManagerWrapper(@RecentlyNonNull Context context) {
        this.zza = context;
    }

    @KeepForSdk
    public int checkCallingOrSelfPermission(@RecentlyNonNull String str) {
        return this.zza.checkCallingOrSelfPermission(str);
    }

    @KeepForSdk
    public int checkPermission(@RecentlyNonNull String str, @RecentlyNonNull String str2) {
        return this.zza.getPackageManager().checkPermission(str, str2);
    }

    @RecentlyNonNull
    @KeepForSdk
    public ApplicationInfo getApplicationInfo(@RecentlyNonNull String str, int i) {
        return this.zza.getPackageManager().getApplicationInfo(str, i);
    }

    @RecentlyNonNull
    @KeepForSdk
    public CharSequence getApplicationLabel(@RecentlyNonNull String str) {
        return this.zza.getPackageManager().getApplicationLabel(this.zza.getPackageManager().getApplicationInfo(str, 0));
    }

    @RecentlyNonNull
    @KeepForSdk
    public ka<CharSequence, Drawable> getApplicationLabelAndIcon(@RecentlyNonNull String str) {
        ApplicationInfo applicationInfo = this.zza.getPackageManager().getApplicationInfo(str, 0);
        return ka.a(this.zza.getPackageManager().getApplicationLabel(applicationInfo), this.zza.getPackageManager().getApplicationIcon(applicationInfo));
    }

    @RecentlyNonNull
    @KeepForSdk
    public PackageInfo getPackageInfo(@RecentlyNonNull String str, int i) {
        return this.zza.getPackageManager().getPackageInfo(str, i);
    }

    @KeepForSdk
    public boolean isCallerInstantApp() {
        String nameForUid;
        if (Binder.getCallingUid() == Process.myUid()) {
            return InstantApps.isInstantApp(this.zza);
        }
        if (PlatformVersion.isAtLeastO() && (nameForUid = this.zza.getPackageManager().getNameForUid(Binder.getCallingUid())) != null) {
            return this.zza.getPackageManager().isInstantApp(nameForUid);
        }
        return false;
    }

    @TargetApi(19)
    public final boolean zza(int i, @RecentlyNonNull String str) {
        if (PlatformVersion.isAtLeastKitKat()) {
            try {
                AppOpsManager appOpsManager = (AppOpsManager) this.zza.getSystemService("appops");
                if (appOpsManager == null) {
                    throw new NullPointerException("context.getSystemService(Context.APP_OPS_SERVICE) is null");
                }
                appOpsManager.checkPackage(i, str);
                return true;
            } catch (SecurityException e) {
                return false;
            }
        }
        String[] packagesForUid = this.zza.getPackageManager().getPackagesForUid(i);
        if (str == null || packagesForUid == null) {
            return false;
        }
        for (String str2 : packagesForUid) {
            if (str.equals(str2)) {
                return true;
            }
        }
        return false;
    }
}
