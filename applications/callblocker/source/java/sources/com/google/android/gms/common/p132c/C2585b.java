package com.google.android.gms.common.p132c;

import android.annotation.TargetApi;
import android.app.AppOpsManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Binder;
import android.os.Process;
import com.google.android.gms.common.util.C2716m;
/* renamed from: com.google.android.gms.common.c.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/c/b.class */
public class C2585b {

    /* renamed from: a */
    private final Context f7243a;

    public C2585b(Context context) {
        this.f7243a = context;
    }

    /* renamed from: a */
    public int m14199a(String str) {
        return this.f7243a.checkCallingOrSelfPermission(str);
    }

    /* renamed from: a */
    public int m14196a(String str, String str2) {
        return this.f7243a.getPackageManager().checkPermission(str, str2);
    }

    /* renamed from: a */
    public ApplicationInfo m14198a(String str, int i) {
        return this.f7243a.getPackageManager().getApplicationInfo(str, i);
    }

    /* renamed from: a */
    public final PackageInfo m14197a(String str, int i, int i2) {
        return this.f7243a.getPackageManager().getPackageInfo(str, 64);
    }

    /* renamed from: a */
    public boolean m14202a() {
        String nameForUid;
        return Binder.getCallingUid() == Process.myUid() ? C2584a.m14203a(this.f7243a) : (!C2716m.m13832k() || (nameForUid = this.f7243a.getPackageManager().getNameForUid(Binder.getCallingUid())) == null) ? false : this.f7243a.getPackageManager().isInstantApp(nameForUid);
    }

    @TargetApi(19)
    /* renamed from: a */
    public final boolean m14200a(int i, String str) {
        boolean z;
        if (C2716m.m13837f()) {
            try {
                ((AppOpsManager) this.f7243a.getSystemService("appops")).checkPackage(i, str);
                z = true;
            } catch (SecurityException e) {
                z = false;
            }
        } else {
            String[] packagesForUid = this.f7243a.getPackageManager().getPackagesForUid(i);
            z = false;
            if (str != null) {
                z = false;
                if (packagesForUid != null) {
                    int i2 = 0;
                    while (true) {
                        z = false;
                        if (i2 >= packagesForUid.length) {
                            break;
                        } else if (str.equals(packagesForUid[i2])) {
                            z = true;
                            break;
                        } else {
                            i2++;
                        }
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: a */
    public final String[] m14201a(int i) {
        return this.f7243a.getPackageManager().getPackagesForUid(i);
    }

    /* renamed from: b */
    public PackageInfo m14194b(String str, int i) {
        return this.f7243a.getPackageManager().getPackageInfo(str, i);
    }

    /* renamed from: b */
    public CharSequence m14195b(String str) {
        return this.f7243a.getPackageManager().getApplicationLabel(this.f7243a.getPackageManager().getApplicationInfo(str, 0));
    }
}
