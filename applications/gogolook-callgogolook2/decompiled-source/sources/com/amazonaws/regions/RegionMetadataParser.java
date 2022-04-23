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
    public static void addRegionEndpoint(Region region, Element element, boolean z) {
        String childElementValue = getChildElementValue("ServiceName", element);
        String childElementValue2 = getChildElementValue("Hostname", element);
        String childElementValue3 = getChildElementValue("Http", element);
        String childElementValue4 = getChildElementValue("Https", element);
        if (!z || verifyLegacyEndpoint(childElementValue2)) {
            region.getServiceEndpoints().put(childElementValue, childElementValue2);
            region.getHttpSupport().put(childElementValue, Boolean.valueOf("true".equals(childElementValue3)));
            region.getHttpsSupport().put(childElementValue, Boolean.valueOf("true".equals(childElementValue4)));
            return;
        }
        throw new IllegalStateException("Invalid service endpoint (" + childElementValue2 + ") is detected.");
    }

    public static String getChildElementValue(String str, Element element) {
        Node item = element.getElementsByTagName(str).item(0);
        if (item == null) {
            return null;
        }
        return item.getChildNodes().item(0).getNodeValue();
    }

    public static List<Region> internalParse(InputStream inputStream, boolean z) throws IOException {
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
                        arrayList.add(parseRegionElement((Element) item, z));
                    }
                }
                return arrayList;
            } catch (IOException e2) {
                throw e2;
            } catch (Exception e3) {
                throw new IOException("Unable to parse region metadata file: " + e3.getMessage(), e3);
            }
        } catch (Throwable th) {
            try {
                inputStream.close();
            } catch (IOException e4) {
            }
            throw th;
        }
    }

    public static Region parseRegionElement(Element element, boolean z) {
        Region region = new Region(getChildElementValue("Name", element), getChildElementValue("Domain", element));
        NodeList elementsByTagName = element.getElementsByTagName("Endpoint");
        for (int i = 0; i < elementsByTagName.getLength(); i++) {
            addRegionEndpoint(region, (Element) elementsByTagName.item(i), z);
        }
        return region;
    }

    public static boolean verifyLegacyEndpoint(String str) {
        return str.endsWith(".amazonaws.com");
    }

    @Deprecated
    public List<Region> parseRegionMetadata(InputStream inputStream) throws IOException {
        return internalParse(inputStream, false);
    }
}
