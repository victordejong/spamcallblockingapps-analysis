package org.w3c.dom.smil;

import org.w3c.dom.NodeList;
/* loaded from: classes3-dex2jar.jar:org/w3c/dom/smil/ElementExclusiveTimeContainer.class */
public interface ElementExclusiveTimeContainer extends ElementTimeContainer {
    String getEndSync();

    NodeList getPausedElements();

    void setEndSync(String str);
}
