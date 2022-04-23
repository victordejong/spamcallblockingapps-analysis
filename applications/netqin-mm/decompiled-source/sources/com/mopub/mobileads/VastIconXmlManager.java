package com.mopub.mobileads;

import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.util.XmlUtils;
import java.util.ArrayList;
import java.util.List;
import org.w3c.dom.Node;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastIconXmlManager.class */
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
    public final Node f34249a;

    /* renamed from: b */
    public final VastResourceXmlManager f34250b;

    public VastIconXmlManager(Node node) {
        Preconditions.checkNotNull(node);
        this.f34249a = node;
        this.f34250b = new VastResourceXmlManager(node);
    }

    /* renamed from: a */
    public String m4277a() {
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f34249a, ICON_CLICKS);
        if (firstMatchingChildNode == null) {
            return null;
        }
        return XmlUtils.getNodeValue(XmlUtils.getFirstMatchingChildNode(firstMatchingChildNode, ICON_CLICK_THROUGH));
    }

    /* renamed from: b */
    public List<VastTracker> m4276b() {
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f34249a, ICON_CLICKS);
        ArrayList arrayList = new ArrayList();
        if (firstMatchingChildNode == null) {
            return arrayList;
        }
        for (Node node : XmlUtils.getMatchingChildNodes(firstMatchingChildNode, ICON_CLICK_TRACKING)) {
            String nodeValue = XmlUtils.getNodeValue(node);
            if (nodeValue != null) {
                arrayList.add(new VastTracker(nodeValue));
            }
        }
        return arrayList;
    }

    /* renamed from: c */
    public Integer m4275c() {
        Integer num;
        String attributeValue = XmlUtils.getAttributeValue(this.f34249a, DURATION);
        try {
            num = VastAbsoluteProgressTracker.parseAbsoluteOffset(attributeValue);
        } catch (NumberFormatException e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format("Invalid VAST icon duration format: %s:", attributeValue));
            num = null;
        }
        return num;
    }

    /* renamed from: d */
    public Integer m4274d() {
        return XmlUtils.getAttributeValueAsInt(this.f34249a, "height");
    }

    /* renamed from: e */
    public Integer m4273e() {
        Integer num;
        String attributeValue = XmlUtils.getAttributeValue(this.f34249a, OFFSET);
        try {
            num = VastAbsoluteProgressTracker.parseAbsoluteOffset(attributeValue);
        } catch (NumberFormatException e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format("Invalid VAST icon offset format: %s:", attributeValue));
            num = null;
        }
        return num;
    }

    /* renamed from: f */
    public VastResourceXmlManager m4272f() {
        return this.f34250b;
    }

    /* renamed from: g */
    public List<VastTracker> m4271g() {
        List<Node> matchingChildNodes = XmlUtils.getMatchingChildNodes(this.f34249a, ICON_VIEW_TRACKING);
        ArrayList arrayList = new ArrayList();
        for (Node node : matchingChildNodes) {
            String nodeValue = XmlUtils.getNodeValue(node);
            if (nodeValue != null) {
                arrayList.add(new VastTracker(nodeValue));
            }
        }
        return arrayList;
    }

    /* renamed from: h */
    public Integer m4270h() {
        return XmlUtils.getAttributeValueAsInt(this.f34249a, "width");
    }
}
