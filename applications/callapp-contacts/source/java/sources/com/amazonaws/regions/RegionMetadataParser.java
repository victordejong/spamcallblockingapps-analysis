package com.amazonaws.regions;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/amazonaws/regions/RegionMetadataParser.class */
public class RegionMetadataParser {
    /* renamed from: a */
    private static Region m38501a(Element element, boolean z) {
        Region region = new Region(m38502a("Name", element), m38502a("Domain", element));
        NodeList elementsByTagName = element.getElementsByTagName("Endpoint");
        for (int i = 0; i < elementsByTagName.getLength(); i++) {
            Element element2 = (Element) elementsByTagName.item(i);
            String m38502a = m38502a("ServiceName", element2);
            String m38502a2 = m38502a("Hostname", element2);
            String m38502a3 = m38502a("Http", element2);
            String m38502a4 = m38502a("Https", element2);
            region.f12270c.put(m38502a, m38502a2);
            region.f12271d.put(m38502a, Boolean.valueOf("true".equals(m38502a3)));
            region.f12272e.put(m38502a, Boolean.valueOf("true".equals(m38502a4)));
        }
        return region;
    }

    /* renamed from: a */
    private static String m38502a(String str, Element element) {
        Node item = element.getElementsByTagName(str).item(0);
        if (item == null) {
            return null;
        }
        return item.getChildNodes().item(0).getNodeValue();
    }

    @Deprecated
    /* renamed from: a */
    public static List<Region> m38503a(InputStream inputStream) throws IOException {
        return m38500b(inputStream);
    }

    /* renamed from: b */
    private static List<Region> m38500b(InputStream inputStream) throws IOException {
        try {
            try {
                try {
                    Document parse = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(inputStream);
                    try {
                        inputStream.close();
                    } catch (IOException e) {
                    }
                    NodeList elementsByTagName = parse.getElementsByTagName("Region");
                    ArrayList arrayList = new ArrayList();
                    for (int i = 0; i < elementsByTagName.getLength(); i++) {
                        Node item = elementsByTagName.item(i);
                        if (item.getNodeType() == 1) {
                            arrayList.add(m38501a((Element) item, false));
                        }
                    }
                    return arrayList;
                } catch (Exception e2) {
                    throw new IOException("Unable to parse region metadata file: " + e2.getMessage(), e2);
                }
            } catch (IOException e3) {
                throw e3;
            }
        } catch (Throwable th) {
            try {
                inputStream.close();
            } catch (IOException e4) {
            }
            throw th;
        }
    }
}
