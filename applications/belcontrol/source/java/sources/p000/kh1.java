package p000;

import android.text.TextUtils;
import com.mopub.common.Preconditions;
import com.mopub.mobileads.VastResourceXmlManager;
import com.mopub.mobileads.VastTracker;
import com.mopub.mobileads.util.XmlUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.w3c.dom.Node;
/* renamed from: kh1 */
/* loaded from: classes3-dex2jar.jar:kh1.class */
public class kh1 {

    /* renamed from: a */
    public final Node f6858a;

    /* renamed from: b */
    public final VastResourceXmlManager f6859b;

    public kh1(Node node) {
        Preconditions.checkNotNull(node, "companionNode cannot be null");
        this.f6858a = node;
        this.f6859b = new VastResourceXmlManager(node);
    }

    /* renamed from: a */
    public String m1398a() {
        return XmlUtils.getNodeValue(XmlUtils.getFirstMatchingChildNode(this.f6858a, "CompanionClickThrough"));
    }

    /* renamed from: b */
    public List<VastTracker> m1397b() {
        ArrayList arrayList = new ArrayList();
        List<Node> matchingChildNodes = XmlUtils.getMatchingChildNodes(this.f6858a, "CompanionClickTracking");
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

    /* renamed from: c */
    public List<VastTracker> m1396c() {
        ArrayList arrayList = new ArrayList();
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f6858a, "TrackingEvents");
        if (firstMatchingChildNode == null) {
            return arrayList;
        }
        for (Node node : XmlUtils.getMatchingChildNodes(firstMatchingChildNode, "Tracking", "event", Collections.singletonList("creativeView"))) {
            String nodeValue = XmlUtils.getNodeValue(node);
            if (nodeValue != null) {
                arrayList.add(new VastTracker.Builder(nodeValue).build());
            }
        }
        return arrayList;
    }

    /* renamed from: d */
    public Integer m1395d() {
        return XmlUtils.getAttributeValueAsInt(this.f6858a, "height");
    }

    /* renamed from: e */
    public VastResourceXmlManager m1394e() {
        return this.f6859b;
    }

    /* renamed from: f */
    public Integer m1393f() {
        return XmlUtils.getAttributeValueAsInt(this.f6858a, "width");
    }

    /* renamed from: g */
    public boolean m1392g() {
        return !TextUtils.isEmpty(this.f6859b.m3568c()) || !TextUtils.isEmpty(this.f6859b.m3570a()) || !TextUtils.isEmpty(this.f6859b.m3569b());
    }
}
