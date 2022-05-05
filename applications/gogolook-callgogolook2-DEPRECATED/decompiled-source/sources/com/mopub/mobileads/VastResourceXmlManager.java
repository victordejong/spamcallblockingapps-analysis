package com.mopub.mobileads;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.Preconditions;
import com.mopub.mobileads.util.XmlUtils;
import org.w3c.dom.Node;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastResourceXmlManager.class */
public class VastResourceXmlManager {
    public static final String CREATIVE_TYPE = "creativeType";
    public static final String HTML_RESOURCE = "HTMLResource";
    public static final String IFRAME_RESOURCE = "IFrameResource";
    public static final String STATIC_RESOURCE = "StaticResource";
    @NonNull

    /* renamed from: a */
    public final Node f8594a;

    public VastResourceXmlManager(@NonNull Node node) {
        Preconditions.checkNotNull(node);
        this.f8594a = node;
    }

    @Nullable
    /* renamed from: a */
    public String m30474a() {
        return XmlUtils.getNodeValue(XmlUtils.getFirstMatchingChildNode(this.f8594a, HTML_RESOURCE));
    }

    @Nullable
    /* renamed from: b */
    public String m30473b() {
        return XmlUtils.getNodeValue(XmlUtils.getFirstMatchingChildNode(this.f8594a, IFRAME_RESOURCE));
    }

    @Nullable
    /* renamed from: c */
    public String m30472c() {
        return XmlUtils.getNodeValue(XmlUtils.getFirstMatchingChildNode(this.f8594a, STATIC_RESOURCE));
    }

    @Nullable
    /* renamed from: d */
    public String m30471d() {
        String attributeValue = XmlUtils.getAttributeValue(XmlUtils.getFirstMatchingChildNode(this.f8594a, STATIC_RESOURCE), CREATIVE_TYPE);
        if (attributeValue != null) {
            return attributeValue.toLowerCase();
        }
        return null;
    }
}
