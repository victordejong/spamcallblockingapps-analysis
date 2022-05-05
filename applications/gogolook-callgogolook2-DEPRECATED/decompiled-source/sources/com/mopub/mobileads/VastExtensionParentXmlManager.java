package com.mopub.mobileads;

import androidx.annotation.NonNull;
import com.mopub.common.Preconditions;
import com.mopub.mobileads.util.XmlUtils;
import java.util.ArrayList;
import java.util.List;
import org.w3c.dom.Node;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastExtensionParentXmlManager.class */
public class VastExtensionParentXmlManager {
    @NonNull

    /* renamed from: a */
    public final Node f8552a;

    public VastExtensionParentXmlManager(@NonNull Node node) {
        Preconditions.checkNotNull(node);
        this.f8552a = node;
    }

    @NonNull
    /* renamed from: a */
    public List<VastExtensionXmlManager> m30493a() {
        ArrayList arrayList = new ArrayList();
        List<Node> matchingChildNodes = XmlUtils.getMatchingChildNodes(this.f8552a, "Extension");
        if (matchingChildNodes == null) {
            return arrayList;
        }
        for (Node node : matchingChildNodes) {
            arrayList.add(new VastExtensionXmlManager(node));
        }
        return arrayList;
    }
}
