package p131c.p421j.p424b;

import com.mopub.common.Preconditions;
import com.mopub.mobileads.util.XmlUtils;
import org.w3c.dom.Node;
/* renamed from: c.j.b.n */
/* loaded from: classes2-dex2jar.jar:c/j/b/n.class */
public class C6663n {

    /* renamed from: a */
    public final Node f20566a;

    public C6663n(Node node) {
        Preconditions.checkNotNull(node, "mediaNode cannot be null");
        this.f20566a = node;
    }

    /* renamed from: a */
    public Integer m20132a() {
        Integer attributeValueAsInt = XmlUtils.getAttributeValueAsInt(this.f20566a, "bitrate");
        if (attributeValueAsInt != null) {
            return attributeValueAsInt;
        }
        Integer attributeValueAsInt2 = XmlUtils.getAttributeValueAsInt(this.f20566a, "minBitrate");
        Integer attributeValueAsInt3 = XmlUtils.getAttributeValueAsInt(this.f20566a, "maxBitrate");
        return (attributeValueAsInt2 == null || attributeValueAsInt3 == null) ? attributeValueAsInt2 != null ? attributeValueAsInt2 : attributeValueAsInt3 : Integer.valueOf((attributeValueAsInt2.intValue() + attributeValueAsInt3.intValue()) / 2);
    }

    /* renamed from: b */
    public Integer m20131b() {
        return XmlUtils.getAttributeValueAsInt(this.f20566a, "height");
    }

    /* renamed from: c */
    public String m20130c() {
        return XmlUtils.getNodeValue(this.f20566a);
    }

    /* renamed from: d */
    public String m20129d() {
        return XmlUtils.getAttributeValue(this.f20566a, "type");
    }

    /* renamed from: e */
    public Integer m20128e() {
        return XmlUtils.getAttributeValueAsInt(this.f20566a, "width");
    }
}
