package p081h.p430l.p433b;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.Preconditions;
import com.mopub.mobileads.util.XmlUtils;
import org.w3c.dom.Node;
/* renamed from: h.l.b.n */
/* loaded from: classes2-dex2jar.jar:h/l/b/n.class */
public class C10714n {
    @NonNull

    /* renamed from: a */
    public final Node f24417a;

    public C10714n(@NonNull Node node) {
        Preconditions.checkNotNull(node, "mediaNode cannot be null");
        this.f24417a = node;
    }

    @Nullable
    /* renamed from: a */
    public Integer m10834a() {
        Integer attributeValueAsInt = XmlUtils.getAttributeValueAsInt(this.f24417a, "bitrate");
        if (attributeValueAsInt != null) {
            return attributeValueAsInt;
        }
        Integer attributeValueAsInt2 = XmlUtils.getAttributeValueAsInt(this.f24417a, "minBitrate");
        Integer attributeValueAsInt3 = XmlUtils.getAttributeValueAsInt(this.f24417a, "maxBitrate");
        return (attributeValueAsInt2 == null || attributeValueAsInt3 == null) ? attributeValueAsInt2 != null ? attributeValueAsInt2 : attributeValueAsInt3 : Integer.valueOf((attributeValueAsInt2.intValue() + attributeValueAsInt3.intValue()) / 2);
    }

    @Nullable
    /* renamed from: b */
    public Integer m10833b() {
        return XmlUtils.getAttributeValueAsInt(this.f24417a, "height");
    }

    @Nullable
    /* renamed from: c */
    public String m10832c() {
        return XmlUtils.getNodeValue(this.f24417a);
    }

    @Nullable
    /* renamed from: d */
    public String m10831d() {
        return XmlUtils.getAttributeValue(this.f24417a, "type");
    }

    @Nullable
    /* renamed from: e */
    public Integer m10830e() {
        return XmlUtils.getAttributeValueAsInt(this.f24417a, "width");
    }
}
