package com.mopub.mobileads;

import android.text.TextUtils;
import com.mopub.common.Preconditions;
import com.mopub.mobileads.VastTracker;
import com.mopub.mobileads.util.XmlUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import org.w3c.dom.Node;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.mopub.mobileads.h */
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/h.class */
public final class C16866h {

    /* renamed from: a */
    final Node f59703a;

    /* renamed from: b */
    final VastResourceXmlManager f59704b;

    public C16866h(Node node) {
        Preconditions.checkNotNull(node, "companionNode cannot be null");
        this.f59703a = node;
        this.f59704b = new VastResourceXmlManager(node);
    }

    /* renamed from: a */
    public final List<VastTracker> m6335a() {
        ArrayList arrayList = new ArrayList();
        List<Node> matchingChildNodes = XmlUtils.getMatchingChildNodes(this.f59703a, "CompanionClickTracking");
        if (matchingChildNodes == null) {
            return arrayList;
        }
        for (Node node : matchingChildNodes) {
            String nodeValue = XmlUtils.getNodeValue(node);
            if (!TextUtils.isEmpty(nodeValue)) {
                arrayList.add(new VastTracker.Builder(nodeValue).build());
            }
        }
        return arrayList;
    }

    /* renamed from: b */
    public final List<VastTracker> m6334b() {
        ArrayList arrayList = new ArrayList();
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f59703a, "TrackingEvents");
        if (firstMatchingChildNode == null) {
            return arrayList;
        }
        for (Node node : XmlUtils.getMatchingChildNodes(firstMatchingChildNode, "Tracking", "event", Collections.singletonList(EventConstants.CREATIVE_VIEW))) {
            String nodeValue = XmlUtils.getNodeValue(node);
            if (nodeValue != null) {
                arrayList.add(new VastTracker.Builder(nodeValue).build());
            }
        }
        return arrayList;
    }
}
