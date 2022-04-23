package p599h.p600d0.p603g;

import java.net.Proxy;
import p599h.C10236s;
import p599h.C10250y;
/* renamed from: h.d0.g.i */
/* loaded from: classes2-dex2jar.jar:h/d0/g/i.class */
public final class C10145i {
    /* renamed from: a */
    public static String m1299a(C10236s sVar) {
        String c = sVar.m942c();
        String e = sVar.m938e();
        String str = c;
        if (e != null) {
            str = c + '?' + e;
        }
        return str;
    }

    /* renamed from: a */
    public static String m1298a(C10250y yVar, Proxy.Type type) {
        StringBuilder sb = new StringBuilder();
        sb.append(yVar.m815e());
        sb.append(' ');
        if (m1297b(yVar, type)) {
            sb.append(yVar.m813g());
        } else {
            sb.append(m1299a(yVar.m813g()));
        }
        sb.append(" HTTP/1.1");
        return sb.toString();
    }

    /* renamed from: b */
    public static boolean m1297b(C10250y yVar, Proxy.Type type) {
        return !yVar.m816d() && type == Proxy.Type.HTTP;
    }
}
