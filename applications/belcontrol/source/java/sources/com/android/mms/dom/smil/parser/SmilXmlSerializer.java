package com.android.mms.dom.smil.parser;

import com.google.android.exoplayer2.C0515C;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import org.w3c.dom.Attr;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.smil.SMILDocument;
import org.w3c.dom.smil.SMILElement;
/* loaded from: classes-dex2jar.jar:com/android/mms/dom/smil/parser/SmilXmlSerializer.class */
public class SmilXmlSerializer {
    public static void serialize(SMILDocument sMILDocument, OutputStream outputStream) {
        try {
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, C0515C.UTF8_NAME), 2048);
            writeElement(bufferedWriter, sMILDocument.getDocumentElement());
            bufferedWriter.flush();
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }

    private static void writeElement(Writer writer, Element element) {
        SMILElement sMILElement;
        writer.write(60);
        writer.write(element.getTagName());
        if (element.hasAttributes()) {
            NamedNodeMap attributes = element.getAttributes();
            for (int i = 0; i < attributes.getLength(); i++) {
                Attr attr = (Attr) attributes.item(i);
                writer.write(" " + attr.getName());
                writer.write("=\"" + attr.getValue() + "\"");
            }
        }
        SMILElement sMILElement2 = (SMILElement) element.getFirstChild();
        if (sMILElement2 == null) {
            writer.write("/>");
            return;
        }
        writer.write(62);
        do {
            writeElement(writer, sMILElement2);
            sMILElement = (SMILElement) sMILElement2.getNextSibling();
            sMILElement2 = sMILElement;
        } while (sMILElement != null);
        writer.write("</");
        writer.write(element.getTagName());
        writer.write(62);
    }
}
