package p000;

import com.mopub.common.Preconditions;
import com.mopub.mobileads.util.XmlUtils;
import org.w3c.dom.Node;
/* renamed from: ph1 */
/* loaded from: classes3-dex2jar.jar:ph1.class */
public class ph1 extends jh1 {
    public ph1(Node node) {
        super(node);
        Preconditions.checkNotNull(node);
    }

    /* renamed from: f */
    public String m918f() {
        return XmlUtils.getNodeValue(XmlUtils.getFirstMatchingChildNode(this.f6839a, "VASTAdTagURI"));
    }
}
