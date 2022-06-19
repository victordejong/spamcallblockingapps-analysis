package com.pubmatic.sdk.video.xmlserialiser;

import com.pubmatic.sdk.common.log.PMLog;
import java.util.ArrayList;
import java.util.List;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathFactory;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder.class */
public class POBNodeBuilder {

    /* renamed from: a */
    private Node f1091a;

    public POBNodeBuilder(Node node) {
        this.f1091a = node;
    }

    /* renamed from: a */
    private NodeList m586a(String str) {
        try {
            return (NodeList) XPathFactory.newInstance().newXPath().compile(str).evaluate(this.f1091a, XPathConstants.NODESET);
        } catch (Exception e) {
            PMLog.error("POBNodeBuilder", e.getMessage(), new Object[0]);
            return null;
        }
    }

    public String getAttributeValue(String str) {
        Node node = getNode("@" + str);
        if (node != null) {
            return node.getTextContent().trim();
        }
        return null;
    }

    public Node getNode(String str) {
        try {
            return (Node) XPathFactory.newInstance().newXPath().compile(str).evaluate(this.f1091a, XPathConstants.NODE);
        } catch (Exception e) {
            PMLog.error("POBNodeBuilder", e.getMessage(), new Object[0]);
            return null;
        }
    }

    public String getNodeName() {
        Node node = this.f1091a;
        if (node != null) {
            return node.getNodeName();
        }
        return null;
    }

    public <T extends POBXMLNodeListener> T getNodeObject(String str, Class<T> cls) {
        Node node = getNode(str);
        if (node != null) {
            try {
                T newInstance = cls.newInstance();
                newInstance.build(new POBNodeBuilder(node));
                return newInstance;
            } catch (Exception e) {
                PMLog.error("POBNodeBuilder", e.getMessage(), new Object[0]);
                return null;
            }
        }
        return null;
    }

    public String getNodeValue() {
        Node node = this.f1091a;
        if (node == null || node.getTextContent().isEmpty()) {
            return null;
        }
        return this.f1091a.getTextContent().trim();
    }

    public String getNodeValue(String str) {
        Node node = getNode(str);
        if (node != null) {
            return node.getTextContent().trim();
        }
        return null;
    }

    public <T extends POBXMLNodeListener> List<T> getObjectList(String str, Class<T> cls) {
        NodeList m586a = m586a(str);
        if (m586a != null) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < m586a.getLength(); i++) {
                Node item = m586a.item(i);
                if (item != null) {
                    try {
                        T newInstance = cls.newInstance();
                        newInstance.build(new POBNodeBuilder(item));
                        arrayList.add(newInstance);
                    } catch (Exception e) {
                        PMLog.error("POBNodeBuilder", e.getMessage(), new Object[0]);
                        return null;
                    }
                }
            }
            return arrayList;
        }
        return null;
    }

    public List<String> getStringList(String str) {
        NodeList m586a = m586a(str);
        if (m586a != null) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < m586a.getLength(); i++) {
                Node item = m586a.item(i);
                if (item != null) {
                    arrayList.add(item.getTextContent().trim());
                }
            }
            return arrayList;
        }
        return null;
    }
}
