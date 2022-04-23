package com.explorestack.iab.vast.tags;

import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/tags/h.class */
public final class h extends r {

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f19304b = {"id", "adID"};

    /* renamed from: a  reason: collision with root package name */
    public g f19305a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(XmlPullParser xmlPullParser) throws Exception {
        super(xmlPullParser);
        xmlPullParser.require(2, null, "Creative");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (a(name, "Linear")) {
                    this.f19305a = new k(xmlPullParser);
                } else if (a(name, "CompanionAds")) {
                    this.f19305a = new e(xmlPullParser);
                } else {
                    f(xmlPullParser);
                }
            }
        }
        xmlPullParser.require(3, null, "Creative");
    }

    @Override // com.explorestack.iab.vast.tags.r
    public final String[] w_() {
        return f19304b;
    }
}
