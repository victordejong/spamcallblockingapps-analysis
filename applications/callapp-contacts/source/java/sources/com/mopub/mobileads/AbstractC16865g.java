package com.mopub.mobileads;

import android.text.TextUtils;
import com.mopub.common.Preconditions;
import com.mopub.mobileads.VastTracker;
import com.mopub.mobileads.util.XmlUtils;
import java.util.ArrayList;
import java.util.List;
import org.w3c.dom.Node;
/* renamed from: com.mopub.mobileads.g */
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/g.class */
abstract class AbstractC16865g {

    /* renamed from: a */
    protected final Node f59702a;

    public AbstractC16865g(Node node) {
        Preconditions.checkNotNull(node);
        this.f59702a = node;
    }

    /* renamed from: a */
    public final List<VastTracker> m6340a() {
        List<Node> matchingChildNodes = XmlUtils.getMatchingChildNodes(this.f59702a, "Impression");
        ArrayList arrayList = new ArrayList();
        for (Node node : matchingChildNodes) {
            String nodeValue = XmlUtils.getNodeValue(node);
            if (!TextUtils.isEmpty(nodeValue)) {
                arrayList.add(new VastTracker.Builder(nodeValue).build());
            }
        }
        return arrayList;
    }

    /* renamed from: b */
    public final List<VastTracker> m6339b() {
        ArrayList arrayList = new ArrayList();
        List<Node> matchingChildNodes = XmlUtils.getMatchingChildNodes(this.f59702a, "Error");
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

    /* renamed from: c */
    public final List<C16872j> m6338c() {
        List<Node> matchingChildNodes;
        ArrayList arrayList = new ArrayList();
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f59702a, "Creatives");
        if (firstMatchingChildNode != null && (matchingChildNodes = XmlUtils.getMatchingChildNodes(firstMatchingChildNode, "Creative")) != null) {
            for (Node node : matchingChildNodes) {
                Node firstMatchingChildNode2 = XmlUtils.getFirstMatchingChildNode(node, "Linear");
                if (firstMatchingChildNode2 != null) {
                    arrayList.add(new C16872j(firstMatchingChildNode2));
                }
            }
            return arrayList;
        }
        return arrayList;
    }

    /* renamed from: d */
    public final List<C16866h> m6337d() {
        List<Node> matchingChildNodes;
        List<Node> matchingChildNodes2;
        ArrayList arrayList = new ArrayList();
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f59702a, "Creatives");
        if (firstMatchingChildNode != null && (matchingChildNodes = XmlUtils.getMatchingChildNodes(firstMatchingChildNode, "Creative")) != null) {
            for (Node node : matchingChildNodes) {
                Node firstMatchingChildNode2 = XmlUtils.getFirstMatchingChildNode(node, "CompanionAds");
                if (firstMatchingChildNode2 != null && (matchingChildNodes2 = XmlUtils.getMatchingChildNodes(firstMatchingChildNode2, "Companion")) != null) {
                    for (Node node2 : matchingChildNodes2) {
                        arrayList.add(new C16866h(node2));
                    }
                }
            }
            return arrayList;
        }
        return arrayList;
    }

    /* renamed from: e */
    public final VastExtensionParentXmlManager m6336e() {
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f59702a, "Extensions");
        if (firstMatchingChildNode == null) {
            return null;
        }
        return new VastExtensionParentXmlManager(firstMatchingChildNode);
    }
}
