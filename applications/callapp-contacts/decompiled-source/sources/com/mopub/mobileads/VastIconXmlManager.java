package com.mopub.mobileads;

import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.VastTracker;
import com.mopub.mobileads.util.XmlUtils;
import java.util.ArrayList;
import java.util.List;
import org.w3c.dom.Node;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastIconXmlManager.class */
public class VastIconXmlManager {
    public static final String DURATION = "duration";
    public static final String HEIGHT = "height";
    public static final String ICON_CLICKS = "IconClicks";
    public static final String ICON_CLICK_THROUGH = "IconClickThrough";
    public static final String ICON_CLICK_TRACKING = "IconClickTracking";
    public static final String ICON_VIEW_TRACKING = "IconViewTracking";
    public static final String OFFSET = "offset";
    public static final String WIDTH = "width";

    /* renamed from: a  reason: collision with root package name */
    final VastResourceXmlManager f34268a;

    /* renamed from: b  reason: collision with root package name */
    private final Node f34269b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public VastIconXmlManager(Node node) {
        Preconditions.checkNotNull(node);
        this.f34269b = node;
        this.f34268a = new VastResourceXmlManager(node);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Integer a() {
        return XmlUtils.getAttributeValueAsInt(this.f34269b, "width");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Integer b() {
        return XmlUtils.getAttributeValueAsInt(this.f34269b, "height");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Integer c() {
        Integer num;
        String attributeValue = XmlUtils.getAttributeValue(this.f34269b, OFFSET);
        try {
            num = VastAbsoluteProgressTracker.Companion.parseAbsoluteOffset(attributeValue);
        } catch (NumberFormatException e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format("Invalid VAST icon offset format: %s:", attributeValue));
            num = null;
        }
        return num;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Integer d() {
        Integer num;
        String attributeValue = XmlUtils.getAttributeValue(this.f34269b, DURATION);
        try {
            num = VastAbsoluteProgressTracker.Companion.parseAbsoluteOffset(attributeValue);
        } catch (NumberFormatException e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format("Invalid VAST icon duration format: %s:", attributeValue));
            num = null;
        }
        return num;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List<VastTracker> e() {
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f34269b, ICON_CLICKS);
        ArrayList arrayList = new ArrayList();
        if (firstMatchingChildNode == null) {
            return arrayList;
        }
        for (Node node : XmlUtils.getMatchingChildNodes(firstMatchingChildNode, ICON_CLICK_TRACKING)) {
            String nodeValue = XmlUtils.getNodeValue(node);
            if (nodeValue != null) {
                arrayList.add(new VastTracker.Builder(nodeValue).build());
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String f() {
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f34269b, ICON_CLICKS);
        if (firstMatchingChildNode == null) {
            return null;
        }
        return XmlUtils.getNodeValue(XmlUtils.getFirstMatchingChildNode(firstMatchingChildNode, ICON_CLICK_THROUGH));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List<VastTracker> g() {
        List<Node> matchingChildNodes = XmlUtils.getMatchingChildNodes(this.f34269b, ICON_VIEW_TRACKING);
        ArrayList arrayList = new ArrayList();
        for (Node node : matchingChildNodes) {
            String nodeValue = XmlUtils.getNodeValue(node);
            if (nodeValue != null) {
                arrayList.add(new VastTracker.Builder(nodeValue).build());
            }
        }
        return arrayList;
    }
}
