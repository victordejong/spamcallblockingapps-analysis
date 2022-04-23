package p131c.p421j.p424b;

import android.text.TextUtils;
import com.mopub.common.Preconditions;
import com.mopub.mobileads.VastResourceXmlManager;
import com.mopub.mobileads.VastTracker;
import com.mopub.mobileads.util.XmlUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.w3c.dom.Node;
/* renamed from: c.j.b.k */
/* loaded from: classes2-dex2jar.jar:c/j/b/k.class */
public class C6660k {

    /* renamed from: a */
    public final Node f20563a;

    /* renamed from: b */
    public final VastResourceXmlManager f20564b;

    public C6660k(Node node) {
        Preconditions.checkNotNull(node, "companionNode cannot be null");
        this.f20563a = node;
        this.f20564b = new VastResourceXmlManager(node);
    }

    /* renamed from: a */
    public String m20154a() {
        return XmlUtils.getNodeValue(XmlUtils.getFirstMatchingChildNode(this.f20563a, "CompanionClickThrough"));
    }

    /* renamed from: b */
    public List<VastTracker> m20153b() {
        ArrayList arrayList = new ArrayList();
        List<Node> matchingChildNodes = XmlUtils.getMatchingChildNodes(this.f20563a, "CompanionClickTracking");
        if (matchingChildNodes == null) {
            return arrayList;
        }
        for (Node node : matchingChildNodes) {
            String nodeValue = XmlUtils.getNodeValue(node);
            if (!TextUtils.isEmpty(nodeValue)) {
                arrayList.add(new VastTracker(nodeValue));
            }
        }
        return arrayList;
    }

    /* renamed from: c */
    public List<VastTracker> m20152c() {
        ArrayList arrayList = new ArrayList();
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f20563a, "TrackingEvents");
        if (firstMatchingChildNode == null) {
            return arrayList;
        }
        for (Node node : XmlUtils.getMatchingChildNodes(firstMatchingChildNode, "Tracking", "event", Collections.singletonList("creativeView"))) {
            String nodeValue = XmlUtils.getNodeValue(node);
            if (nodeValue != null) {
                arrayList.add(new VastTracker(nodeValue));
            }
        }
        return arrayList;
    }

    /* renamed from: d */
    public Integer m20151d() {
        return XmlUtils.getAttributeValueAsInt(this.f20563a, "height");
    }

    /* renamed from: e */
    public VastResourceXmlManager m20150e() {
        return this.f20564b;
    }

    /* renamed from: f */
    public Integer m20149f() {
        return XmlUtils.getAttributeValueAsInt(this.f20563a, "width");
    }

    /* renamed from: g */
    public boolean m20148g() {
        return !TextUtils.isEmpty(this.f20564b.m4261c()) || !TextUtils.isEmpty(this.f20564b.m4263a()) || !TextUtils.isEmpty(this.f20564b.m4262b());
    }
}
