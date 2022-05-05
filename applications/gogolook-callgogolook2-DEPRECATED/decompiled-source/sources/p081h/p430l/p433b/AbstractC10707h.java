package p081h.p430l.p433b;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.Preconditions;
import com.mopub.mobileads.VastExtensionParentXmlManager;
import com.mopub.mobileads.VastTracker;
import com.mopub.mobileads.util.XmlUtils;
import java.util.ArrayList;
import java.util.List;
import org.w3c.dom.Node;
/* renamed from: h.l.b.h */
/* loaded from: classes2-dex2jar.jar:h/l/b/h.class */
public abstract class AbstractC10707h {
    @NonNull

    /* renamed from: a */
    public final Node f24402a;

    public AbstractC10707h(@NonNull Node node) {
        Preconditions.checkNotNull(node);
        this.f24402a = node;
    }

    @NonNull
    /* renamed from: a */
    public List<C10708i> m10869a() {
        List<Node> matchingChildNodes;
        List<Node> matchingChildNodes2;
        ArrayList arrayList = new ArrayList();
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f24402a, "Creatives");
        if (!(firstMatchingChildNode == null || (matchingChildNodes = XmlUtils.getMatchingChildNodes(firstMatchingChildNode, "Creative")) == null)) {
            for (Node node : matchingChildNodes) {
                Node firstMatchingChildNode2 = XmlUtils.getFirstMatchingChildNode(node, "CompanionAds");
                if (!(firstMatchingChildNode2 == null || (matchingChildNodes2 = XmlUtils.getMatchingChildNodes(firstMatchingChildNode2, "Companion")) == null)) {
                    for (Node node2 : matchingChildNodes2) {
                        arrayList.add(new C10708i(node2));
                    }
                }
            }
            return arrayList;
        }
        return arrayList;
    }

    @NonNull
    /* renamed from: b */
    public List<VastTracker> m10868b() {
        ArrayList arrayList = new ArrayList();
        List<Node> matchingChildNodes = XmlUtils.getMatchingChildNodes(this.f24402a, "Error");
        if (matchingChildNodes == null) {
            return arrayList;
        }
        for (Node node : matchingChildNodes) {
            String nodeValue = XmlUtils.getNodeValue(node);
            if (!TextUtils.isEmpty(nodeValue)) {
                arrayList.add(new VastTracker(nodeValue, true));
            }
        }
        return arrayList;
    }

    @NonNull
    /* renamed from: c */
    public List<VastTracker> m10867c() {
        List<Node> matchingChildNodes = XmlUtils.getMatchingChildNodes(this.f24402a, "Impression");
        ArrayList arrayList = new ArrayList();
        for (Node node : matchingChildNodes) {
            String nodeValue = XmlUtils.getNodeValue(node);
            if (!TextUtils.isEmpty(nodeValue)) {
                arrayList.add(new VastTracker(nodeValue));
            }
        }
        return arrayList;
    }

    @NonNull
    /* renamed from: d */
    public List<C10712l> m10866d() {
        List<Node> matchingChildNodes;
        ArrayList arrayList = new ArrayList();
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f24402a, "Creatives");
        if (!(firstMatchingChildNode == null || (matchingChildNodes = XmlUtils.getMatchingChildNodes(firstMatchingChildNode, "Creative")) == null)) {
            for (Node node : matchingChildNodes) {
                Node firstMatchingChildNode2 = XmlUtils.getFirstMatchingChildNode(node, "Linear");
                if (firstMatchingChildNode2 != null) {
                    arrayList.add(new C10712l(firstMatchingChildNode2));
                }
            }
            return arrayList;
        }
        return arrayList;
    }

    @Nullable
    /* renamed from: e */
    public VastExtensionParentXmlManager m10865e() {
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f24402a, "Extensions");
        if (firstMatchingChildNode == null) {
            return null;
        }
        return new VastExtensionParentXmlManager(firstMatchingChildNode);
    }
}
