package com.mopub.mobileads;

import com.mopub.common.Preconditions;
import com.mopub.mobileads.util.XmlUtils;
import java.util.ArrayList;
import java.util.List;
import org.w3c.dom.Node;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastExtensionParentXmlManager.class */
public class VastExtensionParentXmlManager {

    /* renamed from: a  reason: collision with root package name */
    private final Node f34254a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public VastExtensionParentXmlManager(Node node) {
        Preconditions.checkNotNull(node);
        this.f34254a = node;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List<VastExtensionXmlManager> a() {
        ArrayList arrayList = new ArrayList();
        List<Node> matchingChildNodes = XmlUtils.getMatchingChildNodes(this.f34254a, "Extension");
        if (matchingChildNodes == null) {
            return arrayList;
        }
        for (Node node : matchingChildNodes) {
            arrayList.add(new VastExtensionXmlManager(node));
        }
        return arrayList;
    }
}
