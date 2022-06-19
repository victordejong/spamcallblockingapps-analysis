package p000;

import com.mopub.common.Preconditions;
import com.mopub.mobileads.util.XmlUtils;
import org.w3c.dom.Node;
/* renamed from: ih1 */
/* loaded from: classes3-dex2jar.jar:ih1.class */
public class ih1 {

    /* renamed from: a */
    public final Node f6774a;

    public ih1(Node node) {
        Preconditions.checkNotNull(node);
        this.f6774a = node;
    }

    /* renamed from: a */
    public lh1 m1572a() {
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f6774a, "InLine");
        return firstMatchingChildNode != null ? new lh1(firstMatchingChildNode) : null;
    }

    /* renamed from: b */
    public String m1571b() {
        return XmlUtils.getAttributeValue(this.f6774a, "sequence");
    }

    /* renamed from: c */
    public ph1 m1570c() {
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f6774a, "Wrapper");
        return firstMatchingChildNode != null ? new ph1(firstMatchingChildNode) : null;
    }
}
