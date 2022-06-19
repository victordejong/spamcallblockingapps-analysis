package com.explorestack.iab.vast.tags;

import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
/* renamed from: com.explorestack.iab.vast.tags.s */
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/tags/s.class */
public final class C9681s extends C9680r {

    /* renamed from: a */
    public String f32843a;

    /* renamed from: b */
    public List<String> f32844b;

    /* renamed from: c */
    private List<String> f32845c;

    public C9681s(XmlPullParser xmlPullParser) throws Exception {
        super(xmlPullParser);
        xmlPullParser.require(2, null, "VideoClicks");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (m23848a(name, "ClickThrough")) {
                    this.f32843a = m23841d(xmlPullParser);
                } else if (m23848a(name, "ClickTracking")) {
                    String d = m23841d(xmlPullParser);
                    if (this.f32844b == null) {
                        this.f32844b = new ArrayList();
                    }
                    this.f32844b.add(d);
                } else if (m23848a(name, "CustomClick")) {
                    String d2 = m23841d(xmlPullParser);
                    if (this.f32845c == null) {
                        this.f32845c = new ArrayList();
                    }
                    this.f32845c.add(d2);
                } else {
                    m23837f(xmlPullParser);
                }
            }
        }
        xmlPullParser.require(3, null, "VideoClicks");
    }
}
