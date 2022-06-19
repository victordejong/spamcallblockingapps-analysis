package com.google.android.gms.common.p352d;

import android.app.AppOpsManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Binder;
import android.os.Process;
import com.google.android.gms.common.util.C12110n;
/* renamed from: com.google.android.gms.common.d.b */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/d/b.class */
public final class C11945b {

    /* renamed from: a */
    protected final Context f39432a;

    public C11945b(Context context) {
        this.f39432a = context;
    }

    /* renamed from: a */
    public final int m19263a(String str) {
        return this.f39432a.checkCallingOrSelfPermission(str);
    }

    /* renamed from: a */
    public final int m19261a(String str, String str2) {
        return this.f39432a.getPackageManager().checkPermission(str, str2);
    }

    /* renamed from: a */
    public final ApplicationInfo m19262a(String str, int i) throws PackageManager.NameNotFoundException {
        return this.f39432a.getPackageManager().getApplicationInfo(str, i);
    }

    /* renamed from: a */
    public final boolean m19265a() {
        String nameForUid;
        if (Binder.getCallingUid() == Process.myUid()) {
            return C11944a.m19266a(this.f39432a);
        }
        if (C12110n.m19012j() && (nameForUid = this.f39432a.getPackageManager().getNameForUid(Binder.getCallingUid())) != null) {
            return this.f39432a.getPackageManager().isInstantApp(nameForUid);
        }
        return false;
    }

    /* renamed from: a */
    public final boolean m19264a(int i, String str) {
        if (C12110n.m19017e()) {
            try {
                AppOpsManager appOpsManager = (AppOpsManager) this.f39432a.getSystemService("appops");
                if (appOpsManager == null) {
                    throw new NullPointerException("context.getSystemService(Context.APP_OPS_SERVICE) is null");
                }
                appOpsManager.checkPackage(i, str);
                return true;
            } catch (SecurityException e) {
                return false;
            }
        }
        String[] packagesForUid = this.f39432a.getPackageManager().getPackagesForUid(i);
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

    /* renamed from: b */
    public final PackageInfo m19259b(String str, int i) throws PackageManager.NameNotFoundException {
        return this.f39432a.getPackageManager().getPackageInfo(str, i);
    }

    /* renamed from: b */
    public final CharSequence m19260b(String str) throws PackageManager.NameNotFoundException {
        return this.f39432a.getPackageManager().getApplicationLabel(this.f39432a.getPackageManager().getApplicationInfo(str, 0));
    }
}
