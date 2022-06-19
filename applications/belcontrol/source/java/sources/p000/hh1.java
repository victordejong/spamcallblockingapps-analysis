package p000;

import com.mopub.common.ViewabilityVendor;
import com.mopub.mobileads.util.XmlUtils;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.w3c.dom.Node;
/* renamed from: hh1 */
/* loaded from: classes3-dex2jar.jar:hh1.class */
public class hh1 {

    /* renamed from: a */
    public final Set<ViewabilityVendor> f6735a = new HashSet();

    public hh1(Node node) {
        if (node != null) {
            m1622b(node);
        }
    }

    /* renamed from: a */
    public Set<ViewabilityVendor> m1623a() {
        return this.f6735a;
    }

    /* renamed from: b */
    public final void m1622b(Node node) {
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
                    this.f6735a.add(build);
                }
            }
        }
    }
}
