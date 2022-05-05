package com.mopub.mobileads;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
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
    @NonNull

    /* renamed from: a */
    public final Node f8573a;
    @NonNull

    /* renamed from: b */
    public final VastResourceXmlManager f8574b;

    public VastIconXmlManager(@NonNull Node node) {
        Preconditions.checkNotNull(node);
        this.f8573a = node;
        this.f8574b = new VastResourceXmlManager(node);
    }

    @Nullable
    /* renamed from: a */
    public String m30488a() {
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f8573a, ICON_CLICKS);
        if (firstMatchingChildNode == null) {
            return null;
        }
        return XmlUtils.getNodeValue(XmlUtils.getFirstMatchingChildNode(firstMatchingChildNode, ICON_CLICK_THROUGH));
    }

    @NonNull
    /* renamed from: b */
    public List<VastTracker> m30487b() {
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f8573a, ICON_CLICKS);
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

    @Nullable
    /* renamed from: c */
    public Integer m30486c() {
        Integer num;
        String attributeValue = XmlUtils.getAttributeValue(this.f8573a, "duration");
        try {
            num = VastAbsoluteProgressTracker.parseAbsoluteOffset(attributeValue);
        } catch (NumberFormatException e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format("Invalid VAST icon duration format: %s:", attributeValue));
            num = null;
        }
        return num;
    }

    @Nullable
    /* renamed from: d */
    public Integer m30485d() {
        return XmlUtils.getAttributeValueAsInt(this.f8573a, "height");
    }

    @Nullable
    /* renamed from: e */
    public Integer m30484e() {
        Integer num;
        String attributeValue = XmlUtils.getAttributeValue(this.f8573a, OFFSET);
        try {
            num = VastAbsoluteProgressTracker.parseAbsoluteOffset(attributeValue);
        } catch (NumberFormatException e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format("Invalid VAST icon offset format: %s:", attributeValue));
            num = null;
        }
        return num;
    }

    @NonNull
    /* renamed from: f */
    public VastResourceXmlManager m30483f() {
        return this.f8574b;
    }

    @NonNull
    /* renamed from: g */
    public List<VastTracker> m30482g() {
        List<Node> matchingChildNodes = XmlUtils.getMatchingChildNodes(this.f8573a, ICON_VIEW_TRACKING);
        ArrayList arrayList = new ArrayList();
        for (Node node : matchingChildNodes) {
            String nodeValue = XmlUtils.getNodeValue(node);
            if (nodeValue != null) {
                arrayList.add(new VastTracker(nodeValue));
            }
        }
        return arrayList;
    }

    @Nullable
    /* renamed from: h */
    public Integer m30481h() {
        return XmlUtils.getAttributeValueAsInt(this.f8573a, "width");
    }
}
