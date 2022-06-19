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

    /* renamed from: a */
    private static Log f12531a = LogFactory.m38584a(XpathUtils.class);

    /* renamed from: b */
    private static DocumentBuilderFactory f12532b = DocumentBuilderFactory.newInstance();

    /* renamed from: a */
    public static String m38208a(String str, Node node) throws XPathExpressionException {
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

    /* renamed from: a */
    public static Document m38209a(String str) throws SAXException, IOException, ParserConfigurationException {
        NamespaceRemovingInputStream namespaceRemovingInputStream = new NamespaceRemovingInputStream(new ByteArrayInputStream(str.getBytes(StringUtils.f12513a)));
        Document parse = f12532b.newDocumentBuilder().parse(namespaceRemovingInputStream);
        namespaceRemovingInputStream.close();
        return parse;
    }
}
