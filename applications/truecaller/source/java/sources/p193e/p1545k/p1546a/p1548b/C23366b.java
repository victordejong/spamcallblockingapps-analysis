package p193e.p1545k.p1546a.p1548b;

import com.tenor.android.core.constant.StringConstant;
/* renamed from: e.k.a.b.b */
/* loaded from: classes2-dex2jar.jar:e/k/a/b/b.class */
public final class C23366b {

    /* renamed from: a */
    public static final C23344a f64605a;

    /* renamed from: b */
    public static final C23344a f64606b;

    /* renamed from: c */
    public static final C23344a f64607c;

    /* renamed from: d */
    public static final C23344a f64608d;

    static {
        C23344a c23344a = new C23344a("MIME", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", true, '=', 76);
        f64605a = c23344a;
        f64606b = new C23344a(c23344a, "MIME-NO-LINEFEEDS", true, '=', c23344a.f64556h, Integer.MAX_VALUE);
        f64607c = new C23344a(c23344a, "PEM", true, '=', c23344a.f64556h, 64);
        StringBuilder sb = new StringBuilder("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/");
        sb.setCharAt(sb.indexOf("+"), '-');
        sb.setCharAt(sb.indexOf(StringConstant.SLASH), '_');
        f64608d = new C23344a("MODIFIED-FOR-URL", sb.toString(), false, (char) 0, Integer.MAX_VALUE);
    }
}
