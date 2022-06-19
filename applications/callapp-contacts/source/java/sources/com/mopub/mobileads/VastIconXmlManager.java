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

    /* renamed from: a */
    final VastResourceXmlManager f59485a;

    /* renamed from: b */
    private final Node f59486b;

    public VastIconXmlManager(Node node) {
        Preconditions.checkNotNull(node);
        this.f59486b = node;
        this.f59485a = new VastResourceXmlManager(node);
    }

    /* renamed from: a */
    public final Integer m6420a() {
        return XmlUtils.getAttributeValueAsInt(this.f59486b, "width");
    }

    /* renamed from: b */
    public final Integer m6419b() {
        return XmlUtils.getAttributeValueAsInt(this.f59486b, "height");
    }

    /* renamed from: c */
    public final Integer m6418c() {
        Integer num;
        String attributeValue = XmlUtils.getAttributeValue(this.f59486b, OFFSET);
        try {
            num = VastAbsoluteProgressTracker.Companion.parseAbsoluteOffset(attributeValue);
        } catch (NumberFormatException e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format("Invalid VAST icon offset format: %s:", attributeValue));
            num = null;
        }
        return num;
    }

    /* renamed from: d */
    public final Integer m6417d() {
        Integer num;
        String attributeValue = XmlUtils.getAttributeValue(this.f59486b, DURATION);
        try {
            num = VastAbsoluteProgressTracker.Companion.parseAbsoluteOffset(attributeValue);
        } catch (NumberFormatException e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format("Invalid VAST icon duration format: %s:", attributeValue));
            num = null;
        }
        return num;
    }

    /* renamed from: e */
    public final List<VastTracker> m6416e() {
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f59486b, ICON_CLICKS);
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

    /* renamed from: f */
    public final String m6415f() {
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f59486b, ICON_CLICKS);
        if (firstMatchingChildNode == null) {
            return null;
        }
        return XmlUtils.getNodeValue(XmlUtils.getFirstMatchingChildNode(firstMatchingChildNode, ICON_CLICK_THROUGH));
    }

    /* renamed from: g */
    public final List<VastTracker> m6414g() {
        List<Node> matchingChildNodes = XmlUtils.getMatchingChildNodes(this.f59486b, ICON_VIEW_TRACKING);
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
