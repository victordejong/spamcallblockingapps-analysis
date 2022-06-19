package com.explorestack.iab.vast.tags;

import com.explorestack.iab.vast.VastLog;
import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
/* renamed from: com.explorestack.iab.vast.tags.e */
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/tags/e.class */
public final class C9667e extends C9669g {

    /* renamed from: a */
    public final List<C9668f> f32804a = new ArrayList();

    public C9667e(XmlPullParser xmlPullParser) throws Exception {
        super(xmlPullParser);
        xmlPullParser.require(2, null, "CompanionAds");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (m23848a(xmlPullParser.getName(), "Companion")) {
                    C9668f c9668f = new C9668f(xmlPullParser);
                    if (c9668f.mo23831x_()) {
                        this.f32804a.add(c9668f);
                    } else {
                        VastLog.m24015d("VastXmlTag", "Creative Companion: is not valid. Skipping it.");
                    }
                } else {
                    m23837f(xmlPullParser);
                }
            }
        }
        xmlPullParser.require(3, null, "CompanionAds");
    }
}
