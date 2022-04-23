package com.explorestack.iab.vast.tags;

import com.callapp.contacts.model.Constants;
import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/tags/q.class */
public final class q extends r {

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f19318b = {"version"};

    /* renamed from: a  reason: collision with root package name */
    public final List<c> f19319a = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(XmlPullParser xmlPullParser) throws Exception {
        super(xmlPullParser);
        xmlPullParser.require(2, null, "VAST");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (a(xmlPullParser.getName(), Constants.AD)) {
                    this.f19319a.add(new c(xmlPullParser));
                } else {
                    f(xmlPullParser);
                }
            }
        }
        xmlPullParser.require(3, null, "VAST");
    }

    public final boolean d() {
        List<c> list = this.f19319a;
        return list != null && list.size() > 0;
    }

    @Override // com.explorestack.iab.vast.tags.r
    public final String[] w_() {
        return f19318b;
    }
}
