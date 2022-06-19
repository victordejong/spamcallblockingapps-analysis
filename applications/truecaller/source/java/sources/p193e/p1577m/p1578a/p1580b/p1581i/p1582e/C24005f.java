package p193e.p1577m.p1578a.p1580b.p1581i.p1582e;

import e.m.d.r.d;
import e.m.d.r.e;
import e.m.d.r.f;
import java.io.IOException;
/* renamed from: e.m.a.b.i.e.f */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/i/e/f.class */
public final class C24005f implements e<AbstractC24025r> {

    /* renamed from: a */
    public static final C24005f f66517a = new C24005f();

    /* renamed from: b */
    public static final d f66518b = d.a("requestTimeMs");

    /* renamed from: c */
    public static final d f66519c = d.a("requestUptimeMs");

    /* renamed from: d */
    public static final d f66520d = d.a("clientInfo");

    /* renamed from: e */
    public static final d f66521e = d.a("logSource");

    /* renamed from: f */
    public static final d f66522f = d.a("logSourceName");

    /* renamed from: g */
    public static final d f66523g = d.a("logEvent");

    /* renamed from: h */
    public static final d f66524h = d.a("qosTier");

    public void encode(Object obj, Object obj2) throws IOException {
        AbstractC24025r abstractC24025r = (AbstractC24025r) obj;
        f fVar = (f) obj2;
        fVar.add(f66518b, abstractC24025r.mo5600f());
        fVar.add(f66519c, abstractC24025r.mo5599g());
        fVar.add(f66520d, abstractC24025r.mo5605a());
        fVar.add(f66521e, abstractC24025r.mo5603c());
        fVar.add(f66522f, abstractC24025r.mo5602d());
        fVar.add(f66523g, abstractC24025r.mo5604b());
        fVar.add(f66524h, abstractC24025r.mo5601e());
    }
}
