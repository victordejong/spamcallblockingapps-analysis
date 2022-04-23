package p081h.p430l.p433b;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.Preconditions;
import com.mopub.mobileads.util.XmlUtils;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import org.w3c.dom.Node;
/* renamed from: h.l.b.f */
/* loaded from: classes2-dex2jar.jar:h/l/b/f.class */
public class C10705f {

    /* renamed from: a */
    public final List<Node> f24400a;

    public C10705f(@NonNull List<Node> list) {
        Preconditions.checkNotNull(list);
        this.f24400a = list;
    }

    @Nullable
    /* renamed from: a */
    public final String m10873a(@Nullable Node node) {
        if (node == null || !node.hasAttributes()) {
            return null;
        }
        return String.format(Locale.US, "<ViewableImpression id=\"%s\"><![CDATA[%s]]</ViewableImpression>", XmlUtils.getAttributeValue(node, "id"), XmlUtils.getNodeValue(node));
    }

    @NonNull
    /* renamed from: a */
    public Set<String> m10874a() {
        String a;
        HashSet hashSet = new HashSet();
        for (Node node : this.f24400a) {
            if (!(node == null || (a = m10873a(XmlUtils.getFirstMatchingChildNode(node, "ViewableImpression"))) == null)) {
                hashSet.add(a);
            }
        }
        return hashSet;
    }
}
