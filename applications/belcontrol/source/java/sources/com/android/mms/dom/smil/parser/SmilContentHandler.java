package com.android.mms.dom.smil.parser;

import com.android.mms.dom.smil.SmilDocumentImpl;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.smil.SMILDocument;
import org.xml.sax.Attributes;
import org.xml.sax.helpers.DefaultHandler;
/* loaded from: classes-dex2jar.jar:com/android/mms/dom/smil/parser/SmilContentHandler.class */
public class SmilContentHandler extends DefaultHandler {
    private static final boolean DEBUG = false;
    private static final boolean LOCAL_LOGV = false;
    private static final String TAG = "SmilContentHandler";
    private Node mCurrentNode;
    private SMILDocument mSmilDocument;

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i, int i2) {
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void endElement(String str, String str2, String str3) {
        this.mCurrentNode = this.mCurrentNode.getParentNode();
    }

    public SMILDocument getSmilDocument() {
        return this.mSmilDocument;
    }

    public void reset() {
        SmilDocumentImpl smilDocumentImpl = new SmilDocumentImpl();
        this.mSmilDocument = smilDocumentImpl;
        this.mCurrentNode = smilDocumentImpl;
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startElement(String str, String str2, String str3, Attributes attributes) {
        Element createElement = this.mSmilDocument.createElement(str2);
        if (attributes != null) {
            for (int i = 0; i < attributes.getLength(); i++) {
                createElement.setAttribute(attributes.getLocalName(i), attributes.getValue(i));
            }
        }
        this.mCurrentNode.appendChild(createElement);
        this.mCurrentNode = createElement;
    }
}
