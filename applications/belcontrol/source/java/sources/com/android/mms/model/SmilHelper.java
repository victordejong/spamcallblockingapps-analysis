package com.android.mms.model;

import com.android.mms.dom.smil.parser.SmilXmlParser;
import com.google.android.mms.MmsException;
import com.google.android.mms.pdu.PduPart;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import org.w3c.dom.smil.SMILDocument;
import org.w3c.dom.smil.SMILMediaElement;
import org.w3c.dom.smil.SMILParElement;
import org.xml.sax.SAXException;
/* loaded from: classes-dex2jar.jar:com/android/mms/model/SmilHelper.class */
public class SmilHelper {
    public static final String ELEMENT_TAG_AUDIO = "audio";
    public static final String ELEMENT_TAG_IMAGE = "img";
    public static final String ELEMENT_TAG_REF = "ref";
    public static final String ELEMENT_TAG_TEXT = "text";
    public static final String ELEMENT_TAG_VIDEO = "video";
    private static final String TAG = "Mms/smil";

    private SmilHelper() {
    }

    public static SMILParElement addPar(SMILDocument sMILDocument) {
        SMILParElement sMILParElement = (SMILParElement) sMILDocument.createElement("par");
        sMILParElement.setDur(8.0f);
        sMILDocument.getBody().appendChild(sMILParElement);
        return sMILParElement;
    }

    public static SMILMediaElement createMediaElement(String str, SMILDocument sMILDocument, String str2) {
        SMILMediaElement sMILMediaElement = (SMILMediaElement) sMILDocument.createElement(str);
        sMILMediaElement.setSrc(escapeXML(str2));
        return sMILMediaElement;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x00a1, code lost:
        if (r12 != false) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.w3c.dom.smil.SMILDocument createSmilDocument(com.google.android.mms.pdu.PduBody r5) {
        /*
            Method dump skipped, instructions count: 350
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.mms.model.SmilHelper.createSmilDocument(com.google.android.mms.pdu.PduBody):org.w3c.dom.smil.SMILDocument");
    }

    public static String escapeXML(String str) {
        return str.replaceAll("&", "&amp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\"", "&quot;").replaceAll("'", "&apos;");
    }

    private static SMILDocument getSmilDocument(PduPart pduPart) {
        try {
            byte[] data = pduPart.getData();
            if (data == null) {
                return null;
            }
            new String(data);
            return validate(new SmilXmlParser().parse(new ByteArrayInputStream(data)));
        } catch (MmsException | IOException | SAXException e) {
            j91.m1504l(TAG, "Failed to parse SMIL document.", e);
            return null;
        }
    }

    private static SMILDocument validate(SMILDocument sMILDocument) {
        return sMILDocument;
    }
}
