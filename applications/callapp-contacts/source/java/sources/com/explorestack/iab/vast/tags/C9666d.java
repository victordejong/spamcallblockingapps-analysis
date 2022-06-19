package com.explorestack.iab.vast.tags;

import com.explorestack.iab.utils.C9593h;
import com.explorestack.iab.vast.AbstractC9619a;
import org.xmlpull.v1.XmlPullParser;
/* renamed from: com.explorestack.iab.vast.tags.d */
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/tags/d.class */
public final class C9666d extends C9671i implements AbstractC9619a {

    /* renamed from: c */
    public C9668f f32789c;

    /* renamed from: k */
    private Integer f32797k;

    /* renamed from: l */
    private Integer f32798l;

    /* renamed from: m */
    private Boolean f32799m;

    /* renamed from: n */
    private Float f32800n;

    /* renamed from: o */
    private boolean f32801o;

    /* renamed from: p */
    private boolean f32802p;

    /* renamed from: q */
    private boolean f32803q;

    /* renamed from: d */
    private final C9593h f32790d = new C9593h();

    /* renamed from: a */
    public final C9593h f32787a = new C9593h();

    /* renamed from: e */
    private final C9593h f32791e = new C9593h();

    /* renamed from: f */
    private final C9593h f32792f = new C9593h();

    /* renamed from: g */
    private final C9593h f32793g = new C9593h();

    /* renamed from: h */
    private final C9593h f32794h = new C9593h();

    /* renamed from: i */
    private final C9593h f32795i = new C9593h();

    /* renamed from: j */
    private final C9593h f32796j = new C9593h();

    /* renamed from: b */
    public final C9674l f32788b = new C9674l();

    public C9666d(XmlPullParser xmlPullParser) throws Exception {
        super(xmlPullParser);
        this.f32801o = false;
        this.f32802p = false;
        this.f32803q = false;
        xmlPullParser.require(2, null, "Extension");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (m23848a(name, "Video")) {
                    m23846a(xmlPullParser, this.f32790d);
                } else if (m23848a(name, "LoadingView")) {
                    m23846a(xmlPullParser, this.f32795i);
                } else if (m23848a(name, "Countdown")) {
                    m23846a(xmlPullParser, this.f32796j);
                } else if (m23848a(name, "Progress")) {
                    m23846a(xmlPullParser, this.f32793g);
                } else if (m23848a(name, "ClosableView")) {
                    m23846a(xmlPullParser, this.f32792f);
                } else if (m23848a(name, "Mute")) {
                    m23846a(xmlPullParser, this.f32791e);
                } else if (m23848a(name, "CTA")) {
                    m23846a(xmlPullParser, this.f32787a);
                } else if (m23848a(name, "RepeatView")) {
                    m23846a(xmlPullParser, this.f32794h);
                } else if (m23848a(name, "Postbanner")) {
                    this.f32788b.m23843c(xmlPullParser);
                } else if (m23848a(name, "Autorotate")) {
                    this.f32799m = Boolean.valueOf(m23839e(xmlPullParser));
                } else if (m23848a(name, "R1")) {
                    this.f32802p = m23839e(xmlPullParser);
                } else if (m23848a(name, "R2")) {
                    this.f32803q = m23839e(xmlPullParser);
                } else if (m23848a(name, "CtaText")) {
                    this.f32787a.f32592j = m23841d(xmlPullParser);
                } else if (m23848a(name, "ShowCta")) {
                    this.f32787a.f32586d = Boolean.valueOf(m23839e(xmlPullParser));
                } else if (m23848a(name, "ShowMute")) {
                    this.f32791e.f32586d = Boolean.valueOf(m23839e(xmlPullParser));
                } else if (m23848a(name, "ShowCompanion")) {
                    this.f32788b.f32831h = m23839e(xmlPullParser);
                } else if (m23848a(name, "CompanionCloseTime")) {
                    int f = m23838f(m23841d(xmlPullParser));
                    if (f >= 0) {
                        this.f32788b.f32829f = f;
                    }
                } else if (m23848a(name, "VideoClickable")) {
                    this.f32801o = m23839e(xmlPullParser);
                } else if (m23848a(name, "CtaXPosition")) {
                    this.f32787a.f32587e = m23834i(m23841d(xmlPullParser));
                } else if (m23848a(name, "CtaYPosition")) {
                    this.f32787a.f32588f = m23833j(m23841d(xmlPullParser));
                } else if (m23848a(name, "CloseXPosition")) {
                    this.f32792f.f32587e = m23834i(m23841d(xmlPullParser));
                } else if (m23848a(name, "CloseYPosition")) {
                    this.f32792f.f32588f = m23833j(m23841d(xmlPullParser));
                } else if (m23848a(name, "MuteXPosition")) {
                    this.f32791e.f32587e = m23834i(m23841d(xmlPullParser));
                } else if (m23848a(name, "MuteYPosition")) {
                    this.f32791e.f32588f = m23833j(m23841d(xmlPullParser));
                } else if (m23848a(name, "AssetsColor")) {
                    Integer h = m23835h(m23841d(xmlPullParser));
                    if (h != null) {
                        this.f32797k = h;
                    }
                } else if (m23848a(name, "AssetsBackgroundColor")) {
                    Integer h2 = m23835h(m23841d(xmlPullParser));
                    if (h2 != null) {
                        this.f32798l = h2;
                    }
                } else if (m23848a(name, "Companion")) {
                    C9668f c9668f = new C9668f(xmlPullParser);
                    if (c9668f.mo23831x_() && c9668f.m23854f()) {
                        this.f32789c = c9668f;
                    }
                } else if (m23848a(name, "CloseTime")) {
                    String d = m23841d(xmlPullParser);
                    if (d != null) {
                        this.f32800n = Float.valueOf(Float.parseFloat(d));
                    }
                } else if (m23848a(name, "ShowProgress")) {
                    this.f32793g.f32586d = Boolean.valueOf(m23839e(xmlPullParser));
                } else {
                    m23837f(xmlPullParser);
                }
            }
        }
        xmlPullParser.require(3, null, "Extension");
    }

    @Override // com.explorestack.iab.vast.AbstractC9619a
    /* renamed from: a */
    public final C9674l mo23872a() {
        return this.f32788b;
    }

    @Override // com.explorestack.iab.vast.AbstractC9619a
    /* renamed from: b */
    public final C9593h mo23871b() {
        return this.f32790d;
    }

    @Override // com.explorestack.iab.vast.AbstractC9619a
    /* renamed from: c */
    public final C9593h mo23870c() {
        return this.f32787a;
    }

    @Override // com.explorestack.iab.vast.AbstractC9619a
    /* renamed from: d */
    public final C9593h mo23869d() {
        return this.f32791e;
    }

    @Override // com.explorestack.iab.vast.AbstractC9619a
    /* renamed from: e */
    public final C9593h mo23868e() {
        return this.f32792f;
    }

    @Override // com.explorestack.iab.vast.AbstractC9619a
    /* renamed from: f */
    public final C9593h mo23867f() {
        return this.f32793g;
    }

    @Override // com.explorestack.iab.vast.AbstractC9619a
    /* renamed from: g */
    public final C9593h mo23866g() {
        return this.f32794h;
    }

    @Override // com.explorestack.iab.vast.AbstractC9619a
    /* renamed from: h */
    public final C9593h mo23865h() {
        return this.f32795i;
    }

    @Override // com.explorestack.iab.vast.AbstractC9619a
    /* renamed from: i */
    public final C9593h mo23864i() {
        return this.f32796j;
    }

    @Override // com.explorestack.iab.vast.AbstractC9619a
    /* renamed from: j */
    public final Integer mo23863j() {
        return this.f32797k;
    }

    @Override // com.explorestack.iab.vast.AbstractC9619a
    /* renamed from: k */
    public final Integer mo23862k() {
        return this.f32798l;
    }

    @Override // com.explorestack.iab.vast.AbstractC9619a
    /* renamed from: l */
    public final Boolean mo23861l() {
        return this.f32799m;
    }

    @Override // com.explorestack.iab.vast.AbstractC9619a
    /* renamed from: m */
    public final Float mo23860m() {
        return this.f32800n;
    }

    @Override // com.explorestack.iab.vast.AbstractC9619a
    /* renamed from: n */
    public final boolean mo23859n() {
        return this.f32801o;
    }

    @Override // com.explorestack.iab.vast.AbstractC9619a
    /* renamed from: o */
    public final boolean mo23858o() {
        return this.f32802p;
    }

    @Override // com.explorestack.iab.vast.AbstractC9619a
    /* renamed from: p */
    public final boolean mo23857p() {
        return this.f32803q;
    }
}
