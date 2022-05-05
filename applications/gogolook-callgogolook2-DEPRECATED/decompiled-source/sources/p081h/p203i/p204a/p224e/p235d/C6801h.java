package p081h.p203i.p204a.p224e.p235d;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import javax.annotation.CheckReturnValue;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p235d.p251t.C7097c;
@CheckReturnValue
/* renamed from: h.i.a.e.d.h */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/h.class */
public class C6801h {

    /* renamed from: b */
    public static C6801h f16697b;

    /* renamed from: a */
    public final Context f16698a;

    public C6801h(Context context) {
        this.f16698a = context.getApplicationContext();
    }

    /* renamed from: a */
    public static C6801h m21873a(Context context) {
        C7021t.m21290a(context);
        synchronized (C6801h.class) {
            try {
                if (f16697b == null) {
                    C7100w.m21084a(context);
                    f16697b = new C6801h(context);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f16697b;
    }

    /* renamed from: a */
    public static AbstractBinderC7101x m21870a(PackageInfo packageInfo, AbstractBinderC7101x... xVarArr) {
        Signature[] signatureArr = packageInfo.signatures;
        if (signatureArr == null || signatureArr.length != 1) {
            return null;
        }
        BinderC6787a0 a0Var = new BinderC6787a0(signatureArr[0].toByteArray());
        for (int i = 0; i < xVarArr.length; i++) {
            if (xVarArr[i].equals(a0Var)) {
                return xVarArr[i];
            }
        }
        return null;
    }

    /* renamed from: a */
    public static boolean m21871a(PackageInfo packageInfo, boolean z) {
        if (packageInfo == null || packageInfo.signatures == null) {
            return false;
        }
        return (z ? m21870a(packageInfo, C6792c0.f16687a) : m21870a(packageInfo, C6792c0.f16687a[0])) != null;
    }

    /* renamed from: a */
    public final C6796e0 m21869a(String str, int i) {
        try {
            PackageInfo a = C7097c.m21085b(this.f16698a).m21090a(str, 64, i);
            boolean honorsDebugCertificates = C6799g.honorsDebugCertificates(this.f16698a);
            if (a == null) {
                return C6796e0.m21882a("null pkg");
            }
            if (a.signatures != null && a.signatures.length == 1) {
                BinderC6787a0 a0Var = new BinderC6787a0(a.signatures[0].toByteArray());
                String str2 = a.packageName;
                C6796e0 a2 = C7100w.m21083a(str2, a0Var, honorsDebugCertificates, false);
                return (!a2.f16692a || a.applicationInfo == null || (a.applicationInfo.flags & 2) == 0 || !C7100w.m21083a(str2, a0Var, false, true).f16692a) ? a2 : C6796e0.m21882a("debuggable release cert app rejected");
            }
            return C6796e0.m21882a("single cert required");
        } catch (PackageManager.NameNotFoundException e) {
            String valueOf = String.valueOf(str);
            return C6796e0.m21882a(valueOf.length() != 0 ? "no pkg ".concat(valueOf) : new String("no pkg "));
        }
    }

    /* renamed from: a */
    public boolean m21874a(int i) {
        C6796e0 e0Var;
        String[] a = C7097c.m21085b(this.f16698a).m21094a(i);
        if (a != null && a.length != 0) {
            e0Var = null;
            int length = a.length;
            int i2 = 0;
            while (i2 < length) {
                C6796e0 a2 = m21869a(a[i2], i);
                e0Var = a2;
                if (a2.f16692a) {
                    break;
                }
                i2++;
                e0Var = a2;
            }
        } else {
            e0Var = C6796e0.m21882a("no pkgs");
        }
        e0Var.m21878b();
        return e0Var.f16692a;
    }

    /* renamed from: a */
    public boolean m21872a(PackageInfo packageInfo) {
        if (packageInfo == null) {
            return false;
        }
        if (m21871a(packageInfo, false)) {
            return true;
        }
        return m21871a(packageInfo, true) && C6799g.honorsDebugCertificates(this.f16698a);
    }
}
