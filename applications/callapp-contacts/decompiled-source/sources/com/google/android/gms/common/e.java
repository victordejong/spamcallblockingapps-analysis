package com.google.android.gms.common;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Log;
import com.google.android.gms.common.internal.o;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/e.class */
public class e {

    /* renamed from: b  reason: collision with root package name */
    private static e f22807b;

    /* renamed from: a  reason: collision with root package name */
    public final Context f22808a;

    /* renamed from: c  reason: collision with root package name */
    private volatile String f22809c;

    public e(Context context) {
        this.f22808a = context.getApplicationContext();
    }

    private final aa a(String str) {
        aa a2;
        if (str == null) {
            return aa.a("null pkg");
        }
        if (str.equals(this.f22809c)) {
            return aa.b();
        }
        if (t.a()) {
            a2 = t.a(str, d.honorsDebugCertificates(this.f22808a));
        } else {
            try {
                PackageInfo packageInfo = this.f22808a.getPackageManager().getPackageInfo(str, 64);
                boolean honorsDebugCertificates = d.honorsDebugCertificates(this.f22808a);
                if (packageInfo == null) {
                    a2 = aa.a("null pkg");
                } else if (packageInfo.signatures == null || packageInfo.signatures.length != 1) {
                    a2 = aa.a("single cert required");
                } else {
                    q qVar = new q(packageInfo.signatures[0].toByteArray());
                    String str2 = packageInfo.packageName;
                    a2 = t.a(str2, qVar, honorsDebugCertificates, false);
                    if (a2.f22603a && packageInfo.applicationInfo != null && (packageInfo.applicationInfo.flags & 2) != 0 && t.a(str2, qVar, false, true).f22603a) {
                        a2 = aa.a("debuggable release cert app rejected");
                    }
                }
            } catch (PackageManager.NameNotFoundException e) {
                return aa.a(str.length() != 0 ? "no pkg ".concat(str) : new String("no pkg "), e);
            }
        }
        if (a2.f22603a) {
            this.f22809c = str;
        }
        return a2;
    }

    public static e a(Context context) {
        o.a(context);
        synchronized (e.class) {
            try {
                if (f22807b == null) {
                    t.a(context);
                    f22807b = new e(context);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f22807b;
    }

    private static p a(PackageInfo packageInfo, p... pVarArr) {
        if (packageInfo.signatures == null) {
            return null;
        }
        if (packageInfo.signatures.length != 1) {
            Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
            return null;
        }
        q qVar = new q(packageInfo.signatures[0].toByteArray());
        for (int i = 0; i < pVarArr.length; i++) {
            if (pVarArr[i].equals(qVar)) {
                return pVarArr[i];
            }
        }
        return null;
    }

    public static final boolean a(PackageInfo packageInfo, boolean z) {
        if (packageInfo == null || packageInfo.signatures == null) {
            return false;
        }
        return (z ? a(packageInfo, s.f22921a) : a(packageInfo, s.f22921a[0])) != null;
    }

    public final boolean a(int i) {
        aa aaVar;
        int length;
        String[] packagesForUid = this.f22808a.getPackageManager().getPackagesForUid(i);
        if (packagesForUid != null && (length = packagesForUid.length) != 0) {
            aaVar = null;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    o.a(aaVar);
                    break;
                }
                aaVar = a(packagesForUid[i2]);
                if (aaVar.f22603a) {
                    break;
                }
                i2++;
            }
        } else {
            aaVar = aa.a("no pkgs");
        }
        if (!aaVar.f22603a && Log.isLoggable("GoogleCertificatesRslt", 3)) {
            if (aaVar.f22605c != null) {
                aaVar.a();
            } else {
                aaVar.a();
            }
        }
        return aaVar.f22603a;
    }
}
