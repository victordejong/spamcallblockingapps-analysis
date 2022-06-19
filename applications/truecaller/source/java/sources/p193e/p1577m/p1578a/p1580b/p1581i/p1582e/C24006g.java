package p193e.p1577m.p1578a.p1580b.p1581i.p1582e;

import e.m.d.r.d;
import e.m.d.r.e;
import e.m.d.r.f;
import java.io.IOException;
/* renamed from: e.m.a.b.i.e.g */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/i/e/g.class */
public final class C24006g implements e<AbstractC24027t> {

    /* renamed from: a */
    public static final C24006g f66525a = new C24006g();

    /* renamed from: b */
    public static final d f66526b = d.a("networkType");

    /* renamed from: c */
    public static final d f66527c = d.a("mobileSubtype");

    public void encode(Object obj, Object obj2) throws IOException {
        AbstractC24027t abstractC24027t = (AbstractC24027t) obj;
        f fVar = (f) obj2;
        fVar.add(f66526b, abstractC24027t.mo5595b());
        fVar.add(f66527c, abstractC24027t.mo5596a());
    }
}
