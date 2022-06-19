package com.explorestack.iab.vast.tags;

import com.callapp.contacts.model.Constants;
import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
/* renamed from: com.explorestack.iab.vast.tags.q */
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/tags/q.class */
public final class C9679q extends C9680r {

    /* renamed from: b */
    private static final String[] f32839b = {"version"};

    /* renamed from: a */
    public final List<C9665c> f32840a = new ArrayList();

    public C9679q(XmlPullParser xmlPullParser) throws Exception {
        super(xmlPullParser);
        xmlPullParser.require(2, null, "VAST");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (m23848a(xmlPullParser.getName(), Constants.f26733AD)) {
                    this.f32840a.add(new C9665c(xmlPullParser));
                } else {
                    m23837f(xmlPullParser);
                }
            }
        }
        xmlPullParser.require(3, null, "VAST");
    }

    /* renamed from: d */
    public final boolean m23851d() {
        List<C9665c> list = this.f32840a;
        return list != null && list.size() > 0;
    }

    @Override // com.explorestack.iab.vast.tags.C9680r
    /* renamed from: w_ */
    public final String[] mo23829w_() {
        return f32839b;
    }
}
