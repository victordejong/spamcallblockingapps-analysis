package p193e.p194a.p1221t.p1230b.p1235d;

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
/* renamed from: e.a.t.b.d.a */
/* loaded from: classes5-dex2jar.jar:e/a/t/b/d/a.class */
public final /* synthetic */ class C20381a implements b0 {

    /* renamed from: a */
    public final /* synthetic */ String f57257a;

    /* renamed from: b */
    public final /* synthetic */ String f57258b;

    public /* synthetic */ C20381a(String str, String str2) {
        this.f57257a = str;
        this.f57258b = str2;
    }

    /* renamed from: a */
    public final k0 m11218a(b0.a aVar) {
        String str = this.f57257a;
        String str2 = this.f57258b;
        g0 request = aVar.request();
        l.f(request, "request");
        new LinkedHashMap();
        a0 a0Var = request.b;
        String str3 = request.c;
        j0 j0Var = request.e;
        LinkedHashMap linkedHashMap = request.f.isEmpty() ? new LinkedHashMap() : i.b1(request.f);
        z.a c = request.d.c();
        l.f("sdkVersion", AnalyticsConstants.NAME);
        l.f("2.6.0", "value");
        c.a("sdkVersion", "2.6.0");
        l.f("sdkVariant", AnalyticsConstants.NAME);
        l.f(str, "value");
        c.a("sdkVariant", str);
        l.f("sdkVariantVersion", AnalyticsConstants.NAME);
        l.f(str2, "value");
        c.a("sdkVariantVersion", str2);
        if (a0Var != null) {
            return aVar.a(new g0(a0Var, str3, c.d(), j0Var, c.y(linkedHashMap)));
        }
        throw new IllegalStateException("url == null".toString());
    }
}
