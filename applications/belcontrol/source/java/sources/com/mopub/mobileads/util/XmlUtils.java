package com.mopub.mobileads.util;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.w3c.dom.Document;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/util/XmlUtils.class */
public class XmlUtils {

    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/util/XmlUtils$NodeProcessor.class */
    public interface NodeProcessor<T> {
        T process(Node node);
    }

    /* renamed from: com.mopub.mobileads.util.XmlUtils$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/util/XmlUtils$a.class */
    public static final class C1144a implements NodeProcessor<String> {
        @Override // com.mopub.mobileads.util.XmlUtils.NodeProcessor
        public String process(Node node) {
            return XmlUtils.getNodeValue(node);
        }
    }

    /* renamed from: com.mopub.mobileads.util.XmlUtils$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/util/XmlUtils$b.class */
    public static final class C1145b implements NodeProcessor<String> {
        @Override // com.mopub.mobileads.util.XmlUtils.NodeProcessor
        public String process(Node node) {
            return XmlUtils.getNodeValue(node);
        }
    }

    /* renamed from: com.mopub.mobileads.util.XmlUtils$c */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/util/XmlUtils$c.class */
    public static final class C1146c implements NodeProcessor<Node> {
        @Override // com.mopub.mobileads.util.XmlUtils.NodeProcessor
        public Node process(Node node) {
            return node;
        }
    }

    private XmlUtils() {
    }

    public static String getAttributeValue(Node node, String str) {
        Node namedItem;
        if (node == null || str == null || (namedItem = node.getAttributes().getNamedItem(str)) == null) {
            return null;
        }
        return namedItem.getNodeValue();
    }

    public static Integer getAttributeValueAsInt(Node node, String str) {
        if (node == null || str == null) {
            return null;
        }
        try {
            return Integer.valueOf(Integer.parseInt(getAttributeValue(node, str)));
        } catch (NumberFormatException e) {
            return null;
        }
    }

    public static <T> T getFirstMatchFromDocument(Document document, String str, String str2, String str3, NodeProcessor<T> nodeProcessor) {
        NodeList elementsByTagName;
        T process;
        if (document == null || (elementsByTagName = document.getElementsByTagName(str)) == null) {
            return null;
        }
        List asList = str3 == null ? null : Arrays.asList(str3);
        for (int i = 0; i < elementsByTagName.getLength(); i++) {
            Node item = elementsByTagName.item(i);
            if (item != null && nodeMatchesAttributeFilter(item, str2, asList) && (process = nodeProcessor.process(item)) != null) {
                return process;
            }
        }
        return null;
    }

    public static Node getFirstMatchingChildNode(Node node, String str) {
        return getFirstMatchingChildNode(node, str, null, null);
    }

    public static Node getFirstMatchingChildNode(Node node, String str, String str2, List<String> list) {
        List<Node> matchingChildNodes;
        if (node == null || str == null || (matchingChildNodes = getMatchingChildNodes(node, str, str2, list)) == null || matchingChildNodes.isEmpty()) {
            return null;
        }
        return matchingChildNodes.get(0);
    }

    public static String getFirstMatchingStringData(Document document, String str) {
        return getFirstMatchingStringData(document, str, null, null);
    }

    public static String getFirstMatchingStringData(Document document, String str, String str2, String str3) {
        return (String) getFirstMatchFromDocument(document, str, str2, str3, new C1144a());
    }

    public static <T> List<T> getListFromDocument(Document document, String str, String str2, String str3, NodeProcessor<T> nodeProcessor) {
        NodeList elementsByTagName;
        T process;
        ArrayList arrayList = new ArrayList();
        if (document != null && (elementsByTagName = document.getElementsByTagName(str)) != null) {
            List asList = str3 == null ? null : Arrays.asList(str3);
            for (int i = 0; i < elementsByTagName.getLength(); i++) {
                Node item = elementsByTagName.item(i);
                if (item != null && nodeMatchesAttributeFilter(item, str2, asList) && (process = nodeProcessor.process(item)) != null) {
                    arrayList.add(process);
                }
            }
            return arrayList;
        }
        return arrayList;
    }

    public static List<Node> getMatchingChildNodes(Node node, String str) {
        return getMatchingChildNodes(node, str, null, null);
    }

    public static List<Node> getMatchingChildNodes(Node node, String str, String str2, List<String> list) {
        if (node == null || str == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        NodeList childNodes = node.getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            Node item = childNodes.item(i);
            if (item.getNodeName().equals(str) && nodeMatchesAttributeFilter(item, str2, list)) {
                arrayList.add(item);
            }
        }
        return arrayList;
    }

    public static String getNodeValue(Node node) {
        if (node == null || node.getFirstChild() == null || node.getFirstChild().getNodeValue() == null) {
            return null;
        }
        return node.getFirstChild().getNodeValue().trim();
    }

    public static List<Node> getNodesWithElementAndAttribute(Document document, String str, String str2, String str3) {
        return getListFromDocument(document, str, str2, str3, new C1146c());
    }

    public static List<String> getStringDataAsList(Document document, String str) {
        return getStringDataAsList(document, str, null, null);
    }

    public static List<String> getStringDataAsList(Document document, String str, String str2, String str3) {
        return getListFromDocument(document, str, str2, str3, new C1145b());
    }

    public static boolean nodeMatchesAttributeFilter(Node node, String str, List<String> list) {
        Node namedItem;
        if (str == null || list == null) {
            return true;
        }
        NamedNodeMap attributes = node.getAttributes();
        return (attributes == null || (namedItem = attributes.getNamedItem(str)) == null || !list.contains(namedItem.getNodeValue())) ? false : true;
    }
}
