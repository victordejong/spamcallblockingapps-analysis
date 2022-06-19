package com.android.mms.dom.smil.parser;

import com.google.android.mms.MmsException;
import java.io.InputStream;
import org.w3c.dom.smil.SMILDocument;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.XMLReaderFactory;
/* loaded from: classes-dex2jar.jar:com/android/mms/dom/smil/parser/SmilXmlParser.class */
public class SmilXmlParser {
    private SmilContentHandler mContentHandler;
    private XMLReader mXmlReader;

    public SmilXmlParser() {
        System.setProperty("org.xml.sax.driver", "org.xmlpull.v1.sax2.Driver");
        try {
            this.mXmlReader = XMLReaderFactory.createXMLReader();
            SmilContentHandler smilContentHandler = new SmilContentHandler();
            this.mContentHandler = smilContentHandler;
            this.mXmlReader.setContentHandler(smilContentHandler);
        } catch (SAXException e) {
            throw new MmsException(e);
        }
    }

    private void validateDocument(SMILDocument sMILDocument) {
        sMILDocument.getBody();
        sMILDocument.getLayout();
    }

    public SMILDocument parse(InputStream inputStream) {
        this.mContentHandler.reset();
        this.mXmlReader.parse(new InputSource(inputStream));
        SMILDocument smilDocument = this.mContentHandler.getSmilDocument();
        validateDocument(smilDocument);
        return smilDocument;
    }
}
