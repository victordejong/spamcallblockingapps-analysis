package com.explorestack.iab.vast.tags;

import android.text.TextUtils;
import com.explorestack.iab.vast.TrackingEvent;
import com.mopub.mobileads.VastResourceXmlManager;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/tags/f.class */
public final class f extends r {

    /* renamed from: c  reason: collision with root package name */
    private static final String[] f19300c = {"width", "height", "id", "assetWidth", "assetHeight", "expandedWidth", "expandedHeight", "apiFramework", "adSlotID", "required"};

    /* renamed from: a  reason: collision with root package name */
    public List<String> f19301a;

    /* renamed from: b  reason: collision with root package name */
    public Map<TrackingEvent, List<String>> f19302b;

    /* renamed from: d  reason: collision with root package name */
    private m f19303d;
    private String e;
    private String f;
    private String g;
    private String h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(XmlPullParser xmlPullParser) throws Exception {
        super(xmlPullParser);
        xmlPullParser.require(2, null, "Companion");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (a(name, VastResourceXmlManager.STATIC_RESOURCE)) {
                    m mVar = new m(xmlPullParser);
                    if (mVar.x_()) {
                        this.f19303d = mVar;
                    }
                } else if (a(name, VastResourceXmlManager.IFRAME_RESOURCE)) {
                    this.e = d(xmlPullParser);
                } else if (a(name, VastResourceXmlManager.HTML_RESOURCE)) {
                    this.f = d(xmlPullParser);
                } else if (a(name, "CompanionClickThrough")) {
                    this.g = d(xmlPullParser);
                } else if (a(name, "CompanionClickTracking")) {
                    String d2 = d(xmlPullParser);
                    if (this.f19301a == null) {
                        this.f19301a = new ArrayList();
                    }
                    this.f19301a.add(d2);
                } else if (a(name, "TrackingEvents")) {
                    this.f19302b = new n(xmlPullParser).f19316a;
                } else if (a(name, "AdParameters")) {
                    this.h = d(xmlPullParser);
                } else {
                    f(xmlPullParser);
                }
            }
        }
        xmlPullParser.require(3, null, "Companion");
    }

    public final String d() {
        String str = this.f;
        if (str != null) {
            return str;
        }
        m mVar = this.f19303d;
        if (mVar != null) {
            return String.format("<script type='text/javascript'>document.write('<a style=\"display: flex; width: 100%%; height: 100%%; justify-content: center; align-items: center\" href=\"%s\" target=\"_blank\"><img style=\"border-style: none; max-width: 100%%; max-height: 100%%;\"src=\"%s\"/></a>');</script>", this.g, mVar.getText());
        }
        if (this.e != null) {
            return String.format("<iframe frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\" style=\"border: 0px; margin: 0px;\" width=\"%s\" height=\"%s\" src=\"%s\"></iframe>", Integer.valueOf(d("width")), Integer.valueOf(d("height")), this.e);
        }
        return null;
    }

    public final String e() {
        String d2 = d();
        if (d2 != null) {
            return com.explorestack.iab.mraid.f.b(d2);
        }
        return null;
    }

    public final boolean f() {
        return (this.f == null && this.f19303d == null && this.e == null) ? false : true;
    }

    @Override // com.explorestack.iab.vast.tags.r
    public final String[] w_() {
        return f19300c;
    }

    @Override // com.explorestack.iab.vast.tags.r
    public final boolean x_() {
        return !TextUtils.isEmpty(c("width")) && !TextUtils.isEmpty(c("height"));
    }
}
