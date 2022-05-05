package p081h.p430l.p433b;

import androidx.annotation.NonNull;
import com.mopub.common.Preconditions;
import com.mopub.mobileads.VastExtensionXmlManager;
import com.mopub.mobileads.util.XmlUtils;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.w3c.dom.Node;
/* renamed from: h.l.b.a */
/* loaded from: classes2-dex2jar.jar:h/l/b/a.class */
public class C10693a {

    /* renamed from: a */
    public final Node f24365a;

    public C10693a(@NonNull Node node) {
        Preconditions.checkNotNull(node);
        this.f24365a = node;
    }

    @NonNull
    /* renamed from: a */
    public Set<String> m10897a() {
        List<Node> matchingChildNodes;
        HashSet hashSet = new HashSet();
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f24365a, VastExtensionXmlManager.AD_VERIFICATIONS);
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
