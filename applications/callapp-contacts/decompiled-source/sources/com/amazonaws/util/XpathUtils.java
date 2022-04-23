package com.amazonaws.util;

import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpressionException;
import javax.xml.xpath.XPathFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.xml.sax.SAXException;
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/XpathUtils.class */
public class XpathUtils {

    /* renamed from: a  reason: collision with root package name */
    private static Log f6934a = LogFactory.a(XpathUtils.class);

    /* renamed from: b  reason: collision with root package name */
    private static DocumentBuilderFactory f6935b = DocumentBuilderFactory.newInstance();

    public static String a(String str, Node node) throws XPathExpressionException {
        if (node == null) {
            return null;
        }
        if (!".".equals(str)) {
            if ((node == null ? null : (Node) XPathFactory.newInstance().newXPath().evaluate(str, node, XPathConstants.NODE)) == null) {
                return null;
            }
        }
        return XPathFactory.newInstance().newXPath().evaluate(str, node).trim();
    }

    public static Document a(String str) throws SAXException, IOException, ParserConfigurationException {
        NamespaceRemovingInputStream namespaceRemovingInputStream = new NamespaceRemovingInputStream(new ByteArrayInputStream(str.getBytes(StringUtils.f6920a)));
        Document parse = f6935b.newDocumentBuilder().parse(namespaceRemovingInputStream);
        namespaceRemovingInputStream.close();
        return parse;
    }
}
