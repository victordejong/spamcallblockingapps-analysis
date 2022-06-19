package com.google.android.gms.common;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.util.Log;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.internal.C6155o;
/* renamed from: com.google.android.gms.common.f */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/f.class */
public class C6096f {

    /* renamed from: a */
    private static C6096f f19418a;

    /* renamed from: b */
    private final Context f19419b;

    /* renamed from: c */
    private volatile String f19420c;

    public C6096f(@RecentlyNonNull Context context) {
        this.f19419b = context.getApplicationContext();
    }

    @RecentlyNonNull
    /* renamed from: a */
    public static C6096f m17191a(@RecentlyNonNull Context context) {
        C6155o.m17018j(context);
        synchronized (C6096f.class) {
            try {
                if (f19418a == null) {
                    C6250x.m16757a(context);
                    f19418a = new C6096f(context);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f19418a;
    }

    /* renamed from: d */
    static final AbstractBinderC6221t m17188d(PackageInfo packageInfo, AbstractBinderC6221t... abstractBinderC6221tArr) {
        Signature[] signatureArr = packageInfo.signatures;
        if (signatureArr == null) {
            return null;
        }
        if (signatureArr.length != 1) {
            Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
            return null;
        }
        BinderC6222u binderC6222u = new BinderC6222u(packageInfo.signatures[0].toByteArray());
        for (int i = 0; i < abstractBinderC6221tArr.length; i++) {
            if (abstractBinderC6221tArr[i].equals(binderC6222u)) {
                return abstractBinderC6221tArr[i];
            }
        }
        return null;
    }

    /* renamed from: e */
    public static final boolean m17187e(@RecentlyNonNull PackageInfo packageInfo, boolean z) {
        if (packageInfo == null || packageInfo.signatures == null) {
            return false;
        }
        return (z ? m17188d(packageInfo, C6249w.f19735a) : m17188d(packageInfo, C6249w.f19735a[0])) != null;
    }

    @SuppressLint({"PackageManagerGetSignatures"})
    /* renamed from: f */
    private final C6095e0 m17186f(String str, boolean z, boolean z2) {
        C6095e0 m17195d;
        ApplicationInfo applicationInfo;
        if (str == null) {
            return C6095e0.m17195d("null pkg");
        }
        if (str.equals(this.f19420c)) {
            return C6095e0.m17197b();
        }
        if (C6250x.m16754d()) {
            m17195d = C6250x.m16756b(str, C6094e.m17205f(this.f19419b), false, false);
        } else {
            try {
                PackageInfo packageInfo = this.f19419b.getPackageManager().getPackageInfo(str, 64);
                boolean m17205f = C6094e.m17205f(this.f19419b);
                if (packageInfo == null) {
                    m17195d = C6095e0.m17195d("null pkg");
                } else {
                    Signature[] signatureArr = packageInfo.signatures;
                    if (signatureArr == null || signatureArr.length != 1) {
                        m17195d = C6095e0.m17195d("single cert required");
                    } else {
                        BinderC6222u binderC6222u = new BinderC6222u(packageInfo.signatures[0].toByteArray());
                        String str2 = packageInfo.packageName;
                        m17195d = C6250x.m16755c(str2, binderC6222u, m17205f, false);
                        if (m17195d.f19415b && (applicationInfo = packageInfo.applicationInfo) != null && (applicationInfo.flags & 2) != 0 && C6250x.m16755c(str2, binderC6222u, false, true).f19415b) {
                            m17195d = C6095e0.m17195d("debuggable release cert app rejected");
                        }
                    }
                }
            } catch (PackageManager.NameNotFoundException e) {
                return C6095e0.m17194e(str.length() != 0 ? "no pkg ".concat(str) : new String("no pkg "), e);
            }
        }
        if (m17195d.f19415b) {
            this.f19420c = str;
        }
        return m17195d;
    }

    /* renamed from: b */
    public boolean m17190b(@RecentlyNonNull PackageInfo packageInfo) {
        if (packageInfo == null) {
            return false;
        }
        if (m17187e(packageInfo, false)) {
            return true;
        }
        if (!m17187e(packageInfo, true)) {
            return false;
        }
        if (C6094e.m17205f(this.f19419b)) {
            return true;
        }
        Log.w("GoogleSignatureVerifier", "Test-keys aren't accepted on this build.");
        return false;
    }

    /* renamed from: c */
    public boolean m17189c(int i) {
        C6095e0 c6095e0;
        int length;
        String[] packagesForUid = this.f19419b.getPackageManager().getPackagesForUid(i);
        if (packagesForUid != null && (length = packagesForUid.length) != 0) {
            c6095e0 = null;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    C6155o.m17018j(c6095e0);
                    break;
                }
                c6095e0 = m17186f(packagesForUid[i2], false, false);
                if (c6095e0.f19415b) {
                    break;
                }
                i2++;
            }
        } else {
            c6095e0 = C6095e0.m17195d("no pkgs");
        }
        c6095e0.m17193f();
        return c6095e0.f19415b;
    }
}
