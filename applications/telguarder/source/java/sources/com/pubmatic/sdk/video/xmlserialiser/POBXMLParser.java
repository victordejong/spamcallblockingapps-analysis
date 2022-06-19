package com.pubmatic.sdk.video.xmlserialiser;

import com.pubmatic.sdk.common.log.PMLog;
import java.io.StringReader;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.xml.sax.InputSource;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/xmlserialiser/POBXMLParser.class */
public class POBXMLParser {
    private POBXMLParser() {
    }

    protected static Node createNode(String str) {
        Element documentElement = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(new InputSource(new StringReader(str))).getDocumentElement();
        documentElement.normalize();
        return documentElement;
    }

    public static <T extends POBXMLNodeListener> T parse(String str, Class<T> cls) {
        T t;
        try {
            Node createNode = createNode(str);
            t = cls.newInstance();
            t.build(new POBNodeBuilder(createNode));
        } catch (Exception e) {
            PMLog.error("POBXMLParser", e.getMessage(), new Object[0]);
            t = null;
        }
        return t;
    }
}
