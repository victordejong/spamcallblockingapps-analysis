package okhttp3.internal.p092b;

import java.net.Proxy;
import okhttp3.C2089s;
import okhttp3.C2104z;
/* renamed from: okhttp3.internal.b.i */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/b/i.class */
public final class C1995i {
    /* renamed from: a */
    public static String m2369a(C2089s c2089s) {
        String m1932i = c2089s.m1932i();
        String m1930k = c2089s.m1930k();
        String str = m1932i;
        if (m1930k != null) {
            str = m1932i + '?' + m1930k;
        }
        return str;
    }

    /* renamed from: a */
    public static String m2368a(C2104z c2104z, Proxy.Type type) {
        StringBuilder sb = new StringBuilder();
        sb.append(c2104z.m1821b());
        sb.append(' ');
        if (m2367b(c2104z, type)) {
            sb.append(c2104z.m1823a());
        } else {
            sb.append(m2369a(c2104z.m1823a()));
        }
        sb.append(" HTTP/1.1");
        return sb.toString();
    }

    /* renamed from: b */
    private static boolean m2367b(C2104z c2104z, Proxy.Type type) {
        return !c2104z.m1816g() && type == Proxy.Type.HTTP;
    }
}
