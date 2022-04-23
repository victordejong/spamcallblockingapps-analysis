package com.inmobi.ads;

import android.os.SystemClock;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.google.logging.type.LogSeverity;
import com.inmobi.ads.C8188bu;
import com.inmobi.ads.C8197c;
import com.inmobi.ads.NativeTracker;
import com.inmobi.commons.core.network.C8383c;
import com.inmobi.commons.core.network.C8384d;
import com.inmobi.commons.core.network.C8385e;
import com.inmobi.commons.core.p509a.C8328a;
import com.inmobi.commons.core.p513e.C8365a;
import com.inmobi.commons.core.utilities.C8407d;
import com.inmobi.p497a.C8002n;
import com.inmobi.rendering.p517a.C8444c;
import com.mopub.mobileads.VastResourceXmlManager;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.w3c.dom.DOMException;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
/* renamed from: com.inmobi.ads.bv */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/bv.class */
public class C8190bv {

    /* renamed from: a */
    public static final String f31941a = "bv";

    /* renamed from: d */
    public static final Map<String, NativeTracker.TrackerEventType> f31942d;

    /* renamed from: b */
    public C8197c.C8208k f31943b;

    /* renamed from: c */
    public final String f31944c = "Progressive";

    /* renamed from: e */
    public int f31945e = 0;

    /* renamed from: f */
    public C8195by f31946f;

    static {
        HashMap hashMap = new HashMap();
        f31942d = hashMap;
        hashMap.put("Error", NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_ERROR);
        f31942d.put("Impression", NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_RENDER);
        f31942d.put("ClickTracking", NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_CLICK);
        f31942d.put("creativeView", NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_CREATIVE_VIEW);
        f31942d.put("start", NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_PLAY);
        f31942d.put("firstQuartile", NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_Q1);
        f31942d.put("midpoint", NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_Q2);
        f31942d.put("thirdQuartile", NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_Q3);
        f31942d.put("complete", NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_Q4);
        f31942d.put("mute", NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_MUTE);
        f31942d.put("unmute", NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_UNMUTE);
        f31942d.put("pause", NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_PAUSE);
        f31942d.put("resume", NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_RESUME);
        f31942d.put("fullscreen", NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_FULLSCREEN);
        f31942d.put("exitFullscreen", NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_EXIT_FULLSCREEN);
    }

    public C8190bv(C8197c.C8208k kVar) {
        this.f31943b = kVar;
        this.f31946f = new C8195by(kVar);
    }

    /* renamed from: a */
    public static String m6225a(Node node) {
        String str;
        if (node == null) {
            return null;
        }
        try {
            str = node.getTextContent();
        } catch (DOMException e) {
            new StringBuilder("Error getting node value; ").append(e.getMessage());
            C8328a.m5878a().m5875a(new C8365a(e));
            str = null;
        }
        if (!TextUtils.isEmpty(str)) {
            return str.trim();
        }
        return null;
    }

    /* renamed from: a */
    public static List<Node> m6226a(Document document, String str) {
        if (document == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        NodeList elementsByTagName = document.getElementsByTagName(str);
        for (int i = 0; i < elementsByTagName.getLength(); i++) {
            arrayList.add(elementsByTagName.item(i));
        }
        if (elementsByTagName.getLength() == 0) {
            return null;
        }
        return arrayList;
    }

    /* renamed from: a */
    public static Node m6227a(List<Node> list, String str) {
        Node node = null;
        if (list == null) {
            return null;
        }
        for (int i = 0; i < list.size(); i++) {
            node = m6224a(list.get(i), str);
            node = node;
            if (node != null) {
                break;
            }
        }
        return node;
    }

    /* renamed from: a */
    public static Node m6224a(Node node, String str) {
        List<Node> b = m6220b(node, str);
        return b.size() > 0 ? b.get(0) : null;
    }

    /* renamed from: a */
    private void m6233a(int i) {
        this.f31946f.f31970f = i;
        m6223b(i);
    }

    /* renamed from: a */
    private void m6229a(List<Node> list) {
        if (!(list == null || list.size() == 0)) {
            for (Node node : list) {
                String attribute = ((Element) node).getAttribute("event");
                if (f31942d.containsKey(attribute)) {
                    m6231a(f31942d.get(attribute), node);
                }
            }
        }
    }

    /* renamed from: a */
    public static void m6228a(List<Node> list, C8188bu buVar) {
        if (list != null) {
            for (int i = 0; i < list.size(); i++) {
                Node node = list.get(i);
                if (1 == node.getNodeType()) {
                    String a = m6225a(node);
                    if (!URLUtil.isValidUrl(a)) {
                        StringBuilder sb = new StringBuilder("Malformed URL: ");
                        sb.append(a);
                        sb.append("; Discarding this tracker");
                    } else {
                        buVar.m6237a(new NativeTracker(a, 0, NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_CLICK, null));
                    }
                }
            }
        }
    }

    /* renamed from: a */
    private boolean m6232a(NativeTracker.TrackerEventType trackerEventType, List<Node> list) {
        if (list == null) {
            return true;
        }
        for (int i = 0; i < list.size(); i++) {
            Node node = list.get(i);
            if (node.getNodeType() == 1 && !m6231a(trackerEventType, node)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    private boolean m6231a(NativeTracker.TrackerEventType trackerEventType, Node node) {
        String a = m6225a(node);
        if (!URLUtil.isValidUrl(a)) {
            StringBuilder sb = new StringBuilder("Malformed URL ");
            sb.append(a);
            sb.append(" Discarding this tracker");
            return trackerEventType != NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_RENDER;
        }
        this.f31946f.m6211a(new NativeTracker(a, 0, trackerEventType, null));
        return true;
    }

    /* renamed from: b */
    public static C8384d m6222b(String str) {
        C8383c cVar = new C8383c("GET", str);
        cVar.f32615t = false;
        cVar.f32621z = false;
        cVar.f32614s = true;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        C8384d a = new C8385e(cVar).m5728a();
        try {
            C8002n.m6748a().m6747a(cVar.m5734g());
            C8002n.m6748a().m6745b(a.m5729c());
            C8002n.m6748a().m6744c(SystemClock.elapsedRealtime() - elapsedRealtime);
        } catch (Exception e) {
            new StringBuilder("Error in setting request-response data size. ").append(e.getMessage());
            C8328a.m5878a().m5875a(new C8365a(e));
        }
        return a;
    }

    /* renamed from: b */
    public static List<Node> m6220b(Node node, String str) {
        ArrayList arrayList = new ArrayList();
        if (!(node == null || str == null)) {
            NodeList childNodes = node.getChildNodes();
            for (int i = 0; i < childNodes.getLength(); i++) {
                Node item = childNodes.item(i);
                if (item.getNodeType() == 1 && str.equals(item.getNodeName())) {
                    arrayList.add(item);
                }
            }
        }
        return arrayList;
    }

    /* renamed from: b */
    private void m6223b(int i) {
        C8444c a = C8444c.m5530a();
        HashMap hashMap = new HashMap();
        hashMap.put("[ERRORCODE]", String.valueOf(i));
        for (NativeTracker nativeTracker : this.f31946f.f31968d) {
            if (nativeTracker.f31407b == NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_ERROR) {
                a.m5524a(C8407d.m5646a(nativeTracker.f31406a, hashMap), nativeTracker.f31408c);
            }
        }
    }

    /* renamed from: b */
    private boolean m6221b(Node node) {
        if (node == null) {
            return false;
        }
        m6232a(NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_ERROR, m6220b(node, "Error"));
        List<Node> b = m6220b(node, "Impression");
        if (b.isEmpty()) {
            return false;
        }
        return m6232a(NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_RENDER, b);
    }

    /* renamed from: c */
    public static int m6219c(String str) {
        int i;
        try {
            i = Integer.parseInt(str);
        } catch (NumberFormatException e) {
            C8328a.m5878a().m5875a(new C8365a(e));
            i = 0;
        }
        return i;
    }

    /* renamed from: c */
    public static String m6218c(Node node, String str) {
        return m6225a(m6224a(node, str));
    }

    /* renamed from: d */
    public static boolean m6217d(String str) {
        int size = C8188bu.f31930f.size();
        for (int i = 0; i < size; i++) {
            if (str.equalsIgnoreCase(C8188bu.f31930f.get(i))) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public final C8195by m6230a(String str) {
        if (str == null || str.isEmpty()) {
            m6233a(303);
            return this.f31946f;
        }
        try {
            Document parse = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(new InputSource(new StringReader(str)));
            Node a = m6224a((Node) parse, "VAST");
            if (a == null) {
                m6233a(101);
                return this.f31946f;
            }
            Node a2 = m6224a(a, "Ad");
            if (a2 == null) {
                m6233a(303);
                return this.f31946f;
            }
            Node a3 = m6224a(a2, "Wrapper");
            if (a3 != null) {
                int i = this.f31945e + 1;
                this.f31945e = i;
                if (i > this.f31943b.f32052a) {
                    m6233a(302);
                    return this.f31946f;
                } else if (!m6221b(a3)) {
                    m6233a(101);
                    return this.f31946f;
                } else {
                    List<Node> a4 = m6226a(parse, "TrackingEvents");
                    if (a4 != null) {
                        m6229a(m6220b(a4.get(0), "Tracking"));
                    }
                    C8314x.m5929a(parse, this.f31946f);
                    C8082ag.m6525a(parse, this.f31946f);
                    m6232a(NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_CLICK, m6226a(parse, "ClickTracking"));
                    String c = m6218c(a3, "VASTAdTagURI");
                    if (c == null) {
                        m6233a(101);
                        return this.f31946f;
                    } else if (c == null || c.isEmpty()) {
                        m6233a(LogSeverity.NOTICE_VALUE);
                    } else {
                        C8384d b = m6222b(c);
                        if (b.m5733a()) {
                            m6233a(301);
                        } else {
                            m6230a(b.m5731b());
                        }
                    }
                }
            } else {
                Node a5 = m6224a(a2, "InLine");
                if (a5 == null) {
                    m6233a(101);
                    return this.f31946f;
                } else if (!m6221b(a5)) {
                    m6233a(101);
                    return this.f31946f;
                } else {
                    Node a6 = m6224a(a5, "Creatives");
                    if (a6 == null) {
                        m6233a(101);
                        return this.f31946f;
                    }
                    List<Node> b2 = m6220b(a6, "Creative");
                    if (b2.isEmpty()) {
                        m6233a(101);
                        return this.f31946f;
                    }
                    Node a7 = m6227a(b2, "Linear");
                    if (a7 == null) {
                        m6233a(201);
                        return this.f31946f;
                    }
                    List<Node> b3 = m6220b(a7, "Duration");
                    if (b3.isEmpty()) {
                        m6233a(101);
                        return this.f31946f;
                    }
                    String a8 = m6225a(b3.get(0));
                    if (a8 == null || a8.isEmpty() || !a8.matches("\\d*:[0-5][0-9]:[0-5][0-9](:[0-9][0-9][0-9])?")) {
                        m6233a(101);
                        return this.f31946f;
                    }
                    this.f31946f.f31966b = a8;
                    Node a9 = m6224a(a7, "MediaFiles");
                    if (a9 == null) {
                        m6233a(101);
                        return this.f31946f;
                    }
                    Node a10 = m6224a(a7, "VideoClicks");
                    this.f31946f.f31967c = m6218c(a10, "ClickThrough");
                    m6232a(NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_CLICK, m6220b(a10, "ClickTracking"));
                    m6229a(m6220b(m6224a(a7, "TrackingEvents"), "Tracking"));
                    C8314x.m5929a(parse, this.f31946f);
                    C8082ag.m6525a(parse, this.f31946f);
                    List<Node> b4 = m6220b(a9, "MediaFile");
                    if (b4.isEmpty()) {
                        m6233a(401);
                        return this.f31946f;
                    }
                    C8197c.C8200c cVar = this.f31943b.f32055d;
                    for (int i2 = 0; i2 < b4.size(); i2++) {
                        Element element = (Element) b4.get(i2);
                        String a11 = m6225a(element);
                        if (URLUtil.isValidUrl(a11)) {
                            String attribute = element.getAttribute("delivery");
                            String attribute2 = element.getAttribute("type");
                            int c2 = m6219c(element.getAttribute("bitrate"));
                            if ((!cVar.f32014a || c2 > 0) && attribute != null && attribute.trim().equalsIgnoreCase("Progressive")) {
                                ArrayList<String> arrayList = this.f31943b.f32056e;
                                if (attribute2 != null) {
                                    int i3 = 0;
                                    while (true) {
                                        if (i3 >= arrayList.size()) {
                                            break;
                                        } else if (attribute2.equalsIgnoreCase(arrayList.get(i3))) {
                                            this.f31946f.f31965a.add(new C8191bw(a11, attribute, attribute2, c2));
                                            break;
                                        } else {
                                            i3++;
                                        }
                                    }
                                }
                            }
                        }
                    }
                    if (this.f31946f.f31965a.isEmpty()) {
                        m6233a(403);
                    }
                    List<Node> b5 = m6220b(a6, "Creative");
                    if (b5.isEmpty()) {
                        m6233a(101);
                        return this.f31946f;
                    }
                    Node a12 = m6227a(b5, "CompanionAds");
                    if (a12 == null) {
                        return this.f31946f;
                    }
                    List<Node> a13 = m6226a(parse, "CompanionAdTracking");
                    HashMap hashMap = new HashMap();
                    if (a13 != null) {
                        Iterator<Node> it = a13.iterator();
                        while (it.hasNext()) {
                            Iterator<Node> it2 = m6220b(it.next(), "TrackingEvents").iterator();
                            Iterator<Node> it3 = it;
                            while (true) {
                                it = it3;
                                if (it2.hasNext()) {
                                    Node next = it2.next();
                                    NamedNodeMap attributes = next.getAttributes();
                                    Node namedItem = (attributes == null || attributes.getLength() <= 0) ? null : attributes.getNamedItem("id");
                                    it3 = it3;
                                    it2 = it2;
                                    if (namedItem != null) {
                                        String nodeValue = namedItem.getNodeValue();
                                        Iterator<Node> it4 = m6220b(next, "Tracking").iterator();
                                        while (true) {
                                            it3 = it3;
                                            it2 = it2;
                                            if (it4.hasNext()) {
                                                Node next2 = it4.next();
                                                if ("closeEndCard".equals(((Element) next2).getAttribute("event"))) {
                                                    String a14 = m6225a(next2);
                                                    if (!URLUtil.isValidUrl(a14)) {
                                                        StringBuilder sb = new StringBuilder("Malformed URL: ");
                                                        sb.append(a14);
                                                        sb.append("; Discarding this tracker");
                                                    } else {
                                                        hashMap.put(nodeValue, new NativeTracker(a14, 0, NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_END_CARD_CLOSE, null));
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    List<Node> b6 = m6220b(a12, "Companion");
                    boolean z = false;
                    for (int i4 = 0; i4 < b6.size(); i4++) {
                        Element element2 = (Element) b6.get(i4);
                        int c3 = m6219c(element2.getAttribute("width"));
                        int c4 = m6219c(element2.getAttribute("height"));
                        if (!(c3 == 0 || c4 == 0)) {
                            String c5 = m6218c(element2, "CompanionClickThrough");
                            String str2 = c5;
                            if (!URLUtil.isValidUrl(c5)) {
                                str2 = null;
                            }
                            String attribute3 = element2.hasAttribute("id") ? element2.getAttribute("id") : null;
                            C8188bu buVar = new C8188bu(c3, c4, str2, attribute3);
                            Node a15 = m6224a(element2, VastResourceXmlManager.STATIC_RESOURCE);
                            if (a15 != null) {
                                String a16 = m6225a(a15);
                                String attribute4 = ((Element) a15).getAttribute(VastResourceXmlManager.CREATIVE_TYPE);
                                if (attribute4 != null && !attribute4.trim().isEmpty()) {
                                    if (m6217d(attribute4)) {
                                        buVar.m6236a(new C8188bu.C8189a(1, a16));
                                    } else {
                                        z = true;
                                    }
                                }
                            }
                            Node a17 = m6224a(element2, VastResourceXmlManager.HTML_RESOURCE);
                            if (a17 != null) {
                                buVar.m6236a(new C8188bu.C8189a(2, m6225a(a17)));
                            }
                            Node a18 = m6224a(element2, VastResourceXmlManager.IFRAME_RESOURCE);
                            if (a18 != null) {
                                buVar.m6236a(new C8188bu.C8189a(3, m6225a(a18)));
                            }
                            List<C8188bu.C8189a> list = buVar.f31934c;
                            if (!(list == null || list.size() == 0)) {
                                m6228a(m6220b(element2, "CompanionClickTracking"), buVar);
                                for (Node node : m6220b(m6224a(element2, "TrackingEvents"), "Tracking")) {
                                    String attribute5 = ((Element) node).getAttribute("event");
                                    if (f31942d.containsKey(attribute5)) {
                                        String a19 = m6225a(node);
                                        if (!URLUtil.isValidUrl(a19)) {
                                            StringBuilder sb2 = new StringBuilder("Malformed URL: ");
                                            sb2.append(a19);
                                            sb2.append("; Discarding this tracker");
                                        } else {
                                            buVar.m6237a(new NativeTracker(a19, 0, f31942d.get(attribute5), null));
                                        }
                                    }
                                }
                                if (attribute3 != null && hashMap.containsKey(attribute3)) {
                                    buVar.m6237a((NativeTracker) hashMap.get(attribute3));
                                }
                                this.f31946f.f31969e.add(buVar);
                            }
                        }
                    }
                    int size = this.f31946f.f31969e.size();
                    if (size == 0 && z) {
                        m6223b(604);
                    } else if (b6.size() > 0 && size == 0) {
                        m6223b(LogSeverity.CRITICAL_VALUE);
                    }
                }
            }
            return this.f31946f;
        } catch (IOException | ParserConfigurationException | DOMException | SAXException e) {
            m6233a(100);
            C8328a.m5878a().m5875a(new C8365a(e));
            return this.f31946f;
        }
    }
}
