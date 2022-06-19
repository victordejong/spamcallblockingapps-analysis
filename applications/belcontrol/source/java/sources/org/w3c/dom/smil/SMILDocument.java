package org.w3c.dom.smil;

import org.w3c.dom.Document;
/* loaded from: classes3-dex2jar.jar:org/w3c/dom/smil/SMILDocument.class */
public interface SMILDocument extends Document, ElementSequentialTimeContainer {
    SMILElement getBody();

    SMILElement getHead();

    SMILLayoutElement getLayout();
}
