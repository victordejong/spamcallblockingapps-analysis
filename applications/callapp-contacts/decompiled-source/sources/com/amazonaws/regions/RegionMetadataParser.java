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
    private static Region a(Element element, boolean z) {
        Region region = new Region(a("Name", element), a("Domain", element));
        NodeList elementsByTagName = element.getElementsByTagName("Endpoint");
        for (int i = 0; i < elementsByTagName.getLength(); i++) {
            Element element2 = (Element) elementsByTagName.item(i);
            String a2 = a("ServiceName", element2);
            String a3 = a("Hostname", element2);
            String a4 = a("Http", element2);
            String a5 = a("Https", element2);
            region.f6759c.put(a2, a3);
            region.f6760d.put(a2, Boolean.valueOf("true".equals(a4)));
            region.e.put(a2, Boolean.valueOf("true".equals(a5)));
        }
        return region;
    }

    private static String a(String str, Element element) {
        Node item = element.getElementsByTagName(str).item(0);
        if (item == null) {
            return null;
        }
        return item.getChildNodes().item(0).getNodeValue();
    }

    @Deprecated
    public static List<Region> a(InputStream inputStream) throws IOException {
        return b(inputStream);
    }

    private static List<Region> b(InputStream inputStream) throws IOException {
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
                            arrayList.add(a((Element) item, false));
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
