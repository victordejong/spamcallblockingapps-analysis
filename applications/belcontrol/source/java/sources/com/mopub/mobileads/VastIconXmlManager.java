package com.mopub.mobileads;

import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.VastTracker;
import com.mopub.mobileads.util.XmlUtils;
import java.util.ArrayList;
import java.util.List;
import org.w3c.dom.Node;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastIconXmlManager.class */
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
    public final Node f4828a;

    /* renamed from: b */
    public final VastResourceXmlManager f4829b;

    public VastIconXmlManager(Node node) {
        Preconditions.checkNotNull(node);
        this.f4828a = node;
        this.f4829b = new VastResourceXmlManager(node);
    }

    /* renamed from: a */
    public String m3584a() {
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f4828a, ICON_CLICKS);
        if (firstMatchingChildNode == null) {
            return null;
        }
        return XmlUtils.getNodeValue(XmlUtils.getFirstMatchingChildNode(firstMatchingChildNode, ICON_CLICK_THROUGH));
    }

    /* renamed from: b */
    public List<VastTracker> m3583b() {
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f4828a, ICON_CLICKS);
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

    /* renamed from: c */
    public Integer m3582c() {
        Integer num;
        String attributeValue = XmlUtils.getAttributeValue(this.f4828a, DURATION);
        try {
            num = VastAbsoluteProgressTracker.Companion.parseAbsoluteOffset(attributeValue);
        } catch (NumberFormatException e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format("Invalid VAST icon duration format: %s:", attributeValue));
            num = null;
        }
        return num;
    }

    /* renamed from: d */
    public Integer m3581d() {
        return XmlUtils.getAttributeValueAsInt(this.f4828a, "height");
    }

    /* renamed from: e */
    public Integer m3580e() {
        Integer num;
        String attributeValue = XmlUtils.getAttributeValue(this.f4828a, OFFSET);
        try {
            num = VastAbsoluteProgressTracker.Companion.parseAbsoluteOffset(attributeValue);
        } catch (NumberFormatException e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format("Invalid VAST icon offset format: %s:", attributeValue));
            num = null;
        }
        return num;
    }

    /* renamed from: f */
    public VastResourceXmlManager m3579f() {
        return this.f4829b;
    }

    /* renamed from: g */
    public List<VastTracker> m3578g() {
        List<Node> matchingChildNodes = XmlUtils.getMatchingChildNodes(this.f4828a, ICON_VIEW_TRACKING);
        ArrayList arrayList = new ArrayList();
        for (Node node : matchingChildNodes) {
            String nodeValue = XmlUtils.getNodeValue(node);
            if (nodeValue != null) {
                arrayList.add(new VastTracker.Builder(nodeValue).build());
            }
        }
        return arrayList;
    }

    /* renamed from: h */
    public Integer m3577h() {
        return XmlUtils.getAttributeValueAsInt(this.f4828a, "width");
    }
}
