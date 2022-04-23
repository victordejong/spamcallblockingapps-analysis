package com.explorestack.iab.vast.tags;

import com.callapp.contacts.model.Constants;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/tags/c.class */
public final class c extends r {

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f19293b = {"id"};

    /* renamed from: a  reason: collision with root package name */
    public a f19294a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(XmlPullParser xmlPullParser) throws Exception {
        super(xmlPullParser);
        xmlPullParser.require(2, null, Constants.AD);
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (a(name, "InLine")) {
                    this.f19294a = new j(xmlPullParser);
                } else if (a(name, "Wrapper")) {
                    this.f19294a = new t(xmlPullParser);
                } else {
                    f(xmlPullParser);
                }
            }
        }
        xmlPullParser.require(3, null, Constants.AD);
    }

    @Override // com.explorestack.iab.vast.tags.r
    public final String[] w_() {
        return f19293b;
    }
}
