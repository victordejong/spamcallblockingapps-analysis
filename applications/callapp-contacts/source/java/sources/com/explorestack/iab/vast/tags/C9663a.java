package com.explorestack.iab.vast.tags;

import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
/* renamed from: com.explorestack.iab.vast.tags.a */
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/tags/a.class */
public class C9663a extends C9680r {

    /* renamed from: a */
    public List<C9670h> f32779a;

    /* renamed from: b */
    public List<C9671i> f32780b;

    /* renamed from: c */
    public List<String> f32781c;

    /* renamed from: d */
    public List<String> f32782d;

    /* renamed from: e */
    private C9664b f32783e;

    public C9663a(XmlPullParser xmlPullParser) throws Exception {
        super(xmlPullParser);
    }

    /* renamed from: a_ */
    public static List<C9670h> m23875a_(XmlPullParser xmlPullParser) throws Exception {
        xmlPullParser.require(2, null, "Creatives");
        ArrayList arrayList = new ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (m23848a(xmlPullParser.getName(), "Creative")) {
                    arrayList.add(new C9670h(xmlPullParser));
                } else {
                    m23837f(xmlPullParser);
                }
            }
        }
        xmlPullParser.require(3, null, "Creatives");
        return arrayList;
    }

    /* renamed from: b */
    public static List<C9671i> m23873b(XmlPullParser xmlPullParser) throws Exception {
        xmlPullParser.require(2, null, "Extensions");
        ArrayList arrayList = new ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (!m23848a(xmlPullParser.getName(), "Extension")) {
                    m23837f(xmlPullParser);
                } else if (m23848a(new C9671i(xmlPullParser).m23844c("type"), "appodeal")) {
                    arrayList.add(new C9666d(xmlPullParser));
                } else {
                    m23837f(xmlPullParser);
                }
            }
        }
        xmlPullParser.require(3, null, "Extensions");
        return arrayList;
    }

    /* renamed from: a */
    public final void m23877a(C9664b c9664b) {
        this.f32783e = c9664b;
    }

    /* renamed from: a */
    public final void m23876a(String str) {
        if (this.f32781c == null) {
            this.f32781c = new ArrayList();
        }
        this.f32781c.add(str);
    }

    /* renamed from: b */
    public final void m23874b(String str) {
        if (this.f32782d == null) {
            this.f32782d = new ArrayList();
        }
        this.f32782d.add(str);
    }
}
