package com.mopub.mobileads;

import com.mopub.common.Preconditions;
import com.mopub.mobileads.util.XmlUtils;
import org.w3c.dom.Node;
/* renamed from: com.mopub.mobileads.m */
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/m.class */
final class C16875m extends AbstractC16865g {
    public C16875m(Node node) {
        super(node);
        Preconditions.checkNotNull(node);
    }

    /* renamed from: f */
    public final String m6322f() {
        return XmlUtils.getNodeValue(XmlUtils.getFirstMatchingChildNode(this.f59702a, "VASTAdTagURI"));
    }
}
