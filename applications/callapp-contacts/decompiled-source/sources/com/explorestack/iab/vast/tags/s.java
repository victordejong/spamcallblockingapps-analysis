package com.explorestack.iab.vast.tags;

import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/tags/s.class */
public final class s extends r {

    /* renamed from: a  reason: collision with root package name */
    public String f19322a;

    /* renamed from: b  reason: collision with root package name */
    public List<String> f19323b;

    /* renamed from: c  reason: collision with root package name */
    private List<String> f19324c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(XmlPullParser xmlPullParser) throws Exception {
        super(xmlPullParser);
        xmlPullParser.require(2, null, "VideoClicks");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (a(name, "ClickThrough")) {
                    this.f19322a = d(xmlPullParser);
                } else if (a(name, "ClickTracking")) {
                    String d2 = d(xmlPullParser);
                    if (this.f19323b == null) {
                        this.f19323b = new ArrayList();
                    }
                    this.f19323b.add(d2);
                } else if (a(name, "CustomClick")) {
                    String d3 = d(xmlPullParser);
                    if (this.f19324c == null) {
                        this.f19324c = new ArrayList();
                    }
                    this.f19324c.add(d3);
                } else {
                    f(xmlPullParser);
                }
            }
        }
        xmlPullParser.require(3, null, "VideoClicks");
    }
}
