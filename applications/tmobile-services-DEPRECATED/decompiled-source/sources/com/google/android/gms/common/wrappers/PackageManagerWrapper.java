package com.google.android.gms.common.wrappers;

import android.annotation.TargetApi;
import android.app.AppOpsManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Binder;
import android.os.Process;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.PlatformVersion;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/wrappers/PackageManagerWrapper.class */
public class PackageManagerWrapper {

    /* renamed from: a */
    private final Context f7666a;

    public PackageManagerWrapper(Context context) {
        this.f7666a = context;
    }

    @KeepForSdk
    /* renamed from: a */
    public int m14287a(String str) {
        return this.f7666a.checkCallingOrSelfPermission(str);
    }

    @KeepForSdk
    /* renamed from: b */
    public int m14286b(String str, String str2) {
        return this.f7666a.getPackageManager().checkPermission(str, str2);
    }

    @KeepForSdk
    /* renamed from: c */
    public ApplicationInfo m14285c(String str, int i) throws PackageManager.NameNotFoundException {
        return this.f7666a.getPackageManager().getApplicationInfo(str, i);
    }

    @KeepForSdk
    /* renamed from: d */
    public CharSequence m14284d(String str) throws PackageManager.NameNotFoundException {
        return this.f7666a.getPackageManager().getApplicationLabel(this.f7666a.getPackageManager().getApplicationInfo(str, 0));
    }

    @KeepForSdk
    /* renamed from: e */
    public PackageInfo m14283e(String str, int i) throws PackageManager.NameNotFoundException {
        return this.f7666a.getPackageManager().getPackageInfo(str, i);
    }

    /* renamed from: f */
    public final String[] m14282f(int i) {
        return this.f7666a.getPackageManager().getPackagesForUid(i);
    }

    @KeepForSdk
    /* renamed from: g */
    public boolean m14281g() {
        String nameForUid;
        if (Binder.getCallingUid() == Process.myUid()) {
            return InstantApps.m14288a(this.f7666a);
        }
        if (!PlatformVersion.m14314i() || (nameForUid = this.f7666a.getPackageManager().getNameForUid(Binder.getCallingUid())) == null) {
            return false;
        }
        return this.f7666a.getPackageManager().isInstantApp(nameForUid);
    }

    /* renamed from: h */
    public final PackageInfo m14280h(String str, int i, int i2) throws PackageManager.NameNotFoundException {
        return this.f7666a.getPackageManager().getPackageInfo(str, 64);
    }

    @TargetApi(19)
    /* renamed from: i */
    public final boolean m14279i(int i, String str) {
        if (PlatformVersion.m14318e()) {
            try {
                ((AppOpsManager) this.f7666a.getSystemService("appops")).checkPackage(i, str);
                return true;
            } catch (SecurityException e) {
                return false;
            }
        } else {
            String[] packagesForUid = this.f7666a.getPackageManager().getPackagesForUid(i);
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
}
