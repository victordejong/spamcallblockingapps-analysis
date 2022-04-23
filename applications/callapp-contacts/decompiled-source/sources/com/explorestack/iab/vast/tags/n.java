package com.explorestack.iab.vast.tags;

import com.explorestack.iab.vast.TrackingEvent;
import com.explorestack.iab.vast.VastLog;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/tags/n.class */
final class n extends r {

    /* renamed from: a  reason: collision with root package name */
    final EnumMap<TrackingEvent, List<String>> f19316a = new EnumMap<>(TrackingEvent.class);

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(XmlPullParser xmlPullParser) throws Exception {
        super(xmlPullParser);
        TrackingEvent trackingEvent;
        xmlPullParser.require(2, null, "TrackingEvents");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (a(xmlPullParser.getName(), "Tracking")) {
                    String c2 = new o(xmlPullParser).c("event");
                    try {
                        trackingEvent = TrackingEvent.valueOf(c2);
                    } catch (Exception e) {
                        VastLog.d("VastXmlTag", String.format("Event: %s is not valid. Skipping it.", c2));
                        trackingEvent = null;
                    }
                    if (trackingEvent != null) {
                        String d2 = d(xmlPullParser);
                        List<String> list = this.f19316a.get(trackingEvent);
                        if (list != null) {
                            list.add(d2);
                        } else {
                            ArrayList arrayList = new ArrayList();
                            arrayList.add(d2);
                            this.f19316a.put((EnumMap<TrackingEvent, List<String>>) trackingEvent, (TrackingEvent) arrayList);
                        }
                    } else {
                        f(xmlPullParser);
                    }
                } else {
                    f(xmlPullParser);
                }
            }
        }
        xmlPullParser.require(3, null, "TrackingEvents");
    }
}
