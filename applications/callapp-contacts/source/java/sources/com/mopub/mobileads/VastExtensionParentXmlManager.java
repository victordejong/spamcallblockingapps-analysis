package com.mopub.mobileads;

import com.mopub.common.Preconditions;
import com.mopub.mobileads.util.XmlUtils;
import java.util.ArrayList;
import java.util.List;
import org.w3c.dom.Node;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastExtensionParentXmlManager.class */
public class VastExtensionParentXmlManager {

    /* renamed from: a */
    private final Node f59466a;

    public VastExtensionParentXmlManager(Node node) {
        Preconditions.checkNotNull(node);
        this.f59466a = node;
    }

    /* renamed from: a */
    public final List<VastExtensionXmlManager> m6421a() {
        ArrayList arrayList = new ArrayList();
        List<Node> matchingChildNodes = XmlUtils.getMatchingChildNodes(this.f59466a, "Extension");
        if (matchingChildNodes == null) {
            return arrayList;
        }
        for (Node node : matchingChildNodes) {
            arrayList.add(new VastExtensionXmlManager(node));
        }
        return arrayList;
    }
}
