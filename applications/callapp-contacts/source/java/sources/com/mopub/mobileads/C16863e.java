package com.mopub.mobileads;

import com.mopub.common.ViewabilityVendor;
import com.mopub.mobileads.util.XmlUtils;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.w3c.dom.Node;
/* renamed from: com.mopub.mobileads.e */
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/e.class */
final class C16863e {

    /* renamed from: a */
    final Set<ViewabilityVendor> f59691a = new HashSet();

    public C16863e(Node node) {
        if (node != null) {
            m6341a(node);
        }
    }

    /* renamed from: a */
    private void m6341a(Node node) {
        List<Node> matchingChildNodes = XmlUtils.getMatchingChildNodes(XmlUtils.getFirstMatchingChildNode(node, "AdVerifications"), "Verification");
        if (matchingChildNodes == null || matchingChildNodes.isEmpty()) {
            return;
        }
        for (Node node2 : matchingChildNodes) {
            Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(node2, "JavaScriptResource", "apiFramework", Collections.singletonList("omid"));
            if (firstMatchingChildNode != null) {
                Node firstMatchingChildNode2 = XmlUtils.getFirstMatchingChildNode(XmlUtils.getFirstMatchingChildNode(node2, "TrackingEvents"), "Tracking", "event", Collections.singletonList("verificationNotExecuted"));
                Node firstMatchingChildNode3 = XmlUtils.getFirstMatchingChildNode(node2, "VerificationParameters");
                ViewabilityVendor.Builder builder = new ViewabilityVendor.Builder(XmlUtils.getNodeValue(firstMatchingChildNode));
                builder.withApiFramework("omid").withVendorKey(XmlUtils.getAttributeValue(node2, "vendor")).withVerificationParameters(XmlUtils.getNodeValue(firstMatchingChildNode3)).withVerificationNotExecuted(XmlUtils.getNodeValue(firstMatchingChildNode2));
                ViewabilityVendor build = builder.build();
                if (build != null) {
                    this.f59691a.add(build);
                }
            }
        }
    }
}
