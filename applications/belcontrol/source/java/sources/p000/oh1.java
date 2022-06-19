package p000;

import com.mopub.common.Preconditions;
import com.mopub.mobileads.util.XmlUtils;
import org.w3c.dom.Node;
/* renamed from: oh1 */
/* loaded from: classes3-dex2jar.jar:oh1.class */
public class oh1 {

    /* renamed from: a */
    public final Node f7206a;

    public oh1(Node node) {
        Preconditions.checkNotNull(node, "mediaNode cannot be null");
        this.f7206a = node;
    }

    /* renamed from: a */
    public Integer m1030a() {
        Integer attributeValueAsInt = XmlUtils.getAttributeValueAsInt(this.f7206a, "bitrate");
        if (attributeValueAsInt != null) {
            return attributeValueAsInt;
        }
        Integer attributeValueAsInt2 = XmlUtils.getAttributeValueAsInt(this.f7206a, "minBitrate");
        Integer attributeValueAsInt3 = XmlUtils.getAttributeValueAsInt(this.f7206a, "maxBitrate");
        return (attributeValueAsInt2 == null || attributeValueAsInt3 == null) ? attributeValueAsInt2 != null ? attributeValueAsInt2 : attributeValueAsInt3 : Integer.valueOf((attributeValueAsInt2.intValue() + attributeValueAsInt3.intValue()) / 2);
    }

    /* renamed from: b */
    public Integer m1029b() {
        return XmlUtils.getAttributeValueAsInt(this.f7206a, "height");
    }

    /* renamed from: c */
    public String m1028c() {
        return XmlUtils.getNodeValue(this.f7206a);
    }

    /* renamed from: d */
    public String m1027d() {
        return XmlUtils.getAttributeValue(this.f7206a, "type");
    }

    /* renamed from: e */
    public Integer m1026e() {
        return XmlUtils.getAttributeValueAsInt(this.f7206a, "width");
    }
}
