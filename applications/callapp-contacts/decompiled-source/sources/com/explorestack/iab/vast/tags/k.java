package com.explorestack.iab.vast.tags;

import com.explorestack.iab.vast.TrackingEvent;
import com.explorestack.iab.vast.VastLog;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/tags/k.class */
public final class k extends g {
    private static final String[] f = {"skipoffset"};

    /* renamed from: a  reason: collision with root package name */
    public List<MediaFileTag> f19307a;

    /* renamed from: b  reason: collision with root package name */
    public s f19308b;

    /* renamed from: c  reason: collision with root package name */
    public String f19309c;

    /* renamed from: d  reason: collision with root package name */
    public EnumMap<TrackingEvent, List<String>> f19310d;
    public int e;
    private String g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(XmlPullParser xmlPullParser) throws Exception {
        super(xmlPullParser);
        this.e = -1;
        xmlPullParser.require(2, null, "Linear");
        int g = g(c("skipoffset"));
        if (g >= 0) {
            this.e = g;
        }
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (a(name, "Duration")) {
                    this.g = d(xmlPullParser);
                } else if (a(name, "MediaFiles")) {
                    xmlPullParser.require(2, null, "MediaFiles");
                    ArrayList arrayList = new ArrayList();
                    while (xmlPullParser.next() != 3) {
                        if (xmlPullParser.getEventType() == 2) {
                            if (a(xmlPullParser.getName(), "MediaFile")) {
                                MediaFileTag mediaFileTag = new MediaFileTag(xmlPullParser);
                                if (mediaFileTag.x_()) {
                                    arrayList.add(mediaFileTag);
                                } else {
                                    VastLog.d("VastXmlTag", "MediaFile: is not valid. Skipping it.");
                                    f(xmlPullParser);
                                }
                            } else {
                                f(xmlPullParser);
                            }
                        }
                    }
                    xmlPullParser.require(3, null, "MediaFiles");
                    this.f19307a = arrayList;
                } else if (a(name, "VideoClicks")) {
                    this.f19308b = new s(xmlPullParser);
                } else if (a(name, "AdParameters")) {
                    this.f19309c = d(xmlPullParser);
                } else if (a(name, "TrackingEvents")) {
                    this.f19310d = new n(xmlPullParser).f19316a;
                } else {
                    f(xmlPullParser);
                }
            }
        }
        xmlPullParser.require(3, null, "Linear");
    }

    @Override // com.explorestack.iab.vast.tags.r
    public final String[] w_() {
        return f;
    }
}
