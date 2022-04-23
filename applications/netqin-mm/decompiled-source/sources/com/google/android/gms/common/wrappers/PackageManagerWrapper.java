package com.google.android.gms.common.wrappers;

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
    public final Context f23580a;

    public PackageManagerWrapper(Context context) {
        this.f23580a = context;
    }

    @KeepForSdk
    /* renamed from: a */
    public int m17033a(String str) {
        return this.f23580a.checkCallingOrSelfPermission(str);
    }

    @KeepForSdk
    /* renamed from: a */
    public int m17030a(String str, String str2) {
        return this.f23580a.getPackageManager().checkPermission(str, str2);
    }

    @KeepForSdk
    /* renamed from: a */
    public ApplicationInfo m17032a(String str, int i) throws PackageManager.NameNotFoundException {
        return this.f23580a.getPackageManager().getApplicationInfo(str, i);
    }

    /* renamed from: a */
    public final PackageInfo m17031a(String str, int i, int i2) throws PackageManager.NameNotFoundException {
        return this.f23580a.getPackageManager().getPackageInfo(str, 64);
    }

    @KeepForSdk
    /* renamed from: a */
    public boolean m17036a() {
        String nameForUid;
        if (Binder.getCallingUid() == Process.myUid()) {
            return InstantApps.m17037a(this.f23580a);
        }
        if (!PlatformVersion.m17057k() || (nameForUid = this.f23580a.getPackageManager().getNameForUid(Binder.getCallingUid())) == null) {
            return false;
        }
        return this.f23580a.getPackageManager().isInstantApp(nameForUid);
    }

    /* renamed from: a */
    public final boolean m17034a(int i, String str) {
        if (PlatformVersion.m17062f()) {
            try {
                ((AppOpsManager) this.f23580a.getSystemService("appops")).checkPackage(i, str);
                return true;
            } catch (SecurityException e) {
                return false;
            }
        } else {
            String[] packagesForUid = this.f23580a.getPackageManager().getPackagesForUid(i);
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

    /* renamed from: a */
    public final String[] m17035a(int i) {
        return this.f23580a.getPackageManager().getPackagesForUid(i);
    }

    @KeepForSdk
    /* renamed from: b */
    public PackageInfo m17028b(String str, int i) throws PackageManager.NameNotFoundException {
        return this.f23580a.getPackageManager().getPackageInfo(str, i);
    }

    @KeepForSdk
    /* renamed from: b */
    public CharSequence m17029b(String str) throws PackageManager.NameNotFoundException {
        return this.f23580a.getPackageManager().getApplicationLabel(this.f23580a.getPackageManager().getApplicationInfo(str, 0));
    }
}
