package p131c.p421j.p424b;

import com.mopub.common.Preconditions;
import com.mopub.mobileads.util.XmlUtils;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import org.w3c.dom.Node;
/* renamed from: c.j.b.g */
/* loaded from: classes2-dex2jar.jar:c/j/b/g.class */
public class C6655g {

    /* renamed from: a */
    public final List<Node> f20550a;

    public C6655g(List<Node> list) {
        Preconditions.checkNotNull(list);
        this.f20550a = list;
    }

    /* renamed from: a */
    public final String m20184a(Node node) {
        if (node == null || !node.hasAttributes()) {
            return null;
        }
        return String.format(Locale.US, "<ViewableImpression id=\"%s\"><![CDATA[%s]]</ViewableImpression>", XmlUtils.getAttributeValue(node, "id"), XmlUtils.getNodeValue(node));
    }

    /* renamed from: a */
    public Set<String> m20185a() {
        String a;
        HashSet hashSet = new HashSet();
        for (Node node : this.f20550a) {
            if (!(node == null || (a = m20184a(XmlUtils.getFirstMatchingChildNode(node, "ViewableImpression"))) == null)) {
                hashSet.add(a);
            }
        }
        return hashSet;
    }
}
