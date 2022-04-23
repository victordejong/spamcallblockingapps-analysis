package com.mopub.mobileads;

import android.text.TextUtils;
import com.mopub.common.Preconditions;
import com.mopub.mobileads.util.XmlUtils;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import org.w3c.dom.Node;
import p131c.p421j.p424b.C6643b;
import p131c.p421j.p424b.C6655g;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastExtensionXmlManager.class */
public class VastExtensionXmlManager {
    public static final String AD_VERIFICATIONS = "AdVerifications";
    public static final String AVID = "AVID";

    /* renamed from: ID */
    public static final String f34239ID = "id";
    public static final String MOAT = "Moat";
    public static final String TYPE = "type";
    public static final String VENDOR = "vendor";
    public static final String VERIFICATION = "Verification";
    public static final String VIDEO_VIEWABILITY_TRACKER = "MoPubViewabilityTracker";

    /* renamed from: a */
    public final Node f34240a;

    public VastExtensionXmlManager(Node node) {
        Preconditions.checkNotNull(node);
        this.f34240a = node;
    }

    /* renamed from: a */
    public Set<String> m4281a() {
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f34240a, AVID);
        if (firstMatchingChildNode == null) {
            return null;
        }
        return new C6643b(firstMatchingChildNode).m20211a();
    }

    /* renamed from: b */
    public Set<String> m4280b() {
        List<Node> matchingChildNodes;
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f34240a, AD_VERIFICATIONS);
        if (firstMatchingChildNode == null || (matchingChildNodes = XmlUtils.getMatchingChildNodes(firstMatchingChildNode, VERIFICATION, VENDOR, Collections.singletonList(MOAT))) == null || matchingChildNodes.isEmpty()) {
            return null;
        }
        return new C6655g(matchingChildNodes).m20185a();
    }

    /* renamed from: c */
    public String m4279c() {
        return XmlUtils.getAttributeValue(this.f34240a, "type");
    }

    /* renamed from: d */
    public VideoViewabilityTracker m4278d() {
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f34240a, VIDEO_VIEWABILITY_TRACKER);
        if (firstMatchingChildNode == null) {
            return null;
        }
        VideoViewabilityTrackerXmlManager videoViewabilityTrackerXmlManager = new VideoViewabilityTrackerXmlManager(firstMatchingChildNode);
        Integer c = videoViewabilityTrackerXmlManager.m4162c();
        Integer a = videoViewabilityTrackerXmlManager.m4164a();
        String b = videoViewabilityTrackerXmlManager.m4163b();
        VideoViewabilityTracker videoViewabilityTracker = null;
        if (c != null) {
            videoViewabilityTracker = null;
            if (a != null) {
                videoViewabilityTracker = TextUtils.isEmpty(b) ? null : new VideoViewabilityTracker(c.intValue(), a.intValue(), b);
            }
        }
        return videoViewabilityTracker;
    }
}
