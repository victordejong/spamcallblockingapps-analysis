package com.google.android.gms.common.d;

import android.app.AppOpsManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Binder;
import android.os.Process;
import com.google.android.gms.common.util.n;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/d/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    protected final Context f22793a;

    public b(Context context) {
        this.f22793a = context;
    }

    public final int a(String str) {
        return this.f22793a.checkCallingOrSelfPermission(str);
    }

    public final int a(String str, String str2) {
        return this.f22793a.getPackageManager().checkPermission(str, str2);
    }

    public final ApplicationInfo a(String str, int i) throws PackageManager.NameNotFoundException {
        return this.f22793a.getPackageManager().getApplicationInfo(str, i);
    }

    public final boolean a() {
        String nameForUid;
        if (Binder.getCallingUid() == Process.myUid()) {
            return a.a(this.f22793a);
        }
        if (!n.j() || (nameForUid = this.f22793a.getPackageManager().getNameForUid(Binder.getCallingUid())) == null) {
            return false;
        }
        return this.f22793a.getPackageManager().isInstantApp(nameForUid);
    }

    public final boolean a(int i, String str) {
        if (n.e()) {
            try {
                AppOpsManager appOpsManager = (AppOpsManager) this.f22793a.getSystemService("appops");
                if (appOpsManager != null) {
                    appOpsManager.checkPackage(i, str);
                    return true;
                }
                throw new NullPointerException("context.getSystemService(Context.APP_OPS_SERVICE) is null");
            } catch (SecurityException e) {
                return false;
            }
        } else {
            String[] packagesForUid = this.f22793a.getPackageManager().getPackagesForUid(i);
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

    public final PackageInfo b(String str, int i) throws PackageManager.NameNotFoundException {
        return this.f22793a.getPackageManager().getPackageInfo(str, i);
    }

    public final CharSequence b(String str) throws PackageManager.NameNotFoundException {
        return this.f22793a.getPackageManager().getApplicationLabel(this.f22793a.getPackageManager().getApplicationInfo(str, 0));
    }
}
