package com.mopub.mobileads;

import com.mopub.common.Preconditions;
import com.mopub.mobileads.util.XmlUtils;
import org.w3c.dom.Node;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastResourceXmlManager.class */
public class VastResourceXmlManager {
    public static final String CREATIVE_TYPE = "creativeType";
    public static final String HTML_RESOURCE = "HTMLResource";
    public static final String IFRAME_RESOURCE = "IFrameResource";
    public static final String STATIC_RESOURCE = "StaticResource";

    /* renamed from: a */
    final Node f59504a;

    public VastResourceXmlManager(Node node) {
        Preconditions.checkNotNull(node);
        this.f59504a = node;
    }

    /* renamed from: a */
    public final String m6410a() {
        return XmlUtils.getNodeValue(XmlUtils.getFirstMatchingChildNode(this.f59504a, STATIC_RESOURCE));
    }

    /* renamed from: b */
    public final String m6409b() {
        return XmlUtils.getNodeValue(XmlUtils.getFirstMatchingChildNode(this.f59504a, IFRAME_RESOURCE));
    }

    /* renamed from: c */
    public final String m6408c() {
        return XmlUtils.getNodeValue(XmlUtils.getFirstMatchingChildNode(this.f59504a, HTML_RESOURCE));
    }
}
