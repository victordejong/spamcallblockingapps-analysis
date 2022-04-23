package com.explorestack.iab.vast.tags;

import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/tags/t.class */
public final class t extends a {
    private static final String[] f = {"followAdditionalWrappers", "allowMultipleAds", "fallbackOnNoAd"};
    public String e;

    public t(XmlPullParser xmlPullParser) throws Exception {
        super(xmlPullParser);
        xmlPullParser.require(2, null, "Wrapper");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (a(name, "Creatives")) {
                    ((a) this).f19288a = a_(xmlPullParser);
                } else if (a(name, "Extensions")) {
                    ((a) this).f19289b = b(xmlPullParser);
                } else if (a(name, "Impression")) {
                    a(d(xmlPullParser));
                } else if (a(name, "Error")) {
                    b(d(xmlPullParser));
                } else if (a(name, "AdSystem")) {
                    a(new b(xmlPullParser));
                } else if (a(name, "VASTAdTagURI")) {
                    this.e = d(xmlPullParser);
                } else {
                    f(xmlPullParser);
                }
            }
        }
        xmlPullParser.require(3, null, "Wrapper");
    }

    @Override // com.explorestack.iab.vast.tags.r
    public final String[] w_() {
        return f;
    }
}
