package com.mopub.mobileads;

import com.mopub.common.ViewabilityVendor;
import com.mopub.mobileads.util.XmlUtils;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.w3c.dom.Node;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/e.class */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    final Set<ViewabilityVendor> f34393a = new HashSet();

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(Node node) {
        if (node != null) {
            a(node);
        }
    }

    private void a(Node node) {
        List<Node> matchingChildNodes = XmlUtils.getMatchingChildNodes(XmlUtils.getFirstMatchingChildNode(node, "AdVerifications"), "Verification");
        if (!(matchingChildNodes == null || matchingChildNodes.isEmpty())) {
            for (Node node2 : matchingChildNodes) {
                Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(node2, "JavaScriptResource", "apiFramework", Collections.singletonList("omid"));
                if (firstMatchingChildNode != null) {
                    Node firstMatchingChildNode2 = XmlUtils.getFirstMatchingChildNode(XmlUtils.getFirstMatchingChildNode(node2, "TrackingEvents"), "Tracking", "event", Collections.singletonList("verificationNotExecuted"));
                    Node firstMatchingChildNode3 = XmlUtils.getFirstMatchingChildNode(node2, "VerificationParameters");
                    ViewabilityVendor.Builder builder = new ViewabilityVendor.Builder(XmlUtils.getNodeValue(firstMatchingChildNode));
                    builder.withApiFramework("omid").withVendorKey(XmlUtils.getAttributeValue(node2, "vendor")).withVerificationParameters(XmlUtils.getNodeValue(firstMatchingChildNode3)).withVerificationNotExecuted(XmlUtils.getNodeValue(firstMatchingChildNode2));
                    ViewabilityVendor build = builder.build();
                    if (build != null) {
                        this.f34393a.add(build);
                    }
                }
            }
        }
    }
}
