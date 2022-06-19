package p193e.p1577m.p1578a.p1580b.p1581i.p1582e;

import e.m.d.r.d;
import e.m.d.r.e;
import e.m.d.r.f;
import java.io.IOException;
/* renamed from: e.m.a.b.i.e.e */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/i/e/e.class */
public final class C24004e implements e<AbstractC24023q> {

    /* renamed from: a */
    public static final C24004e f66509a = new C24004e();

    /* renamed from: b */
    public static final d f66510b = d.a("eventTimeMs");

    /* renamed from: c */
    public static final d f66511c = d.a("eventCode");

    /* renamed from: d */
    public static final d f66512d = d.a("eventUptimeMs");

    /* renamed from: e */
    public static final d f66513e = d.a("sourceExtension");

    /* renamed from: f */
    public static final d f66514f = d.a("sourceExtensionJsonProto3");

    /* renamed from: g */
    public static final d f66515g = d.a("timezoneOffsetSeconds");

    /* renamed from: h */
    public static final d f66516h = d.a("networkConnectionInfo");

    public void encode(Object obj, Object obj2) throws IOException {
        AbstractC24023q abstractC24023q = (AbstractC24023q) obj;
        f fVar = (f) obj2;
        fVar.add(f66510b, abstractC24023q.mo5611b());
        fVar.add(f66511c, abstractC24023q.mo5612a());
        fVar.add(f66512d, abstractC24023q.mo5610c());
        fVar.add(f66513e, abstractC24023q.mo5608e());
        fVar.add(f66514f, abstractC24023q.mo5607f());
        fVar.add(f66515g, abstractC24023q.mo5606g());
        fVar.add(f66516h, abstractC24023q.mo5609d());
    }
}
