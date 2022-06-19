package p000;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.VastAbsoluteProgressTracker;
import com.mopub.mobileads.VastFractionalProgressTracker;
import com.mopub.mobileads.VastIconXmlManager;
import com.mopub.mobileads.VastTracker;
import com.mopub.mobileads.util.XmlUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.w3c.dom.Node;
/* renamed from: mh1 */
/* loaded from: classes3-dex2jar.jar:mh1.class */
public class mh1 {
    public static final String ICON = "Icon";
    public static final String ICONS = "Icons";

    /* renamed from: a */
    public final Node f7035a;

    public mh1(Node node) {
        Preconditions.checkNotNull(node);
        this.f7035a = node;
    }

    /* renamed from: a */
    public final void m1255a(List<VastFractionalProgressTracker> list, List<String> list2, float f) {
        Preconditions.checkNotNull(list, "trackers cannot be null");
        Preconditions.checkNotNull(list2, "urls cannot be null");
        for (String str : list2) {
            list.add(new VastFractionalProgressTracker.Builder(str, f).build());
        }
    }

    /* renamed from: b */
    public List<VastAbsoluteProgressTracker> m1254b() {
        ArrayList arrayList = new ArrayList();
        for (String str : m1242n(TtmlNode.START)) {
            arrayList.add(new VastAbsoluteProgressTracker.Builder(str, 0).build());
        }
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f7035a, "TrackingEvents");
        if (firstMatchingChildNode != null) {
            for (Node node : XmlUtils.getMatchingChildNodes(firstMatchingChildNode, "Tracking", "event", Collections.singletonList("progress"))) {
                String attributeValue = XmlUtils.getAttributeValue(node, VastIconXmlManager.OFFSET);
                if (attributeValue != null) {
                    String trim = attributeValue.trim();
                    VastAbsoluteProgressTracker.Companion companion = VastAbsoluteProgressTracker.Companion;
                    if (companion.isAbsoluteTracker(trim)) {
                        String nodeValue = XmlUtils.getNodeValue(node);
                        try {
                            Integer parseAbsoluteOffset = companion.parseAbsoluteOffset(trim);
                            if (parseAbsoluteOffset != null && parseAbsoluteOffset.intValue() >= 0) {
                                arrayList.add(new VastAbsoluteProgressTracker.Builder(nodeValue, parseAbsoluteOffset.intValue()).build());
                            }
                        } catch (NumberFormatException e) {
                            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format("Failed to parse VAST progress tracker %s", trim));
                        }
                    }
                }
            }
            for (Node node2 : XmlUtils.getMatchingChildNodes(firstMatchingChildNode, "Tracking", "event", Collections.singletonList("creativeView"))) {
                String nodeValue2 = XmlUtils.getNodeValue(node2);
                if (nodeValue2 != null) {
                    arrayList.add(new VastAbsoluteProgressTracker.Builder(nodeValue2, 0).build());
                }
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    /* renamed from: c */
    public String m1253c() {
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f7035a, "VideoClicks");
        if (firstMatchingChildNode == null) {
            return null;
        }
        return XmlUtils.getNodeValue(XmlUtils.getFirstMatchingChildNode(firstMatchingChildNode, "ClickThrough"));
    }

    /* renamed from: d */
    public List<VastTracker> m1252d() {
        ArrayList arrayList = new ArrayList();
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f7035a, "VideoClicks");
        if (firstMatchingChildNode == null) {
            return arrayList;
        }
        for (Node node : XmlUtils.getMatchingChildNodes(firstMatchingChildNode, "ClickTracking")) {
            String nodeValue = XmlUtils.getNodeValue(node);
            if (nodeValue != null) {
                arrayList.add(new VastTracker.Builder(nodeValue).build());
            }
        }
        return arrayList;
    }

    /* renamed from: e */
    public List<VastFractionalProgressTracker> m1251e() {
        ArrayList arrayList = new ArrayList();
        m1255a(arrayList, m1242n("firstQuartile"), 0.25f);
        m1255a(arrayList, m1242n("midpoint"), 0.5f);
        m1255a(arrayList, m1242n("thirdQuartile"), 0.75f);
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f7035a, "TrackingEvents");
        if (firstMatchingChildNode != null) {
            for (Node node : XmlUtils.getMatchingChildNodes(firstMatchingChildNode, "Tracking", "event", Collections.singletonList("progress"))) {
                String attributeValue = XmlUtils.getAttributeValue(node, VastIconXmlManager.OFFSET);
                if (attributeValue != null) {
                    String trim = attributeValue.trim();
                    if (VastFractionalProgressTracker.Companion.isPercentageTracker(trim)) {
                        String nodeValue = XmlUtils.getNodeValue(node);
                        try {
                            float parseFloat = Float.parseFloat(trim.replace("%", "")) / 100.0f;
                            if (parseFloat >= 0.0f) {
                                arrayList.add(new VastFractionalProgressTracker.Builder(nodeValue, parseFloat).build());
                            }
                        } catch (NumberFormatException e) {
                            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format("Failed to parse VAST progress tracker %s", trim));
                        }
                    }
                }
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    /* renamed from: f */
    public List<VastIconXmlManager> m1250f() {
        ArrayList arrayList = new ArrayList();
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f7035a, ICONS);
        if (firstMatchingChildNode == null) {
            return arrayList;
        }
        for (Node node : XmlUtils.getMatchingChildNodes(firstMatchingChildNode, ICON)) {
            arrayList.add(new VastIconXmlManager(node));
        }
        return arrayList;
    }

    /* renamed from: g */
    public List<oh1> m1249g() {
        ArrayList arrayList = new ArrayList();
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f7035a, "MediaFiles");
        if (firstMatchingChildNode == null) {
            return arrayList;
        }
        for (Node node : XmlUtils.getMatchingChildNodes(firstMatchingChildNode, "MediaFile")) {
            arrayList.add(new oh1(node));
        }
        return arrayList;
    }

    /* renamed from: h */
    public List<VastTracker> m1248h() {
        List<String> m1242n = m1242n("pause");
        ArrayList arrayList = new ArrayList();
        for (String str : m1242n) {
            arrayList.add(new VastTracker.Builder(str).isRepeatable(true).build());
        }
        return arrayList;
    }

    /* renamed from: i */
    public List<VastTracker> m1247i() {
        List<String> m1242n = m1242n("resume");
        ArrayList arrayList = new ArrayList();
        for (String str : m1242n) {
            arrayList.add(new VastTracker.Builder(str).isRepeatable(true).build());
        }
        return arrayList;
    }

    /* renamed from: j */
    public String m1246j() {
        String attributeValue = XmlUtils.getAttributeValue(this.f7035a, "skipoffset");
        if (attributeValue != null && !attributeValue.trim().isEmpty()) {
            return attributeValue.trim();
        }
        return null;
    }

    /* renamed from: k */
    public List<VastTracker> m1245k() {
        List<VastTracker> m1241o = m1241o("close");
        m1241o.addAll(m1241o("closeLinear"));
        return m1241o;
    }

    /* renamed from: l */
    public List<VastTracker> m1244l() {
        return m1241o("complete");
    }

    /* renamed from: m */
    public List<VastTracker> m1243m() {
        return m1241o("skip");
    }

    /* renamed from: n */
    public final List<String> m1242n(String str) {
        Preconditions.checkNotNull(str);
        ArrayList arrayList = new ArrayList();
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f7035a, "TrackingEvents");
        if (firstMatchingChildNode == null) {
            return arrayList;
        }
        for (Node node : XmlUtils.getMatchingChildNodes(firstMatchingChildNode, "Tracking", "event", Collections.singletonList(str))) {
            String nodeValue = XmlUtils.getNodeValue(node);
            if (nodeValue != null) {
                arrayList.add(nodeValue);
            }
        }
        return arrayList;
    }

    /* renamed from: o */
    public final List<VastTracker> m1241o(String str) {
        List<String> m1242n = m1242n(str);
        ArrayList arrayList = new ArrayList(m1242n.size());
        for (String str2 : m1242n) {
            arrayList.add(new VastTracker.Builder(str2).build());
        }
        return arrayList;
    }
}
