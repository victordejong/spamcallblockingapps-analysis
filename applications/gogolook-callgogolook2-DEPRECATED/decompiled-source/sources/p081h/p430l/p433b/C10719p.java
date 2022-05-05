package p081h.p430l.p433b;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.Preconditions;
import com.mopub.mobileads.util.XmlUtils;
import org.w3c.dom.Node;
/* renamed from: h.l.b.p */
/* loaded from: classes2-dex2jar.jar:h/l/b/p.class */
public class C10719p extends AbstractC10707h {
    public C10719p(@NonNull Node node) {
        super(node);
        Preconditions.checkNotNull(node);
    }

    @Nullable
    /* renamed from: f */
    public String m10828f() {
        return XmlUtils.getNodeValue(XmlUtils.getFirstMatchingChildNode(this.f24402a, "VASTAdTagURI"));
    }
}
