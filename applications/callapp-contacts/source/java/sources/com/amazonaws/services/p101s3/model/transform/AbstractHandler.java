package com.amazonaws.services.p101s3.model.transform;

import java.util.Iterator;
import java.util.LinkedList;
import org.xml.sax.Attributes;
import org.xml.sax.helpers.DefaultHandler;
/* renamed from: com.amazonaws.services.s3.model.transform.AbstractHandler */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/AbstractHandler.class */
abstract class AbstractHandler extends DefaultHandler {
    private final StringBuilder text = new StringBuilder();
    private final LinkedList<String> context = new LinkedList<>();

    public final boolean atTopLevel() {
        return this.context.isEmpty();
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public final void characters(char[] cArr, int i, int i2) {
        this.text.append(cArr, i, i2);
    }

    protected abstract void doEndElement(String str, String str2, String str3);

    protected abstract void doStartElement(String str, String str2, String str3, Attributes attributes);

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public final void endElement(String str, String str2, String str3) {
        this.context.removeLast();
        doEndElement(str, str2, str3);
    }

    public final String getText() {
        return this.text.toString();
    }

    /* renamed from: in */
    public final boolean m38298in(String... strArr) {
        if (strArr.length != this.context.size()) {
            return false;
        }
        Iterator<String> it2 = this.context.iterator();
        int i = 0;
        while (it2.hasNext()) {
            String next = it2.next();
            String str = strArr[i];
            if (!str.equals("*") && !str.equals(next)) {
                return false;
            }
            i++;
        }
        return true;
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public final void startElement(String str, String str2, String str3, Attributes attributes) {
        this.text.setLength(0);
        doStartElement(str, str2, str3, attributes);
        this.context.add(str2);
    }
}
