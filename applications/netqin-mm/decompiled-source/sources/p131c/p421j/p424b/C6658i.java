package p131c.p421j.p424b;

import com.mopub.common.Preconditions;
import com.mopub.mobileads.util.XmlUtils;
import org.w3c.dom.Node;
/* renamed from: c.j.b.i */
/* loaded from: classes2-dex2jar.jar:c/j/b/i.class */
public class C6658i {

    /* renamed from: a */
    public final Node f20561a;

    public C6658i(Node node) {
        Preconditions.checkNotNull(node);
        this.f20561a = node;
    }

    /* renamed from: a */
    public C6661l m20162a() {
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f20561a, "InLine");
        return firstMatchingChildNode != null ? new C6661l(firstMatchingChildNode) : null;
    }

    /* renamed from: b */
    public String m20161b() {
        return XmlUtils.getAttributeValue(this.f20561a, "sequence");
    }

    /* renamed from: c */
    public C6664o m20160c() {
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f20561a, "Wrapper");
        return firstMatchingChildNode != null ? new C6664o(firstMatchingChildNode) : null;
    }
}
