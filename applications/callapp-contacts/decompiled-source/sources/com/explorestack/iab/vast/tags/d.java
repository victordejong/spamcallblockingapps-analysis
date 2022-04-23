package com.explorestack.iab.vast.tags;

import com.explorestack.iab.utils.h;
import com.explorestack.iab.vast.a;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/tags/d.class */
public final class d extends i implements a {

    /* renamed from: c  reason: collision with root package name */
    public f f19297c;
    private Integer k;
    private Integer l;
    private Boolean m;
    private Float n;
    private boolean o;
    private boolean p;
    private boolean q;

    /* renamed from: d  reason: collision with root package name */
    private final h f19298d = new h();

    /* renamed from: a  reason: collision with root package name */
    public final h f19295a = new h();
    private final h e = new h();
    private final h f = new h();
    private final h g = new h();
    private final h h = new h();
    private final h i = new h();
    private final h j = new h();

    /* renamed from: b  reason: collision with root package name */
    public final l f19296b = new l();

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(XmlPullParser xmlPullParser) throws Exception {
        super(xmlPullParser);
        this.o = false;
        this.p = false;
        this.q = false;
        xmlPullParser.require(2, null, "Extension");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (a(name, "Video")) {
                    a(xmlPullParser, this.f19298d);
                } else if (a(name, "LoadingView")) {
                    a(xmlPullParser, this.i);
                } else if (a(name, "Countdown")) {
                    a(xmlPullParser, this.j);
                } else if (a(name, "Progress")) {
                    a(xmlPullParser, this.g);
                } else if (a(name, "ClosableView")) {
                    a(xmlPullParser, this.f);
                } else if (a(name, "Mute")) {
                    a(xmlPullParser, this.e);
                } else if (a(name, "CTA")) {
                    a(xmlPullParser, this.f19295a);
                } else if (a(name, "RepeatView")) {
                    a(xmlPullParser, this.h);
                } else if (a(name, "Postbanner")) {
                    this.f19296b.c(xmlPullParser);
                } else if (a(name, "Autorotate")) {
                    this.m = Boolean.valueOf(e(xmlPullParser));
                } else if (a(name, "R1")) {
                    this.p = e(xmlPullParser);
                } else if (a(name, "R2")) {
                    this.q = e(xmlPullParser);
                } else if (a(name, "CtaText")) {
                    this.f19295a.j = d(xmlPullParser);
                } else if (a(name, "ShowCta")) {
                    this.f19295a.f19187d = Boolean.valueOf(e(xmlPullParser));
                } else if (a(name, "ShowMute")) {
                    this.e.f19187d = Boolean.valueOf(e(xmlPullParser));
                } else if (a(name, "ShowCompanion")) {
                    this.f19296b.h = e(xmlPullParser);
                } else if (a(name, "CompanionCloseTime")) {
                    int f = f(d(xmlPullParser));
                    if (f >= 0) {
                        this.f19296b.f = f;
                    }
                } else if (a(name, "VideoClickable")) {
                    this.o = e(xmlPullParser);
                } else if (a(name, "CtaXPosition")) {
                    this.f19295a.e = i(d(xmlPullParser));
                } else if (a(name, "CtaYPosition")) {
                    this.f19295a.f = j(d(xmlPullParser));
                } else if (a(name, "CloseXPosition")) {
                    this.f.e = i(d(xmlPullParser));
                } else if (a(name, "CloseYPosition")) {
                    this.f.f = j(d(xmlPullParser));
                } else if (a(name, "MuteXPosition")) {
                    this.e.e = i(d(xmlPullParser));
                } else if (a(name, "MuteYPosition")) {
                    this.e.f = j(d(xmlPullParser));
                } else if (a(name, "AssetsColor")) {
                    Integer h = h(d(xmlPullParser));
                    if (h != null) {
                        this.k = h;
                    }
                } else if (a(name, "AssetsBackgroundColor")) {
                    Integer h2 = h(d(xmlPullParser));
                    if (h2 != null) {
                        this.l = h2;
                    }
                } else if (a(name, "Companion")) {
                    f fVar = new f(xmlPullParser);
                    if (fVar.x_() && fVar.f()) {
                        this.f19297c = fVar;
                    }
                } else if (a(name, "CloseTime")) {
                    String d2 = d(xmlPullParser);
                    if (d2 != null) {
                        this.n = Float.valueOf(Float.parseFloat(d2));
                    }
                } else if (a(name, "ShowProgress")) {
                    this.g.f19187d = Boolean.valueOf(e(xmlPullParser));
                } else {
                    f(xmlPullParser);
                }
            }
        }
        xmlPullParser.require(3, null, "Extension");
    }

    @Override // com.explorestack.iab.vast.a
    public final l a() {
        return this.f19296b;
    }

    @Override // com.explorestack.iab.vast.a
    public final h b() {
        return this.f19298d;
    }

    @Override // com.explorestack.iab.vast.a
    public final h c() {
        return this.f19295a;
    }

    @Override // com.explorestack.iab.vast.a
    public final h d() {
        return this.e;
    }

    @Override // com.explorestack.iab.vast.a
    public final h e() {
        return this.f;
    }

    @Override // com.explorestack.iab.vast.a
    public final h f() {
        return this.g;
    }

    @Override // com.explorestack.iab.vast.a
    public final h g() {
        return this.h;
    }

    @Override // com.explorestack.iab.vast.a
    public final h h() {
        return this.i;
    }

    @Override // com.explorestack.iab.vast.a
    public final h i() {
        return this.j;
    }

    @Override // com.explorestack.iab.vast.a
    public final Integer j() {
        return this.k;
    }

    @Override // com.explorestack.iab.vast.a
    public final Integer k() {
        return this.l;
    }

    @Override // com.explorestack.iab.vast.a
    public final Boolean l() {
        return this.m;
    }

    @Override // com.explorestack.iab.vast.a
    public final Float m() {
        return this.n;
    }

    @Override // com.explorestack.iab.vast.a
    public final boolean n() {
        return this.o;
    }

    @Override // com.explorestack.iab.vast.a
    public final boolean o() {
        return this.p;
    }

    @Override // com.explorestack.iab.vast.a
    public final boolean p() {
        return this.q;
    }
}
