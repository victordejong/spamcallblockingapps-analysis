package com.mopub.mobileads;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.VastAbsoluteProgressTracker;
import com.mopub.mobileads.VastFractionalProgressTracker;
import com.mopub.mobileads.VastTracker;
import com.mopub.mobileads.util.XmlUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import org.w3c.dom.Node;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.mopub.mobileads.j */
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/j.class */
public final class C16872j {
    public static final String ICON = "Icon";
    public static final String ICONS = "Icons";

    /* renamed from: a */
    final Node f59707a;

    public C16872j(Node node) {
        Preconditions.checkNotNull(node);
        this.f59707a = node;
    }

    /* renamed from: a */
    private static void m6331a(List<VastFractionalProgressTracker> list, List<String> list2, float f) {
        Preconditions.checkNotNull(list, "trackers cannot be null");
        Preconditions.checkNotNull(list2, "urls cannot be null");
        for (String str : list2) {
            list.add(new VastFractionalProgressTracker.Builder(str, f).build());
        }
    }

    /* renamed from: b */
    private List<String> m6329b(String str) {
        Preconditions.checkNotNull(str);
        ArrayList arrayList = new ArrayList();
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f59707a, "TrackingEvents");
        if (firstMatchingChildNode == null) {
            return arrayList;
        }
        for (Node node : XmlUtils.getMatchingChildNodes(firstMatchingChildNode, "Tracking", "event", Collections.singletonList(str))) {
            String nodeValue = XmlUtils.getNodeValue(node);
            if (nodeValue != null) {
                arrayList.add(nodeValue);
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public final List<VastFractionalProgressTracker> m6333a() {
        ArrayList arrayList = new ArrayList();
        m6331a(arrayList, m6329b(EventConstants.FIRST_QUARTILE), 0.25f);
        m6331a(arrayList, m6329b("midpoint"), 0.5f);
        m6331a(arrayList, m6329b(EventConstants.THIRD_QUARTILE), 0.75f);
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f59707a, "TrackingEvents");
        if (firstMatchingChildNode != null) {
            for (Node node : XmlUtils.getMatchingChildNodes(firstMatchingChildNode, "Tracking", "event", Collections.singletonList(EventConstants.PROGRESS))) {
                String attributeValue = XmlUtils.getAttributeValue(node, VastIconXmlManager.OFFSET);
                if (attributeValue != null) {
                    String trim = attributeValue.trim();
                    if (VastFractionalProgressTracker.Companion.isPercentageTracker(trim)) {
                        String nodeValue = XmlUtils.getNodeValue(node);
                        try {
                            float parseFloat = Float.parseFloat(trim.replace("%", "")) / 100.0f;
                            if (parseFloat >= BitmapDescriptorFactory.HUE_RED) {
                                arrayList.add(new VastFractionalProgressTracker.Builder(nodeValue, parseFloat).build());
                            }
                        } catch (NumberFormatException e) {
                            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format("Failed to parse VAST progress tracker %s", trim));
                        }
                    }
                }
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    /* renamed from: a */
    public final List<VastTracker> m6332a(String str) {
        List<String> m6329b = m6329b(str);
        ArrayList arrayList = new ArrayList(m6329b.size());
        for (String str2 : m6329b) {
            arrayList.add(new VastTracker.Builder(str2).build());
        }
        return arrayList;
    }

    /* renamed from: b */
    public final List<VastAbsoluteProgressTracker> m6330b() {
        ArrayList arrayList = new ArrayList();
        for (String str : m6329b(EventConstants.START)) {
            arrayList.add(new VastAbsoluteProgressTracker.Builder(str, 0).build());
        }
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f59707a, "TrackingEvents");
        if (firstMatchingChildNode != null) {
            for (Node node : XmlUtils.getMatchingChildNodes(firstMatchingChildNode, "Tracking", "event", Collections.singletonList(EventConstants.PROGRESS))) {
                String attributeValue = XmlUtils.getAttributeValue(node, VastIconXmlManager.OFFSET);
                if (attributeValue != null) {
                    String trim = attributeValue.trim();
                    if (VastAbsoluteProgressTracker.Companion.isAbsoluteTracker(trim)) {
                        String nodeValue = XmlUtils.getNodeValue(node);
                        try {
                            Integer parseAbsoluteOffset = VastAbsoluteProgressTracker.Companion.parseAbsoluteOffset(trim);
                            if (parseAbsoluteOffset != null && parseAbsoluteOffset.intValue() >= 0) {
                                arrayList.add(new VastAbsoluteProgressTracker.Builder(nodeValue, parseAbsoluteOffset.intValue()).build());
                            }
                        } catch (NumberFormatException e) {
                            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format("Failed to parse VAST progress tracker %s", trim));
                        }
                    }
                }
            }
            for (Node node2 : XmlUtils.getMatchingChildNodes(firstMatchingChildNode, "Tracking", "event", Collections.singletonList(EventConstants.CREATIVE_VIEW))) {
                String nodeValue2 = XmlUtils.getNodeValue(node2);
                if (nodeValue2 != null) {
                    arrayList.add(new VastAbsoluteProgressTracker.Builder(nodeValue2, 0).build());
                }
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    /* renamed from: c */
    public final List<VastTracker> m6328c() {
        List<String> m6329b = m6329b("pause");
        ArrayList arrayList = new ArrayList();
        for (String str : m6329b) {
            arrayList.add(new VastTracker.Builder(str).isRepeatable(true).build());
        }
        return arrayList;
    }

    /* renamed from: d */
    public final List<VastTracker> m6327d() {
        List<String> m6329b = m6329b("resume");
        ArrayList arrayList = new ArrayList();
        for (String str : m6329b) {
            arrayList.add(new VastTracker.Builder(str).isRepeatable(true).build());
        }
        return arrayList;
    }

    /* renamed from: e */
    public final List<VastTracker> m6326e() {
        List<VastTracker> m6332a = m6332a(EventConstants.CLOSE);
        m6332a.addAll(m6332a("closeLinear"));
        return m6332a;
    }

    /* renamed from: f */
    public final List<VastTracker> m6325f() {
        ArrayList arrayList = new ArrayList();
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f59707a, "VideoClicks");
        if (firstMatchingChildNode == null) {
            return arrayList;
        }
        for (Node node : XmlUtils.getMatchingChildNodes(firstMatchingChildNode, "ClickTracking")) {
            String nodeValue = XmlUtils.getNodeValue(node);
            if (nodeValue != null) {
                arrayList.add(new VastTracker.Builder(nodeValue).build());
            }
        }
        return arrayList;
    }

    /* renamed from: g */
    public final String m6324g() {
        String attributeValue = XmlUtils.getAttributeValue(this.f59707a, "skipoffset");
        if (attributeValue != null && !attributeValue.trim().isEmpty()) {
            return attributeValue.trim();
        }
        return null;
    }

    /* renamed from: h */
    public final List<VastIconXmlManager> m6323h() {
        ArrayList arrayList = new ArrayList();
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f59707a, ICONS);
        if (firstMatchingChildNode == null) {
            return arrayList;
        }
        for (Node node : XmlUtils.getMatchingChildNodes(firstMatchingChildNode, ICON)) {
            arrayList.add(new VastIconXmlManager(node));
        }
        return arrayList;
    }
}
