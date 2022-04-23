package com.mopub.mobileads;

import com.mopub.common.Preconditions;
import com.mopub.mobileads.util.XmlUtils;
import org.w3c.dom.Node;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/m.class */
public final class m extends g {
    /* JADX INFO: Access modifiers changed from: package-private */
    public m(Node node) {
        super(node);
        Preconditions.checkNotNull(node);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String f() {
        return XmlUtils.getNodeValue(XmlUtils.getFirstMatchingChildNode(this.f34404a, "VASTAdTagURI"));
    }
}
