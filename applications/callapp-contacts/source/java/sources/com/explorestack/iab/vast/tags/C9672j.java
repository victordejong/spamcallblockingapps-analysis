package com.explorestack.iab.vast.tags;

import org.xmlpull.v1.XmlPullParser;
/* renamed from: com.explorestack.iab.vast.tags.j */
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/tags/j.class */
public final class C9672j extends C9663a {
    public C9672j(XmlPullParser xmlPullParser) throws Exception {
        super(xmlPullParser);
        xmlPullParser.require(2, null, "InLine");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (m23848a(name, "Creatives")) {
                    ((C9663a) this).f32779a = m23875a_(xmlPullParser);
                } else if (m23848a(name, "Extensions")) {
                    ((C9663a) this).f32780b = m23873b(xmlPullParser);
                } else if (m23848a(name, "Impression")) {
                    m23876a(m23841d(xmlPullParser));
                } else if (m23848a(name, "Error")) {
                    m23874b(m23841d(xmlPullParser));
                } else if (m23848a(name, "AdSystem")) {
                    m23877a(new C9664b(xmlPullParser));
                } else {
                    m23837f(xmlPullParser);
                }
            }
        }
        xmlPullParser.require(3, null, "InLine");
    }
}
