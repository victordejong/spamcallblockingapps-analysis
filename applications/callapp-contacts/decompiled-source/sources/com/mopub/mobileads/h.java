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
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/h.class */
final class h {

    /* renamed from: a  reason: collision with root package name */
    final Node f34405a;

    /* renamed from: b  reason: collision with root package name */
    final VastResourceXmlManager f34406b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(Node node) {
        Preconditions.checkNotNull(node, "companionNode cannot be null");
        this.f34405a = node;
        this.f34406b = new VastResourceXmlManager(node);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List<VastTracker> a() {
        ArrayList arrayList = new ArrayList();
        List<Node> matchingChildNodes = XmlUtils.getMatchingChildNodes(this.f34405a, "CompanionClickTracking");
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List<VastTracker> b() {
        ArrayList arrayList = new ArrayList();
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f34405a, "TrackingEvents");
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
