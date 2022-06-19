package p193e.p1577m.p1578a.p1580b.p1581i.p1582e;

import com.mopub.network.ImpressionData;
import com.razorpay.AnalyticsConstants;
import e.m.d.r.d;
import e.m.d.r.e;
import e.m.d.r.f;
import java.io.IOException;
/* renamed from: e.m.a.b.i.e.b */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/i/e/b.class */
public final class C24001b implements e<AbstractC24000a> {

    /* renamed from: a */
    public static final C24001b f66491a = new C24001b();

    /* renamed from: b */
    public static final d f66492b = d.a("sdkVersion");

    /* renamed from: c */
    public static final d f66493c = d.a("model");

    /* renamed from: d */
    public static final d f66494d = d.a("hardware");

    /* renamed from: e */
    public static final d f66495e = d.a(AnalyticsConstants.DEVICE);

    /* renamed from: f */
    public static final d f66496f = d.a("product");

    /* renamed from: g */
    public static final d f66497g = d.a("osBuild");

    /* renamed from: h */
    public static final d f66498h = d.a("manufacturer");

    /* renamed from: i */
    public static final d f66499i = d.a("fingerprint");

    /* renamed from: j */
    public static final d f66500j = d.a(AnalyticsConstants.LOCALE);

    /* renamed from: k */
    public static final d f66501k = d.a(ImpressionData.COUNTRY);

    /* renamed from: l */
    public static final d f66502l = d.a("mccMnc");

    /* renamed from: m */
    public static final d f66503m = d.a("applicationBuild");

    public void encode(Object obj, Object obj2) throws IOException {
        AbstractC24000a abstractC24000a = (AbstractC24000a) obj;
        f fVar = (f) obj2;
        fVar.add(f66492b, abstractC24000a.mo5616l());
        fVar.add(f66493c, abstractC24000a.mo5619i());
        fVar.add(f66494d, abstractC24000a.mo5623e());
        fVar.add(f66495e, abstractC24000a.mo5625c());
        fVar.add(f66496f, abstractC24000a.mo5617k());
        fVar.add(f66497g, abstractC24000a.mo5618j());
        fVar.add(f66498h, abstractC24000a.mo5621g());
        fVar.add(f66499i, abstractC24000a.mo5624d());
        fVar.add(f66500j, abstractC24000a.mo5622f());
        fVar.add(f66501k, abstractC24000a.mo5626b());
        fVar.add(f66502l, abstractC24000a.mo5620h());
        fVar.add(f66503m, abstractC24000a.mo5627a());
    }
}
