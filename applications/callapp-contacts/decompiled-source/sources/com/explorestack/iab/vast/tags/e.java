package com.explorestack.iab.vast.tags;

import com.explorestack.iab.vast.VastLog;
import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/tags/e.class */
public final class e extends g {

    /* renamed from: a  reason: collision with root package name */
    public final List<f> f19299a = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(XmlPullParser xmlPullParser) throws Exception {
        super(xmlPullParser);
        xmlPullParser.require(2, null, "CompanionAds");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (a(xmlPullParser.getName(), "Companion")) {
                    f fVar = new f(xmlPullParser);
                    if (fVar.x_()) {
                        this.f19299a.add(fVar);
                    } else {
                        VastLog.d("VastXmlTag", "Creative Companion: is not valid. Skipping it.");
                    }
                } else {
                    f(xmlPullParser);
                }
            }
        }
        xmlPullParser.require(3, null, "CompanionAds");
    }
}
