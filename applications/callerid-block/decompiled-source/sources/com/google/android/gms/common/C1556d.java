package com.google.android.gms.common;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.util.Log;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.internal.C1581h;
import javax.annotation.CheckReturnValue;
import javax.annotation.Nullable;
@CheckReturnValue
/* renamed from: com.google.android.gms.common.d */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/d.class */
public class C1556d {
    @Nullable

    /* renamed from: c */
    private static C1556d f5816c;

    /* renamed from: a */
    private final Context f5817a;

    /* renamed from: b */
    private volatile String f5818b;

    public C1556d(@RecentlyNonNull Context context) {
        this.f5817a = context.getApplicationContext();
    }

    @RecentlyNonNull
    /* renamed from: a */
    public static C1556d m8444a(@RecentlyNonNull Context context) {
        C1581h.m8347h(context);
        synchronized (C1556d.class) {
            try {
                if (f5816c == null) {
                    C1598s.m8273a(context);
                    f5816c = new C1556d(context);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f5816c;
    }

    @Nullable
    /* renamed from: d */
    static final o m8441d(PackageInfo packageInfo, o... oVarArr) {
        Signature[] signatureArr = packageInfo.signatures;
        if (signatureArr == null) {
            return null;
        }
        if (signatureArr.length != 1) {
            Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
            return null;
        }
        p pVar = new p(packageInfo.signatures[0].toByteArray());
        for (int i = 0; i < oVarArr.length; i++) {
            if (oVarArr[i].equals(pVar)) {
                return oVarArr[i];
            }
        }
        return null;
    }

    /* renamed from: e */
    public static final boolean m8440e(@RecentlyNonNull PackageInfo packageInfo, boolean z) {
        if (packageInfo == null || packageInfo.signatures == null) {
            return false;
        }
        return (z ? m8441d(packageInfo, C1597r.f5881a) : m8441d(packageInfo, C1597r.f5881a[0])) != null;
    }

    @SuppressLint({"PackageManagerGetSignatures"})
    /* renamed from: f */
    private final C1631z m8439f(String str, boolean z, boolean z2) {
        C1631z c;
        ApplicationInfo applicationInfo;
        String str2 = "null pkg";
        if (str == null) {
            return C1631z.m8189d("null pkg");
        }
        if (str.equals(this.f5818b)) {
            return C1631z.m8191b();
        }
        if (C1598s.m8270d()) {
            c = C1598s.m8272b(str, C1555c.m8450c(this.f5817a), false, false);
        } else {
            try {
                PackageInfo packageInfo = this.f5817a.getPackageManager().getPackageInfo(str, 64);
                boolean c2 = C1555c.m8450c(this.f5817a);
                if (packageInfo != null) {
                    Signature[] signatureArr = packageInfo.signatures;
                    if (signatureArr == null || signatureArr.length != 1) {
                        str2 = "single cert required";
                    } else {
                        p pVar = new p(packageInfo.signatures[0].toByteArray());
                        String str3 = packageInfo.packageName;
                        c = C1598s.m8271c(str3, pVar, c2, false);
                        if (c.f5907a && (applicationInfo = packageInfo.applicationInfo) != null && (applicationInfo.flags & 2) != 0 && C1598s.m8271c(str3, pVar, false, true).f5907a) {
                            str2 = "debuggable release cert app rejected";
                        }
                    }
                }
                c = C1631z.m8189d(str2);
            } catch (PackageManager.NameNotFoundException e) {
                return C1631z.m8188e(str.length() != 0 ? "no pkg ".concat(str) : new String("no pkg "), e);
            }
        }
        if (c.f5907a) {
            this.f5818b = str;
        }
        return c;
    }

    /* renamed from: b */
    public boolean m8443b(@RecentlyNonNull PackageInfo packageInfo) {
        if (packageInfo == null) {
            return false;
        }
        if (m8440e(packageInfo, false)) {
            return true;
        }
        if (!m8440e(packageInfo, true)) {
            return false;
        }
        if (C1555c.m8450c(this.f5817a)) {
            return true;
        }
        Log.w("GoogleSignatureVerifier", "Test-keys aren't accepted on this build.");
        return false;
    }

    /* renamed from: c */
    public boolean m8442c(int i) {
        C1631z zVar;
        int length;
        String[] packagesForUid = this.f5817a.getPackageManager().getPackagesForUid(i);
        if (packagesForUid != null && (length = packagesForUid.length) != 0) {
            zVar = null;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    C1581h.m8347h(zVar);
                    break;
                }
                zVar = m8439f(packagesForUid[i2], false, false);
                if (zVar.f5907a) {
                    break;
                }
                i2++;
            }
        } else {
            zVar = C1631z.m8189d("no pkgs");
        }
        zVar.m8187f();
        return zVar.f5907a;
    }
}
