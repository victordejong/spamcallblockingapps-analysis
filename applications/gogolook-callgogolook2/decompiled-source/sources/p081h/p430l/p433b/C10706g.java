package p081h.p430l.p433b;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.Preconditions;
import com.mopub.mobileads.util.XmlUtils;
import org.w3c.dom.Node;
/* renamed from: h.l.b.g */
/* loaded from: classes2-dex2jar.jar:h/l/b/g.class */
public class C10706g {
    @NonNull

    /* renamed from: a */
    public final Node f24401a;

    public C10706g(@NonNull Node node) {
        Preconditions.checkNotNull(node);
        this.f24401a = node;
    }

    @Nullable
    /* renamed from: a */
    public C10711k m10872a() {
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f24401a, "InLine");
        return firstMatchingChildNode != null ? new C10711k(firstMatchingChildNode) : null;
    }

    @Nullable
    /* renamed from: b */
    public String m10871b() {
        return XmlUtils.getAttributeValue(this.f24401a, "sequence");
    }

    @Nullable
    /* renamed from: c */
    public C10719p m10870c() {
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f24401a, "Wrapper");
        return firstMatchingChildNode != null ? new C10719p(firstMatchingChildNode) : null;
    }
}
