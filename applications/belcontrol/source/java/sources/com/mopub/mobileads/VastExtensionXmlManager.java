package com.mopub.mobileads;

import android.text.TextUtils;
import com.mopub.common.Preconditions;
import com.mopub.mobileads.VideoViewabilityTracker;
import com.mopub.mobileads.util.XmlUtils;
import org.w3c.dom.Node;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastExtensionXmlManager.class */
public class VastExtensionXmlManager {

    /* renamed from: ID */
    public static final String f4810ID = "id";
    public static final String TYPE = "type";
    public static final String VIDEO_VIEWABILITY_TRACKER = "MoPubViewabilityTracker";

    /* renamed from: a */
    public final Node f4811a;

    public VastExtensionXmlManager(Node node) {
        Preconditions.checkNotNull(node);
        this.f4811a = node;
    }

    /* renamed from: a */
    public String m3586a() {
        return XmlUtils.getAttributeValue(this.f4811a, "type");
    }

    /* renamed from: b */
    public VideoViewabilityTracker m3585b() {
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f4811a, VIDEO_VIEWABILITY_TRACKER);
        if (firstMatchingChildNode == null) {
            return null;
        }
        VideoViewabilityTrackerXmlManager videoViewabilityTrackerXmlManager = new VideoViewabilityTrackerXmlManager(firstMatchingChildNode);
        Integer m3507c = videoViewabilityTrackerXmlManager.m3507c();
        Integer m3509a = videoViewabilityTrackerXmlManager.m3509a();
        String m3508b = videoViewabilityTrackerXmlManager.m3508b();
        if (m3507c != null && m3509a != null && !TextUtils.isEmpty(m3508b)) {
            return new VideoViewabilityTracker.Builder(m3508b, m3507c.intValue(), m3509a.intValue()).build();
        }
        return null;
    }
}
