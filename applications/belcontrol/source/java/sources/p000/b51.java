package p000;

import android.text.TextUtils;
/* renamed from: b51 */
/* loaded from: classes-dex2jar.jar:b51.class */
public class b51 {
    /* renamed from: a */
    public static void m5791a() {
        if (m31.c()) {
            return;
        }
        throw new IllegalStateException("Method called before OM SDK activation");
    }

    /* renamed from: b */
    public static void m5790b(c41 c41Var, z31 z31Var, b41 b41Var) {
        if (c41Var != c41.NONE) {
            if (z31Var == z31.b && c41Var == c41.NATIVE) {
                throw new IllegalArgumentException("ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript");
            }
            if (b41Var != b41.DEFINED_BY_JAVASCRIPT || c41Var != c41.NATIVE) {
                return;
            }
            throw new IllegalArgumentException("ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript");
        }
        throw new IllegalArgumentException("Impression owner is none");
    }

    /* renamed from: c */
    public static void m5789c(f41 f41Var) {
        if (!f41Var.q()) {
            return;
        }
        throw new IllegalStateException("AdSession is started");
    }

    /* renamed from: d */
    public static void m5788d(Object obj, String str) {
        if (obj != null) {
            return;
        }
        throw new IllegalArgumentException(str);
    }

    /* renamed from: e */
    public static void m5787e(String str, int i, String str2) {
        if (str.length() <= i) {
            return;
        }
        throw new IllegalArgumentException(str2);
    }

    /* renamed from: f */
    public static void m5786f(String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            return;
        }
        throw new IllegalArgumentException(str2);
    }

    /* renamed from: g */
    public static void m5785g(f41 f41Var) {
        if (!f41Var.r()) {
            return;
        }
        throw new IllegalStateException("AdSession is finished");
    }

    /* renamed from: h */
    public static void m5784h(f41 f41Var) {
        m5779m(f41Var);
        m5785g(f41Var);
    }

    /* renamed from: i */
    public static void m5783i(f41 f41Var) {
        if (f41Var.t().m1964p() == null) {
            return;
        }
        throw new IllegalStateException("AdEvents already exists for AdSession");
    }

    /* renamed from: j */
    public static void m5782j(f41 f41Var) {
        if (f41Var.t().m1963q() == null) {
            return;
        }
        throw new IllegalStateException("MediaEvents already exists for AdSession");
    }

    /* renamed from: k */
    public static void m5781k(f41 f41Var) {
        if (f41Var.u()) {
            return;
        }
        throw new IllegalStateException("Impression event is not expected from the Native AdSession");
    }

    /* renamed from: l */
    public static void m5780l(f41 f41Var) {
        if (f41Var.v()) {
            return;
        }
        throw new IllegalStateException("Cannot create MediaEvents for JavaScript AdSession");
    }

    /* renamed from: m */
    public static void m5779m(f41 f41Var) {
        if (f41Var.q()) {
            return;
        }
        throw new IllegalStateException("AdSession is not started");
    }
}
