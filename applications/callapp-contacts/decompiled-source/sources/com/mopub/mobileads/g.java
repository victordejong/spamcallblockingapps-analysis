package com.mopub.mobileads;

import android.text.TextUtils;
import com.mopub.common.Preconditions;
import com.mopub.mobileads.VastTracker;
import com.mopub.mobileads.util.XmlUtils;
import java.util.ArrayList;
import java.util.List;
import org.w3c.dom.Node;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/g.class */
abstract class g {

    /* renamed from: a  reason: collision with root package name */
    protected final Node f34404a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(Node node) {
        Preconditions.checkNotNull(node);
        this.f34404a = node;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List<VastTracker> a() {
        List<Node> matchingChildNodes = XmlUtils.getMatchingChildNodes(this.f34404a, "Impression");
        ArrayList arrayList = new ArrayList();
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
        List<Node> matchingChildNodes = XmlUtils.getMatchingChildNodes(this.f34404a, "Error");
        if (matchingChildNodes == null) {
            return arrayList;
        }
        for (Node node : matchingChildNodes) {
            String nodeValue = XmlUtils.getNodeValue(node);
            if (!TextUtils.isEmpty(nodeValue)) {
                arrayList.add(new VastTracker.Builder(nodeValue).isRepeatable(true).build());
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List<j> c() {
        List<Node> matchingChildNodes;
        ArrayList arrayList = new ArrayList();
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f34404a, "Creatives");
        if (!(firstMatchingChildNode == null || (matchingChildNodes = XmlUtils.getMatchingChildNodes(firstMatchingChildNode, "Creative")) == null)) {
            for (Node node : matchingChildNodes) {
                Node firstMatchingChildNode2 = XmlUtils.getFirstMatchingChildNode(node, "Linear");
                if (firstMatchingChildNode2 != null) {
                    arrayList.add(new j(firstMatchingChildNode2));
                }
            }
            return arrayList;
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List<h> d() {
        List<Node> matchingChildNodes;
        List<Node> matchingChildNodes2;
        ArrayList arrayList = new ArrayList();
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f34404a, "Creatives");
        if (!(firstMatchingChildNode == null || (matchingChildNodes = XmlUtils.getMatchingChildNodes(firstMatchingChildNode, "Creative")) == null)) {
            for (Node node : matchingChildNodes) {
                Node firstMatchingChildNode2 = XmlUtils.getFirstMatchingChildNode(node, "CompanionAds");
                if (!(firstMatchingChildNode2 == null || (matchingChildNodes2 = XmlUtils.getMatchingChildNodes(firstMatchingChildNode2, "Companion")) == null)) {
                    for (Node node2 : matchingChildNodes2) {
                        arrayList.add(new h(node2));
                    }
                }
            }
            return arrayList;
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final VastExtensionParentXmlManager e() {
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f34404a, "Extensions");
        if (firstMatchingChildNode == null) {
            return null;
        }
        return new VastExtensionParentXmlManager(firstMatchingChildNode);
    }
}
