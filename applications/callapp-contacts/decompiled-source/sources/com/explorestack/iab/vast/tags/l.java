package com.explorestack.iab.vast.tags;

import android.text.TextUtils;
import com.explorestack.iab.utils.h;
import com.explorestack.iab.vast.VastLog;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/tags/l.class */
public class l extends r {
    static final /* synthetic */ boolean l = true;
    public String e;

    /* renamed from: a  reason: collision with root package name */
    public final h f19311a = new h();

    /* renamed from: b  reason: collision with root package name */
    public final h f19312b = new h();

    /* renamed from: c  reason: collision with root package name */
    public final h f19313c = new h();

    /* renamed from: d  reason: collision with root package name */
    public final h f19314d = new h();
    public float f = BitmapDescriptorFactory.HUE_RED;
    public float g = BitmapDescriptorFactory.HUE_RED;
    public boolean h = true;
    private boolean m = false;
    public boolean i = false;
    public boolean j = false;
    public boolean k = false;

    @Override // com.explorestack.iab.vast.tags.r
    protected final void a(XmlPullParser xmlPullParser) throws Exception {
        xmlPullParser.require(2, null, "Postbanner");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                try {
                    String name = xmlPullParser.getName();
                    if (a(name, "CloseTime")) {
                        String d2 = d(xmlPullParser);
                        if (TextUtils.isEmpty(d2)) {
                            continue;
                        } else if (l || d2 != null) {
                            this.f = Float.parseFloat(d2);
                        } else {
                            throw new AssertionError();
                        }
                    } else if (a(name, "Duration")) {
                        String d3 = d(xmlPullParser);
                        if (TextUtils.isEmpty(d3)) {
                            continue;
                        } else if (l || d3 != null) {
                            this.g = Float.parseFloat(d3);
                        } else {
                            throw new AssertionError();
                        }
                    } else if (a(name, "ClosableView")) {
                        a(xmlPullParser, this.f19311a);
                    } else if (a(name, "Countdown")) {
                        a(xmlPullParser, this.f19312b);
                    } else if (a(name, "LoadingView")) {
                        a(xmlPullParser, this.f19313c);
                    } else if (a(name, "Progress")) {
                        a(xmlPullParser, this.f19314d);
                    } else if (a(name, "UseNativeClose")) {
                        this.i = e(xmlPullParser);
                    } else if (a(name, "IgnoresSafeAreaLayoutGuide")) {
                        this.m = e(xmlPullParser);
                    } else if (a(name, "ProductLink")) {
                        this.e = d(xmlPullParser);
                    } else if (a(name, "R1")) {
                        this.j = e(xmlPullParser);
                    } else if (a(name, "R2")) {
                        this.k = e(xmlPullParser);
                    } else {
                        f(xmlPullParser);
                    }
                } catch (Throwable th) {
                    VastLog.a("VastXmlTag", th);
                }
            }
        }
        xmlPullParser.require(3, null, "Postbanner");
    }
}
