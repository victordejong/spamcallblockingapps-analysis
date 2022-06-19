package com.explorestack.iab.vast.tags;

import com.explorestack.iab.vast.TrackingEvent;
import com.explorestack.iab.vast.VastLog;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
/* renamed from: com.explorestack.iab.vast.tags.k */
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/tags/k.class */
public final class C9673k extends C9669g {

    /* renamed from: f */
    private static final String[] f32816f = {"skipoffset"};

    /* renamed from: a */
    public List<MediaFileTag> f32817a;

    /* renamed from: b */
    public C9681s f32818b;

    /* renamed from: c */
    public String f32819c;

    /* renamed from: d */
    public EnumMap<TrackingEvent, List<String>> f32820d;

    /* renamed from: e */
    public int f32821e;

    /* renamed from: g */
    private String f32822g;

    public C9673k(XmlPullParser xmlPullParser) throws Exception {
        super(xmlPullParser);
        this.f32821e = -1;
        xmlPullParser.require(2, null, "Linear");
        int g = m23836g(m23844c("skipoffset"));
        if (g >= 0) {
            this.f32821e = g;
        }
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (m23848a(name, "Duration")) {
                    this.f32822g = m23841d(xmlPullParser);
                } else if (m23848a(name, "MediaFiles")) {
                    xmlPullParser.require(2, null, "MediaFiles");
                    ArrayList arrayList = new ArrayList();
                    while (xmlPullParser.next() != 3) {
                        if (xmlPullParser.getEventType() == 2) {
                            if (m23848a(xmlPullParser.getName(), "MediaFile")) {
                                MediaFileTag mediaFileTag = new MediaFileTag(xmlPullParser);
                                if (mediaFileTag.mo23831x_()) {
                                    arrayList.add(mediaFileTag);
                                } else {
                                    VastLog.m24015d("VastXmlTag", "MediaFile: is not valid. Skipping it.");
                                    m23837f(xmlPullParser);
                                }
                            } else {
                                m23837f(xmlPullParser);
                            }
                        }
                    }
                    xmlPullParser.require(3, null, "MediaFiles");
                    this.f32817a = arrayList;
                } else if (m23848a(name, "VideoClicks")) {
                    this.f32818b = new C9681s(xmlPullParser);
                } else if (m23848a(name, "AdParameters")) {
                    this.f32819c = m23841d(xmlPullParser);
                } else if (m23848a(name, "TrackingEvents")) {
                    this.f32820d = new C9676n(xmlPullParser).f32837a;
                } else {
                    m23837f(xmlPullParser);
                }
            }
        }
        xmlPullParser.require(3, null, "Linear");
    }

    @Override // com.explorestack.iab.vast.tags.C9680r
    /* renamed from: w_ */
    public final String[] mo23829w_() {
        return f32816f;
    }
}
