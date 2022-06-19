package com.explorestack.iab.vast.tags;

import com.explorestack.iab.vast.TrackingEvent;
import com.explorestack.iab.vast.VastLog;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.explorestack.iab.vast.tags.n */
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/tags/n.class */
public final class C9676n extends C9680r {

    /* renamed from: a */
    final EnumMap<TrackingEvent, List<String>> f32837a = new EnumMap<>(TrackingEvent.class);

    public C9676n(XmlPullParser xmlPullParser) throws Exception {
        super(xmlPullParser);
        TrackingEvent trackingEvent;
        xmlPullParser.require(2, null, "TrackingEvents");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (m23848a(xmlPullParser.getName(), "Tracking")) {
                    String c = new C9677o(xmlPullParser).m23844c("event");
                    try {
                        trackingEvent = TrackingEvent.valueOf(c);
                    } catch (Exception e) {
                        VastLog.m24015d("VastXmlTag", String.format("Event: %s is not valid. Skipping it.", c));
                        trackingEvent = null;
                    }
                    if (trackingEvent != null) {
                        String d = m23841d(xmlPullParser);
                        List<String> list = this.f32837a.get(trackingEvent);
                        if (list != null) {
                            list.add(d);
                        } else {
                            ArrayList arrayList = new ArrayList();
                            arrayList.add(d);
                            this.f32837a.put((EnumMap<TrackingEvent, List<String>>) trackingEvent, (TrackingEvent) arrayList);
                        }
                    } else {
                        m23837f(xmlPullParser);
                    }
                } else {
                    m23837f(xmlPullParser);
                }
            }
        }
        xmlPullParser.require(3, null, "TrackingEvents");
    }
}
