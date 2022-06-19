package p193e.p194a.p1011l.p1013c.p1014a.p1015i3;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import p193e.p194a.p1011l.p1013c.p1014a.C16717p;
import p193e.p194a.p613c0.C10912h;
import s1.z.c.l;
/* renamed from: e.a.l.c.a.i3.c */
/* loaded from: classes12-dex2jar.jar:e/a/l/c/a/i3/c.class */
public final class C16687c implements AbstractC16686b {

    /* renamed from: a */
    public final C16690f f46831a;

    @Inject
    public C16687c(C16690f c16690f, C10912h c10912h) {
        l.e(c16690f, "rankRepository");
        l.e(c10912h, "experimentRegistry");
        this.f46831a = c16690f;
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.p1015i3.AbstractC16686b
    /* renamed from: a */
    public C16685a mo17123a() {
        return new C16685a(this.f46831a.f46832a.mo17107a(), 0, false, 6);
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.p1015i3.AbstractC16686b
    /* renamed from: b */
    public C16685a mo17122b() {
        return new C16685a(this.f46831a.f46832a.mo17106b(), 0, false, 6);
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.p1015i3.AbstractC16686b
    /* renamed from: c */
    public C16685a mo17121c() {
        return new C16685a(this.f46831a.f46832a.mo17105c(), 0, false, 6);
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.p1015i3.AbstractC16686b
    /* renamed from: d */
    public C16685a mo17120d() {
        return new C16685a(this.f46831a.f46832a.mo17104d(), 0, false, 6);
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.p1015i3.AbstractC16686b
    /* renamed from: e */
    public C16685a mo17119e() {
        return new C16685a(this.f46831a.f46832a.mo17103e(), 0, false, 6);
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.p1015i3.AbstractC16686b
    /* renamed from: f */
    public C16685a mo17118f() {
        return new C16685a(this.f46831a.f46832a.mo17102f(), 0, false, 6);
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.p1015i3.AbstractC16686b
    /* renamed from: g */
    public C16685a mo17117g() {
        return new C16685a(this.f46831a.f46832a.mo17101g(), 0, false, 6);
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.p1015i3.AbstractC16686b
    /* renamed from: h */
    public C16685a mo17116h() {
        return new C16685a(this.f46831a.f46832a.mo17100h(), 0, false, 6);
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.p1015i3.AbstractC16686b
    /* renamed from: i */
    public C16685a mo17115i() {
        return new C16685a(this.f46831a.f46832a.mo17099i(), 0, false, 6);
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.p1015i3.AbstractC16686b
    /* renamed from: j */
    public C16685a mo17114j() {
        return new C16685a(this.f46831a.f46832a.mo17098j(), 0, false, 6);
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.p1015i3.AbstractC16686b
    /* renamed from: k */
    public C16685a mo17113k() {
        return new C16685a(this.f46831a.f46832a.mo17097k(), 0, false, 6);
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.p1015i3.AbstractC16686b
    /* renamed from: l */
    public C16685a mo17112l() {
        return new C16685a(this.f46831a.f46832a.mo17096l(), 0, false, 6);
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.p1015i3.AbstractC16686b
    /* renamed from: m */
    public C16685a mo17111m() {
        return new C16685a(this.f46831a.f46832a.mo17095m(), 0, false, 6);
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.p1015i3.AbstractC16686b
    /* renamed from: n */
    public C16685a mo17110n() {
        return new C16685a(this.f46831a.f46832a.mo17094n(), 0, false, 6);
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.p1015i3.AbstractC16686b
    /* renamed from: o */
    public C16685a mo17109o() {
        return new C16685a(this.f46831a.f46832a.mo17093o(), 0, false, 6);
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.p1015i3.AbstractC16686b
    /* renamed from: p */
    public Map<C16685a, C16717p> mo17108p(List<C16717p> list) {
        l.e(list, "cards");
        if (list.isEmpty()) {
            return null;
        }
        int mo17092p = this.f46831a.f46832a.mo17092p();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int i = 0;
        for (C16717p c16717p : list) {
            linkedHashMap.put(new C16685a(mo17092p, i, false), c16717p);
            i += 3;
        }
        return linkedHashMap;
    }
}
