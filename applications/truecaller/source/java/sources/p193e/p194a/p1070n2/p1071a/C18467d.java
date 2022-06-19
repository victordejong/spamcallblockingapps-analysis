package p193e.p194a.p1070n2.p1071a;

import com.razorpay.AnalyticsConstants;
import java.util.LinkedHashMap;
import s1.u.i;
import s1.z.c.l;
import u3.a0;
import u3.b0;
import u3.g0;
import u3.j0;
import u3.k0;
import u3.p0.c;
import u3.z;
/* renamed from: e.a.n2.a.d */
/* loaded from: classes4-dex2jar.jar:e/a/n2/a/d.class */
public final class C18467d implements b0 {
    /* renamed from: a */
    public k0 m14885a(b0.a aVar) {
        l.e(aVar, "chain");
        g0 request = aVar.request();
        l.f(request, "request");
        new LinkedHashMap();
        a0 a0Var = request.b;
        String str = request.c;
        j0 j0Var = request.e;
        LinkedHashMap linkedHashMap = request.f.isEmpty() ? new LinkedHashMap() : i.b1(request.f);
        z.a c = request.d.c();
        l.f("clientSecret", AnalyticsConstants.NAME);
        l.f("lvc22mp3l1sfv6ujg83rd17btt", "value");
        c.a("clientSecret", "lvc22mp3l1sfv6ujg83rd17btt");
        if (a0Var != null) {
            return aVar.a(new g0(a0Var, str, c.d(), j0Var, c.y(linkedHashMap)));
        }
        throw new IllegalStateException("url == null".toString());
    }
}
