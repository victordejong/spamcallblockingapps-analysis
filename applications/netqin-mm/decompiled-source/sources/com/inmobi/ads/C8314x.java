package com.inmobi.ads;

import com.inmobi.ads.NativeTracker;
import com.mopub.mobileads.VastExtensionXmlManager;
import java.util.List;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
/* renamed from: com.inmobi.ads.x */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/x.class */
public class C8314x {

    /* renamed from: a */
    public static final String f32340a = "x";

    /* renamed from: a */
    public static void m5929a(Document document, C8195by byVar) {
        List<Node> a = C8190bv.m6226a(document, VastExtensionXmlManager.AVID);
        if (a != null) {
            for (Node node : a) {
                m5928a(node, byVar);
            }
        }
    }

    /* renamed from: a */
    public static void m5928a(Node node, C8195by byVar) {
        String a;
        while (node.hasChildNodes()) {
            String nodeName = node.getNodeName();
            char c = 65535;
            switch (nodeName.hashCode()) {
                case -2077435339:
                    if (nodeName.equals(VastExtensionXmlManager.AD_VERIFICATIONS)) {
                        c = 1;
                        break;
                    }
                    break;
                case -1320080837:
                    if (nodeName.equals(VastExtensionXmlManager.VERIFICATION)) {
                        c = 2;
                        break;
                    }
                    break;
                case 2021392:
                    if (nodeName.equals(VastExtensionXmlManager.AVID)) {
                        c = 0;
                        break;
                    }
                    break;
                case 1561251035:
                    if (nodeName.equals("JavaScriptResource")) {
                        c = 3;
                        break;
                    }
                    break;
            }
            if (c == 0) {
                node = C8190bv.m6224a(node, VastExtensionXmlManager.AD_VERIFICATIONS);
                if (node == null) {
                    return;
                }
            } else if (c != 1) {
                if (c == 2) {
                    node = C8190bv.m6224a(node, "JavaScriptResource");
                    if (node == null) {
                        return;
                    }
                } else if (c == 3 && (a = C8190bv.m6225a(node)) != null) {
                    byVar.m6211a(new NativeTracker(a, 0, NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_IAS, null));
                    return;
                } else {
                    return;
                }
            } else if (node.hasChildNodes()) {
                NodeList childNodes = node.getChildNodes();
                int length = childNodes.getLength();
                for (int i = 0; i < length; i++) {
                    m5928a(childNodes.item(i), byVar);
                }
                return;
            } else {
                return;
            }
        }
    }
}
