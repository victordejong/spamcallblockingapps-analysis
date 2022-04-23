package com.mopub.mobileads;

import com.mopub.common.Preconditions;
import com.mopub.mobileads.util.XmlUtils;
import java.util.ArrayList;
import java.util.List;
import org.w3c.dom.Node;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastExtensionParentXmlManager.class */
public class VastExtensionParentXmlManager {

    /* renamed from: a */
    public final Node f34238a;

    public VastExtensionParentXmlManager(Node node) {
        Preconditions.checkNotNull(node);
        this.f34238a = node;
    }

    /* renamed from: a */
    public List<VastExtensionXmlManager> m4282a() {
        ArrayList arrayList = new ArrayList();
        List<Node> matchingChildNodes = XmlUtils.getMatchingChildNodes(this.f34238a, "Extension");
        if (matchingChildNodes == null) {
            return arrayList;
        }
        for (Node node : matchingChildNodes) {
            arrayList.add(new VastExtensionXmlManager(node));
        }
        return arrayList;
    }
}
