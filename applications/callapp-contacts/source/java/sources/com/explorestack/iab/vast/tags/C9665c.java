package com.explorestack.iab.vast.tags;

import com.callapp.contacts.model.Constants;
import org.xmlpull.v1.XmlPullParser;
/* renamed from: com.explorestack.iab.vast.tags.c */
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/tags/c.class */
public final class C9665c extends C9680r {

    /* renamed from: b */
    private static final String[] f32785b = {"id"};

    /* renamed from: a */
    public C9663a f32786a;

    public C9665c(XmlPullParser xmlPullParser) throws Exception {
        super(xmlPullParser);
        xmlPullParser.require(2, null, Constants.f26733AD);
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (m23848a(name, "InLine")) {
                    this.f32786a = new C9672j(xmlPullParser);
                } else if (m23848a(name, "Wrapper")) {
                    this.f32786a = new C9682t(xmlPullParser);
                } else {
                    m23837f(xmlPullParser);
                }
            }
        }
        xmlPullParser.require(3, null, Constants.f26733AD);
    }

    @Override // com.explorestack.iab.vast.tags.C9680r
    /* renamed from: w_ */
    public final String[] mo23829w_() {
        return f32785b;
    }
}
