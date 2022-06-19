package com.explorestack.iab.vast.tags;

import android.text.TextUtils;
import com.explorestack.iab.utils.C9593h;
import com.explorestack.iab.vast.VastLog;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.xmlpull.v1.XmlPullParser;
/* renamed from: com.explorestack.iab.vast.tags.l */
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/tags/l.class */
public class C9674l extends C9680r {

    /* renamed from: l */
    static final /* synthetic */ boolean f32823l = true;

    /* renamed from: e */
    public String f32828e;

    /* renamed from: a */
    public final C9593h f32824a = new C9593h();

    /* renamed from: b */
    public final C9593h f32825b = new C9593h();

    /* renamed from: c */
    public final C9593h f32826c = new C9593h();

    /* renamed from: d */
    public final C9593h f32827d = new C9593h();

    /* renamed from: f */
    public float f32829f = BitmapDescriptorFactory.HUE_RED;

    /* renamed from: g */
    public float f32830g = BitmapDescriptorFactory.HUE_RED;

    /* renamed from: h */
    public boolean f32831h = true;

    /* renamed from: m */
    private boolean f32835m = false;

    /* renamed from: i */
    public boolean f32832i = false;

    /* renamed from: j */
    public boolean f32833j = false;

    /* renamed from: k */
    public boolean f32834k = false;

    @Override // com.explorestack.iab.vast.tags.C9680r
    /* renamed from: a */
    protected final void mo23847a(XmlPullParser xmlPullParser) throws Exception {
        xmlPullParser.require(2, null, "Postbanner");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                try {
                    String name = xmlPullParser.getName();
                    if (m23848a(name, "CloseTime")) {
                        String d = m23841d(xmlPullParser);
                        if (TextUtils.isEmpty(d)) {
                            continue;
                        } else if (!f32823l && d == null) {
                            throw new AssertionError();
                        } else {
                            this.f32829f = Float.parseFloat(d);
                        }
                    } else if (m23848a(name, "Duration")) {
                        String d2 = m23841d(xmlPullParser);
                        if (TextUtils.isEmpty(d2)) {
                            continue;
                        } else if (!f32823l && d2 == null) {
                            throw new AssertionError();
                        } else {
                            this.f32830g = Float.parseFloat(d2);
                        }
                    } else if (m23848a(name, "ClosableView")) {
                        m23846a(xmlPullParser, this.f32824a);
                    } else if (m23848a(name, "Countdown")) {
                        m23846a(xmlPullParser, this.f32825b);
                    } else if (m23848a(name, "LoadingView")) {
                        m23846a(xmlPullParser, this.f32826c);
                    } else if (m23848a(name, "Progress")) {
                        m23846a(xmlPullParser, this.f32827d);
                    } else if (m23848a(name, "UseNativeClose")) {
                        this.f32832i = m23839e(xmlPullParser);
                    } else if (m23848a(name, "IgnoresSafeAreaLayoutGuide")) {
                        this.f32835m = m23839e(xmlPullParser);
                    } else if (m23848a(name, "ProductLink")) {
                        this.f32828e = m23841d(xmlPullParser);
                    } else if (m23848a(name, "R1")) {
                        this.f32833j = m23839e(xmlPullParser);
                    } else if (m23848a(name, "R2")) {
                        this.f32834k = m23839e(xmlPullParser);
                    } else {
                        m23837f(xmlPullParser);
                    }
                } catch (Throwable th) {
                    VastLog.m24016a("VastXmlTag", th);
                }
            }
        }
        xmlPullParser.require(3, null, "Postbanner");
    }
}
