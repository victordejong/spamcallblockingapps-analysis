package p131c.p421j.p424b;

import com.mopub.common.Preconditions;
import com.mopub.mobileads.util.XmlUtils;
import org.w3c.dom.Node;
/* renamed from: c.j.b.o */
/* loaded from: classes2-dex2jar.jar:c/j/b/o.class */
public class C6664o extends AbstractC6659j {
    public C6664o(Node node) {
        super(node);
        Preconditions.checkNotNull(node);
    }

    /* renamed from: f */
    public String m20127f() {
        return XmlUtils.getNodeValue(XmlUtils.getFirstMatchingChildNode(this.f20562a, "VASTAdTagURI"));
    }
}
