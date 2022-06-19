package p000;

import android.text.TextUtils;
import com.mopub.common.Preconditions;
import com.mopub.mobileads.VastExtensionParentXmlManager;
import com.mopub.mobileads.VastTracker;
import com.mopub.mobileads.util.XmlUtils;
import java.util.ArrayList;
import java.util.List;
import org.w3c.dom.Node;
/* renamed from: jh1 */
/* loaded from: classes3-dex2jar.jar:jh1.class */
public abstract class jh1 {

    /* renamed from: a */
    public final Node f6839a;

    public jh1(Node node) {
        Preconditions.checkNotNull(node);
        this.f6839a = node;
    }

    /* renamed from: a */
    public List<kh1> m1477a() {
        List<Node> matchingChildNodes;
        List<Node> matchingChildNodes2;
        ArrayList arrayList = new ArrayList();
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f6839a, "Creatives");
        if (firstMatchingChildNode != null && (matchingChildNodes = XmlUtils.getMatchingChildNodes(firstMatchingChildNode, "Creative")) != null) {
            for (Node node : matchingChildNodes) {
                Node firstMatchingChildNode2 = XmlUtils.getFirstMatchingChildNode(node, "CompanionAds");
                if (firstMatchingChildNode2 != null && (matchingChildNodes2 = XmlUtils.getMatchingChildNodes(firstMatchingChildNode2, "Companion")) != null) {
                    for (Node node2 : matchingChildNodes2) {
                        arrayList.add(new kh1(node2));
                    }
                }
            }
            return arrayList;
        }
        return arrayList;
    }

    /* renamed from: b */
    public List<VastTracker> m1476b() {
        ArrayList arrayList = new ArrayList();
        List<Node> matchingChildNodes = XmlUtils.getMatchingChildNodes(this.f6839a, "Error");
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
    public List<VastTracker> m1475c() {
        List<Node> matchingChildNodes = XmlUtils.getMatchingChildNodes(this.f6839a, "Impression");
        ArrayList arrayList = new ArrayList();
        for (Node node : matchingChildNodes) {
            String nodeValue = XmlUtils.getNodeValue(node);
            if (!TextUtils.isEmpty(nodeValue)) {
                arrayList.add(new VastTracker.Builder(nodeValue).build());
            }
        }
        return arrayList;
    }

    /* renamed from: d */
    public List<mh1> m1474d() {
        List<Node> matchingChildNodes;
        ArrayList arrayList = new ArrayList();
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f6839a, "Creatives");
        if (firstMatchingChildNode != null && (matchingChildNodes = XmlUtils.getMatchingChildNodes(firstMatchingChildNode, "Creative")) != null) {
            for (Node node : matchingChildNodes) {
                Node firstMatchingChildNode2 = XmlUtils.getFirstMatchingChildNode(node, "Linear");
                if (firstMatchingChildNode2 != null) {
                    arrayList.add(new mh1(firstMatchingChildNode2));
                }
            }
            return arrayList;
        }
        return arrayList;
    }

    /* renamed from: e */
    public VastExtensionParentXmlManager m1473e() {
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f6839a, "Extensions");
        if (firstMatchingChildNode == null) {
            return null;
        }
        return new VastExtensionParentXmlManager(firstMatchingChildNode);
    }
}
