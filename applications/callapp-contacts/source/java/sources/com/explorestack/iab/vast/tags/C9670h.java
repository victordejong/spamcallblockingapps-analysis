package com.explorestack.iab.vast.tags;

import org.xmlpull.v1.XmlPullParser;
/* renamed from: com.explorestack.iab.vast.tags.h */
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/tags/h.class */
public final class C9670h extends C9680r {

    /* renamed from: b */
    private static final String[] f32813b = {"id", "adID"};

    /* renamed from: a */
    public C9669g f32814a;

    public C9670h(XmlPullParser xmlPullParser) throws Exception {
        super(xmlPullParser);
        xmlPullParser.require(2, null, "Creative");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (m23848a(name, "Linear")) {
                    this.f32814a = new C9673k(xmlPullParser);
                } else if (m23848a(name, "CompanionAds")) {
                    this.f32814a = new C9667e(xmlPullParser);
                } else {
                    m23837f(xmlPullParser);
                }
            }
        }
        xmlPullParser.require(3, null, "Creative");
    }

    @Override // com.explorestack.iab.vast.tags.C9680r
    /* renamed from: w_ */
    public final String[] mo23829w_() {
        return f32813b;
    }
}
