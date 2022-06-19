package org.w3c.dom.smil;

import org.w3c.dom.NodeList;
/* loaded from: classes3-dex2jar.jar:org/w3c/dom/smil/SMILLayoutElement.class */
public interface SMILLayoutElement extends SMILElement {
    NodeList getRegions();

    boolean getResolved();

    SMILRootLayoutElement getRootLayout();

    String getType();
}
