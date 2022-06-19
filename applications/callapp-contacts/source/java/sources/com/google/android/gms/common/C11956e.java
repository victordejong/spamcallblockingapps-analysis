package com.google.android.gms.common;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Log;
import com.google.android.gms.common.internal.C12045o;
/* renamed from: com.google.android.gms.common.e */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/e.class */
public class C11956e {

    /* renamed from: b */
    private static C11956e f39446b;

    /* renamed from: a */
    public final Context f39447a;

    /* renamed from: c */
    private volatile String f39448c;

    public C11956e(Context context) {
        this.f39447a = context.getApplicationContext();
    }

    /* renamed from: a */
    private final C11807aa m19244a(String str) {
        C11807aa m19472a;
        if (str == null) {
            return C11807aa.m19472a("null pkg");
        }
        if (str.equals(this.f39448c)) {
            return C11807aa.m19468b();
        }
        if (C12092t.m19065a()) {
            m19472a = C12092t.m19062a(str, C11943d.honorsDebugCertificates(this.f39447a));
        } else {
            try {
                PackageInfo packageInfo = this.f39447a.getPackageManager().getPackageInfo(str, 64);
                boolean honorsDebugCertificates = C11943d.honorsDebugCertificates(this.f39447a);
                if (packageInfo == null) {
                    m19472a = C11807aa.m19472a("null pkg");
                } else if (packageInfo.signatures == null || packageInfo.signatures.length != 1) {
                    m19472a = C11807aa.m19472a("single cert required");
                } else {
                    BinderC12067q binderC12067q = new BinderC12067q(packageInfo.signatures[0].toByteArray());
                    String str2 = packageInfo.packageName;
                    m19472a = C12092t.m19063a(str2, binderC12067q, honorsDebugCertificates, false);
                    if (m19472a.f39168a && packageInfo.applicationInfo != null && (packageInfo.applicationInfo.flags & 2) != 0 && C12092t.m19063a(str2, binderC12067q, false, true).f39168a) {
                        m19472a = C11807aa.m19472a("debuggable release cert app rejected");
                    }
                }
            } catch (PackageManager.NameNotFoundException e) {
                return C11807aa.m19470a(str.length() != 0 ? "no pkg ".concat(str) : new String("no pkg "), e);
            }
        }
        if (m19472a.f39168a) {
            this.f39448c = str;
        }
        return m19472a;
    }

    /* renamed from: a */
    public static C11956e m19247a(Context context) {
        C12045o.m19162a(context);
        synchronized (C11956e.class) {
            try {
                if (f39446b == null) {
                    C12092t.m19064a(context);
                    f39446b = new C11956e(context);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f39446b;
    }

    /* renamed from: a */
    private static AbstractBinderC12066p m19245a(PackageInfo packageInfo, AbstractBinderC12066p... abstractBinderC12066pArr) {
        if (packageInfo.signatures == null) {
            return null;
        }
        if (packageInfo.signatures.length != 1) {
            Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
            return null;
        }
        BinderC12067q binderC12067q = new BinderC12067q(packageInfo.signatures[0].toByteArray());
        for (int i = 0; i < abstractBinderC12066pArr.length; i++) {
            if (abstractBinderC12066pArr[i].equals(binderC12067q)) {
                return abstractBinderC12066pArr[i];
            }
        }
        return null;
    }

    /* renamed from: a */
    public static final boolean m19246a(PackageInfo packageInfo, boolean z) {
        if (packageInfo == null || packageInfo.signatures == null) {
            return false;
        }
        return (z ? m19245a(packageInfo, C12069s.f39587a) : m19245a(packageInfo, C12069s.f39587a[0])) != null;
    }

    /* renamed from: a */
    public final boolean m19248a(int i) {
        C11807aa c11807aa;
        int length;
        String[] packagesForUid = this.f39447a.getPackageManager().getPackagesForUid(i);
        if (packagesForUid != null && (length = packagesForUid.length) != 0) {
            c11807aa = null;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    C12045o.m19162a(c11807aa);
                    break;
                }
                c11807aa = m19244a(packagesForUid[i2]);
                if (c11807aa.f39168a) {
                    break;
                }
                i2++;
            }
        } else {
            c11807aa = C11807aa.m19472a("no pkgs");
        }
        if (!c11807aa.f39168a && Log.isLoggable("GoogleCertificatesRslt", 3)) {
            if (c11807aa.f39170c != null) {
                c11807aa.mo18997a();
            } else {
                c11807aa.mo18997a();
            }
        }
        return c11807aa.f39168a;
    }
}
