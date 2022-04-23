package p081h.p160h.p179e.p180a.p190p;

import java.lang.reflect.Method;
import p081h.p160h.p179e.p180a.C6343d;
import p081h.p160h.p179e.p180a.p183i.C6363f;
/* renamed from: h.h.e.a.p.i */
/* loaded from: classes2-dex2jar.jar:h/h/e/a/p/i.class */
public class C6438i {

    /* renamed from: a */
    public static Class f16047a;

    /* renamed from: b */
    public static Method f16048b;

    /* renamed from: c */
    public static Method f16049c;

    /* renamed from: d */
    public static Method f16050d;

    /* renamed from: e */
    public static Method f16051e;

    /* renamed from: f */
    public static Method f16052f;

    /* renamed from: g */
    public static boolean f16053g = false;

    /* renamed from: a */
    public static void m22586a(C6363f fVar) {
        try {
            if (f16051e != null) {
                f16051e.invoke(null, fVar);
            }
        } catch (Exception e) {
            f16051e = null;
        }
    }

    /* renamed from: a */
    public static void m22585a(String str) {
        try {
            if (f16047a == null) {
                f16047a = Class.forName(str);
            }
        } catch (Exception e) {
        }
    }

    /* renamed from: a */
    public static void m22584a(String str, int i) {
        Class cls = f16047a;
        if (cls != null) {
            try {
                if (i == 1) {
                    f16048b = cls.getMethod(str, String.class);
                } else if (i == 2) {
                    f16049c = cls.getMethod(str, String.class);
                } else if (i == 3) {
                    f16050d = cls.getMethod(str, String.class);
                } else if (i == 4) {
                    f16051e = cls.getMethod(str, C6363f.class);
                } else if (i == 5) {
                    f16052f = cls.getMethod(str, String.class);
                }
            } catch (Exception e) {
            }
        } else {
            throw new C6343d("Log class init failed");
        }
    }

    /* renamed from: a */
    public static void m22583a(Throwable th) {
        if (f16053g) {
            th.printStackTrace();
        }
    }

    /* renamed from: a */
    public static void m22582a(Method method, String str) {
        if (method != null) {
            try {
                method.invoke(null, str);
            } catch (Exception e) {
            }
        }
    }

    /* renamed from: a */
    public static void m22581a(boolean z) {
        f16053g = z;
    }

    /* renamed from: b */
    public static void m22580b(String str) {
        m22584a(str, 1);
    }

    /* renamed from: c */
    public static void m22579c(String str) {
        m22582a(f16048b, str);
    }

    /* renamed from: d */
    public static void m22578d(String str) {
        m22582a(f16049c, str);
    }

    /* renamed from: e */
    public static void m22577e(String str) {
        m22582a(f16050d, str);
    }

    /* renamed from: f */
    public static void m22576f(String str) {
        m22582a(f16052f, str);
    }
}
