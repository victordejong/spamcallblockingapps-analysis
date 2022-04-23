package com.amazonaws.util;

import androidx.media2.session.MediaSessionImplBase;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpressionException;
import javax.xml.xpath.XPathFactory;
import org.apache.commons.logging.LogFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.xml.sax.SAXException;
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/XpathUtils.class */
public class XpathUtils {
    public static DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();

    static {
        LogFactory.getLog(XpathUtils.class);
    }

    public static Node asNode(String str, Node node) throws XPathExpressionException {
        if (node == null) {
            return null;
        }
        return (Node) xpath().evaluate(str, node, XPathConstants.NODE);
    }

    public static String asString(String str, Node node) throws XPathExpressionException {
        return evaluateAsString(str, node);
    }

    public static Document documentFrom(InputStream inputStream) throws SAXException, IOException, ParserConfigurationException {
        NamespaceRemovingInputStream namespaceRemovingInputStream = new NamespaceRemovingInputStream(inputStream);
        Document parse = factory.newDocumentBuilder().parse(namespaceRemovingInputStream);
        namespaceRemovingInputStream.close();
        return parse;
    }

    public static Document documentFrom(String str) throws SAXException, IOException, ParserConfigurationException {
        return documentFrom(new ByteArrayInputStream(str.getBytes(StringUtils.UTF8)));
    }

    public static String evaluateAsString(String str, Node node) throws XPathExpressionException {
        if (isEmpty(node)) {
            return null;
        }
        if (str.equals(MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM) || asNode(str, node) != null) {
            return xpath().evaluate(str, node).trim();
        }
        return null;
    }

    public static boolean isEmpty(Node node) {
        return node == null;
    }

    public static XPath xpath() {
        return XPathFactory.newInstance().newXPath();
    }
}
