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
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/j.class */
final class j {
    public static final String ICON = "Icon";
    public static final String ICONS = "Icons";

    /* renamed from: a  reason: collision with root package name */
    final Node f34407a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(Node node) {
        Preconditions.checkNotNull(node);
        this.f34407a = node;
    }

    private static void a(List<VastFractionalProgressTracker> list, List<String> list2, float f) {
        Preconditions.checkNotNull(list, "trackers cannot be null");
        Preconditions.checkNotNull(list2, "urls cannot be null");
        for (String str : list2) {
            list.add(new VastFractionalProgressTracker.Builder(str, f).build());
        }
    }

    private List<String> b(String str) {
        Preconditions.checkNotNull(str);
        ArrayList arrayList = new ArrayList();
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f34407a, "TrackingEvents");
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List<VastFractionalProgressTracker> a() {
        ArrayList arrayList = new ArrayList();
        a(arrayList, b(EventConstants.FIRST_QUARTILE), 0.25f);
        a(arrayList, b("midpoint"), 0.5f);
        a(arrayList, b(EventConstants.THIRD_QUARTILE), 0.75f);
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f34407a, "TrackingEvents");
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List<VastTracker> a(String str) {
        List<String> b2 = b(str);
        ArrayList arrayList = new ArrayList(b2.size());
        for (String str2 : b2) {
            arrayList.add(new VastTracker.Builder(str2).build());
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List<VastAbsoluteProgressTracker> b() {
        ArrayList arrayList = new ArrayList();
        for (String str : b(EventConstants.START)) {
            arrayList.add(new VastAbsoluteProgressTracker.Builder(str, 0).build());
        }
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f34407a, "TrackingEvents");
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List<VastTracker> c() {
        List<String> b2 = b("pause");
        ArrayList arrayList = new ArrayList();
        for (String str : b2) {
            arrayList.add(new VastTracker.Builder(str).isRepeatable(true).build());
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List<VastTracker> d() {
        List<String> b2 = b("resume");
        ArrayList arrayList = new ArrayList();
        for (String str : b2) {
            arrayList.add(new VastTracker.Builder(str).isRepeatable(true).build());
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List<VastTracker> e() {
        List<VastTracker> a2 = a(EventConstants.CLOSE);
        a2.addAll(a("closeLinear"));
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List<VastTracker> f() {
        ArrayList arrayList = new ArrayList();
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f34407a, "VideoClicks");
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String g() {
        String attributeValue = XmlUtils.getAttributeValue(this.f34407a, "skipoffset");
        if (attributeValue != null && !attributeValue.trim().isEmpty()) {
            return attributeValue.trim();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List<VastIconXmlManager> h() {
        ArrayList arrayList = new ArrayList();
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f34407a, ICONS);
        if (firstMatchingChildNode == null) {
            return arrayList;
        }
        for (Node node : XmlUtils.getMatchingChildNodes(firstMatchingChildNode, ICON)) {
            arrayList.add(new VastIconXmlManager(node));
        }
        return arrayList;
    }
}
