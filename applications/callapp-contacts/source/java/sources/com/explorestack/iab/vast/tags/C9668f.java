package com.explorestack.iab.vast.tags;

import android.text.TextUtils;
import com.explorestack.iab.mraid.C9566f;
import com.explorestack.iab.vast.TrackingEvent;
import com.mopub.mobileads.VastResourceXmlManager;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;
/* renamed from: com.explorestack.iab.vast.tags.f */
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/tags/f.class */
public final class C9668f extends C9680r {

    /* renamed from: c */
    private static final String[] f32805c = {"width", "height", "id", "assetWidth", "assetHeight", "expandedWidth", "expandedHeight", "apiFramework", "adSlotID", "required"};

    /* renamed from: a */
    public List<String> f32806a;

    /* renamed from: b */
    public Map<TrackingEvent, List<String>> f32807b;

    /* renamed from: d */
    private C9675m f32808d;

    /* renamed from: e */
    private String f32809e;

    /* renamed from: f */
    private String f32810f;

    /* renamed from: g */
    private String f32811g;

    /* renamed from: h */
    private String f32812h;

    public C9668f(XmlPullParser xmlPullParser) throws Exception {
        super(xmlPullParser);
        xmlPullParser.require(2, null, "Companion");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (m23848a(name, VastResourceXmlManager.STATIC_RESOURCE)) {
                    C9675m c9675m = new C9675m(xmlPullParser);
                    if (c9675m.mo23831x_()) {
                        this.f32808d = c9675m;
                    }
                } else if (m23848a(name, VastResourceXmlManager.IFRAME_RESOURCE)) {
                    this.f32809e = m23841d(xmlPullParser);
                } else if (m23848a(name, VastResourceXmlManager.HTML_RESOURCE)) {
                    this.f32810f = m23841d(xmlPullParser);
                } else if (m23848a(name, "CompanionClickThrough")) {
                    this.f32811g = m23841d(xmlPullParser);
                } else if (m23848a(name, "CompanionClickTracking")) {
                    String d = m23841d(xmlPullParser);
                    if (this.f32806a == null) {
                        this.f32806a = new ArrayList();
                    }
                    this.f32806a.add(d);
                } else if (m23848a(name, "TrackingEvents")) {
                    this.f32807b = new C9676n(xmlPullParser).f32837a;
                } else if (m23848a(name, "AdParameters")) {
                    this.f32812h = m23841d(xmlPullParser);
                } else {
                    m23837f(xmlPullParser);
                }
            }
        }
        xmlPullParser.require(3, null, "Companion");
    }

    /* renamed from: d */
    public final String m23856d() {
        String str = this.f32810f;
        if (str != null) {
            return str;
        }
        C9675m c9675m = this.f32808d;
        if (c9675m != null) {
            return String.format("<script type='text/javascript'>document.write('<a style=\"display: flex; width: 100%%; height: 100%%; justify-content: center; align-items: center\" href=\"%s\" target=\"_blank\"><img style=\"border-style: none; max-width: 100%%; max-height: 100%%;\"src=\"%s\"/></a>');</script>", this.f32811g, c9675m.getText());
        }
        if (this.f32809e == null) {
            return null;
        }
        return String.format("<iframe frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\" style=\"border: 0px; margin: 0px;\" width=\"%s\" height=\"%s\" src=\"%s\"></iframe>", Integer.valueOf(m23842d("width")), Integer.valueOf(m23842d("height")), this.f32809e);
    }

    /* renamed from: e */
    public final String m23855e() {
        String m23856d = m23856d();
        if (m23856d != null) {
            return C9566f.m24164b(m23856d);
        }
        return null;
    }

    /* renamed from: f */
    public final boolean m23854f() {
        return (this.f32810f == null && this.f32808d == null && this.f32809e == null) ? false : true;
    }

    @Override // com.explorestack.iab.vast.tags.C9680r
    /* renamed from: w_ */
    public final String[] mo23829w_() {
        return f32805c;
    }

    @Override // com.explorestack.iab.vast.tags.C9680r
    /* renamed from: x_ */
    public final boolean mo23831x_() {
        return !TextUtils.isEmpty(m23844c("width")) && !TextUtils.isEmpty(m23844c("height"));
    }
}
