package com.google.android.gms.common;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Log;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.common.p132c.C2586c;
import javax.annotation.CheckReturnValue;
@CheckReturnValue
/* renamed from: com.google.android.gms.common.i */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/i.class */
public class C2596i {

    /* renamed from: a */
    private static C2596i f7282a;

    /* renamed from: b */
    private final Context f7283b;

    private C2596i(Context context) {
        this.f7283b = context.getApplicationContext();
    }

    /* renamed from: a */
    public static C2596i m14146a(Context context) {
        C2662s.m13981a(context);
        synchronized (C2596i.class) {
            try {
                if (f7282a == null) {
                    C2679n.m13905a(context);
                    f7282a = new C2596i(context);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f7282a;
    }

    /* renamed from: a */
    private static AbstractBinderC2680o m14143a(PackageInfo packageInfo, AbstractBinderC2680o... abstractBinderC2680oArr) {
        AbstractBinderC2680o abstractBinderC2680o;
        int i = 0;
        if (packageInfo.signatures != null) {
            if (packageInfo.signatures.length == 1) {
                BinderC2683r binderC2683r = new BinderC2683r(packageInfo.signatures[0].toByteArray());
                while (true) {
                    if (i >= abstractBinderC2680oArr.length) {
                        abstractBinderC2680o = null;
                        break;
                    } else if (abstractBinderC2680oArr[i].equals(binderC2683r)) {
                        abstractBinderC2680o = abstractBinderC2680oArr[i];
                        break;
                    } else {
                        i++;
                    }
                }
            } else {
                Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
                abstractBinderC2680o = null;
            }
        } else {
            abstractBinderC2680o = null;
        }
        return abstractBinderC2680o;
    }

    /* renamed from: a */
    private final C2727w m14142a(String str, int i) {
        C2727w m13803a;
        try {
            PackageInfo m14197a = C2586c.m14193a(this.f7283b).m14197a(str, 64, i);
            boolean m14153b = C2595h.m14153b(this.f7283b);
            if (m14197a == null) {
                m13803a = C2727w.m13803a("null pkg");
            } else if (m14197a.signatures == null || m14197a.signatures.length != 1) {
                m13803a = C2727w.m13803a("single cert required");
            } else {
                BinderC2683r binderC2683r = new BinderC2683r(m14197a.signatures[0].toByteArray());
                String str2 = m14197a.packageName;
                C2727w m13904a = C2679n.m13904a(str2, binderC2683r, m14153b, false);
                m13803a = m13904a;
                if (m13904a.f7543a) {
                    m13803a = m13904a;
                    if (m14197a.applicationInfo != null) {
                        m13803a = m13904a;
                        if ((m14197a.applicationInfo.flags & 2) != 0) {
                            m13803a = m13904a;
                            if (C2679n.m13904a(str2, binderC2683r, false, true).f7543a) {
                                m13803a = C2727w.m13803a("debuggable release cert app rejected");
                            }
                        }
                    }
                }
            }
        } catch (PackageManager.NameNotFoundException e) {
            String valueOf = String.valueOf(str);
            m13803a = C2727w.m13803a(valueOf.length() != 0 ? "no pkg ".concat(valueOf) : new String("no pkg "));
        }
        return m13803a;
    }

    /* renamed from: a */
    public static boolean m14144a(PackageInfo packageInfo, boolean z) {
        boolean z2;
        if (packageInfo != null && packageInfo.signatures != null) {
            if ((z ? m14143a(packageInfo, C2699t.f7499a) : m14143a(packageInfo, C2699t.f7499a[0])) != null) {
                z2 = true;
                return z2;
            }
        }
        z2 = false;
        return z2;
    }

    /* renamed from: a */
    public boolean m14147a(int i) {
        C2727w c2727w;
        String[] m14201a = C2586c.m14193a(this.f7283b).m14201a(i);
        if (m14201a != null && m14201a.length != 0) {
            c2727w = null;
            int length = m14201a.length;
            int i2 = 0;
            while (i2 < length) {
                C2727w m14142a = m14142a(m14201a[i2], i);
                c2727w = m14142a;
                if (m14142a.f7543a) {
                    break;
                }
                i2++;
                c2727w = m14142a;
            }
        } else {
            c2727w = C2727w.m13803a("no pkgs");
        }
        c2727w.m13799c();
        return c2727w.f7543a;
    }

    /* renamed from: a */
    public boolean m14145a(PackageInfo packageInfo) {
        boolean z;
        if (packageInfo == null) {
            z = false;
        } else if (m14144a(packageInfo, false)) {
            z = true;
        } else {
            z = false;
            if (m14144a(packageInfo, true)) {
                if (C2595h.m14153b(this.f7283b)) {
                    z = true;
                } else {
                    Log.w("GoogleSignatureVerifier", "Test-keys aren't accepted on this build.");
                    z = false;
                }
            }
        }
        return z;
    }
}
