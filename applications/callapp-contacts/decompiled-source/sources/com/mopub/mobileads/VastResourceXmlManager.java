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

    /* renamed from: a  reason: collision with root package name */
    final Node f34282a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public VastResourceXmlManager(Node node) {
        Preconditions.checkNotNull(node);
        this.f34282a = node;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String a() {
        return XmlUtils.getNodeValue(XmlUtils.getFirstMatchingChildNode(this.f34282a, STATIC_RESOURCE));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String b() {
        return XmlUtils.getNodeValue(XmlUtils.getFirstMatchingChildNode(this.f34282a, IFRAME_RESOURCE));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String c() {
        return XmlUtils.getNodeValue(XmlUtils.getFirstMatchingChildNode(this.f34282a, HTML_RESOURCE));
    }
}
