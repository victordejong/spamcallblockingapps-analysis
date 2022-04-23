package p131c.p421j.p424b;

import com.mopub.common.Preconditions;
import com.mopub.mobileads.VastExtensionXmlManager;
import com.mopub.mobileads.util.XmlUtils;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.w3c.dom.Node;
/* renamed from: c.j.b.b */
/* loaded from: classes2-dex2jar.jar:c/j/b/b.class */
public class C6643b {

    /* renamed from: a */
    public final Node f20515a;

    public C6643b(Node node) {
        Preconditions.checkNotNull(node);
        this.f20515a = node;
    }

    /* renamed from: a */
    public Set<String> m20211a() {
        List<Node> matchingChildNodes;
        HashSet hashSet = new HashSet();
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f20515a, VastExtensionXmlManager.AD_VERIFICATIONS);
        if (!(firstMatchingChildNode == null || (matchingChildNodes = XmlUtils.getMatchingChildNodes(firstMatchingChildNode, VastExtensionXmlManager.VERIFICATION)) == null)) {
            for (Node node : matchingChildNodes) {
                Node firstMatchingChildNode2 = XmlUtils.getFirstMatchingChildNode(node, "JavaScriptResource");
                if (firstMatchingChildNode2 != null) {
                    hashSet.add(XmlUtils.getNodeValue(firstMatchingChildNode2));
                }
            }
            return hashSet;
        }
        return hashSet;
    }
}
