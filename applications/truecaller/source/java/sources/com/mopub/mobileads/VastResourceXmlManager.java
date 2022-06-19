package com.mopub.mobileads;

import com.mopub.common.Preconditions;
import org.w3c.dom.Node;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastResourceXmlManager.class */
public class VastResourceXmlManager {
    public static final String CREATIVE_TYPE = "creativeType";
    public static final String HTML_RESOURCE = "HTMLResource";
    public static final String IFRAME_RESOURCE = "IFrameResource";
    public static final String STATIC_RESOURCE = "StaticResource";

    /* renamed from: a */
    public final Node f8886a;

    public VastResourceXmlManager(Node node) {
        Preconditions.checkNotNull(node);
        this.f8886a = node;
    }
}
