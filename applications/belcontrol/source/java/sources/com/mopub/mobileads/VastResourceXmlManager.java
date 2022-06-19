package com.mopub.mobileads;

import com.mopub.common.Preconditions;
import com.mopub.mobileads.util.XmlUtils;
import org.w3c.dom.Node;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastResourceXmlManager.class */
public class VastResourceXmlManager {
    public static final String CREATIVE_TYPE = "creativeType";
    public static final String HTML_RESOURCE = "HTMLResource";
    public static final String IFRAME_RESOURCE = "IFrameResource";
    public static final String STATIC_RESOURCE = "StaticResource";

    /* renamed from: a */
    public final Node f4849a;

    public VastResourceXmlManager(Node node) {
        Preconditions.checkNotNull(node);
        this.f4849a = node;
    }

    /* renamed from: a */
    public String m3570a() {
        return XmlUtils.getNodeValue(XmlUtils.getFirstMatchingChildNode(this.f4849a, HTML_RESOURCE));
    }

    /* renamed from: b */
    public String m3569b() {
        return XmlUtils.getNodeValue(XmlUtils.getFirstMatchingChildNode(this.f4849a, IFRAME_RESOURCE));
    }

    /* renamed from: c */
    public String m3568c() {
        return XmlUtils.getNodeValue(XmlUtils.getFirstMatchingChildNode(this.f4849a, STATIC_RESOURCE));
    }

    /* renamed from: d */
    public String m3567d() {
        String attributeValue = XmlUtils.getAttributeValue(XmlUtils.getFirstMatchingChildNode(this.f4849a, STATIC_RESOURCE), CREATIVE_TYPE);
        if (attributeValue != null) {
            return attributeValue.toLowerCase();
        }
        return null;
    }
}
