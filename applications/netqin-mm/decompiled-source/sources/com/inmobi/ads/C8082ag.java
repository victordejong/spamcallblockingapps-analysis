package com.inmobi.ads;

import android.text.TextUtils;
import com.facebook.ads.ExtraHints;
import com.inmobi.ads.NativeTracker;
import com.inmobi.commons.core.utilities.Logger;
import com.mopub.mobileads.VastExtensionXmlManager;
import java.io.StringWriter;
import java.util.Iterator;
import java.util.List;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
/* renamed from: com.inmobi.ads.ag */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/ag.class */
public class C8082ag {

    /* renamed from: a */
    public static final String f31604a = "ag";

    /* renamed from: a */
    public static String m6524a(Node node) {
        StringWriter stringWriter = new StringWriter();
        try {
            Transformer newTransformer = TransformerFactory.newInstance().newTransformer();
            newTransformer.setOutputProperty("omit-xml-declaration", "yes");
            newTransformer.transform(new DOMSource(node), new StreamResult(stringWriter));
        } catch (TransformerException e) {
            Logger.InternalLogLevel internalLogLevel = Logger.InternalLogLevel.INTERNAL;
            String str = f31604a;
            Logger.m5724a(internalLogLevel, str, "Exception while converting Moat node to string : " + e.getMessage());
        }
        return stringWriter.toString();
    }

    /* renamed from: a */
    public static void m6525a(Document document, C8195by byVar) {
        List<Node> a = C8190bv.m6226a(document, VastExtensionXmlManager.VERIFICATION);
        if (a != null) {
            StringBuilder sb = new StringBuilder();
            Iterator<Node> it = a.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Element element = (Element) it.next();
                NodeList childNodes = element.getChildNodes();
                if (VastExtensionXmlManager.MOAT.equals(element.getAttribute(VastExtensionXmlManager.VENDOR)) && childNodes.getLength() > 0) {
                    for (int i = 0; i < childNodes.getLength(); i++) {
                        Node item = childNodes.item(i);
                        if ("ViewableImpression".equals(item.getNodeName())) {
                            String a2 = m6524a(item);
                            if (!TextUtils.isEmpty(a2)) {
                                sb.append(a2);
                                sb.append(ExtraHints.KEYWORD_SEPARATOR);
                                Logger.InternalLogLevel internalLogLevel = Logger.InternalLogLevel.INTERNAL;
                                String str = f31604a;
                                Logger.m5724a(internalLogLevel, str, "Found Moat Verification tag in VAST with value : " + a2);
                            }
                        }
                    }
                }
            }
            if (sb.length() != 0) {
                Logger.InternalLogLevel internalLogLevel2 = Logger.InternalLogLevel.INTERNAL;
                String str2 = f31604a;
                Logger.m5724a(internalLogLevel2, str2, "Moat VastIDs in VAST : " + sb.toString());
                byVar.m6211a(new NativeTracker(sb.toString(), 0, NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_MOAT, null));
            }
        }
    }
}
