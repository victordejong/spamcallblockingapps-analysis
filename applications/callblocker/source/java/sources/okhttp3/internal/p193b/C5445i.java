package okhttp3.internal.p193b;

import java.net.Proxy;
import okhttp3.C5400aa;
import okhttp3.C5541t;
/* renamed from: okhttp3.internal.b.i */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/b/i.class */
public final class C5445i {
    /* renamed from: a */
    public static String m690a(C5400aa c5400aa, Proxy.Type type) {
        StringBuilder sb = new StringBuilder();
        sb.append(c5400aa.m825b());
        sb.append(' ');
        if (m688b(c5400aa, type)) {
            sb.append(c5400aa.m827a());
        } else {
            sb.append(m689a(c5400aa.m827a()));
        }
        sb.append(" HTTP/1.1");
        return sb.toString();
    }

    /* renamed from: a */
    public static String m689a(C5541t c5541t) {
        String m246h = c5541t.m246h();
        String m243k = c5541t.m243k();
        String str = m246h;
        if (m243k != null) {
            str = m246h + '?' + m243k;
        }
        return str;
    }

    /* renamed from: b */
    private static boolean m688b(C5400aa c5400aa, Proxy.Type type) {
        return !c5400aa.m820g() && type == Proxy.Type.HTTP;
    }
}
