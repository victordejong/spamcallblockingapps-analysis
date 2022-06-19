package com.android.mms.dom;

import java.util.Vector;
import org.w3c.dom.DOMException;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
/* loaded from: classes-dex2jar.jar:com/android/mms/dom/NamedNodeMapImpl.class */
public class NamedNodeMapImpl implements NamedNodeMap {
    private Vector<Node> mNodes = new Vector<>();

    @Override // org.w3c.dom.NamedNodeMap
    public int getLength() {
        return this.mNodes.size();
    }

    @Override // org.w3c.dom.NamedNodeMap
    public Node getNamedItem(String str) {
        Node node;
        int i = 0;
        while (true) {
            if (i >= this.mNodes.size()) {
                node = null;
                break;
            } else if (str.equals(this.mNodes.elementAt(i).getNodeName())) {
                node = this.mNodes.elementAt(i);
                break;
            } else {
                i++;
            }
        }
        return node;
    }

    @Override // org.w3c.dom.NamedNodeMap
    public Node getNamedItemNS(String str, String str2) {
        return null;
    }

    @Override // org.w3c.dom.NamedNodeMap
    public Node item(int i) {
        if (i < this.mNodes.size()) {
            return this.mNodes.elementAt(i);
        }
        return null;
    }

    @Override // org.w3c.dom.NamedNodeMap
    public Node removeNamedItem(String str) {
        Node namedItem = getNamedItem(str);
        if (namedItem != null) {
            this.mNodes.remove(namedItem);
            return namedItem;
        }
        throw new DOMException((short) 8, "Not found");
    }

    @Override // org.w3c.dom.NamedNodeMap
    public Node removeNamedItemNS(String str, String str2) {
        return null;
    }

    @Override // org.w3c.dom.NamedNodeMap
    public Node setNamedItem(Node node) {
        Node namedItem = getNamedItem(node.getNodeName());
        if (namedItem != null) {
            this.mNodes.remove(namedItem);
        }
        this.mNodes.add(node);
        return namedItem;
    }

    @Override // org.w3c.dom.NamedNodeMap
    public Node setNamedItemNS(Node node) {
        return null;
    }
}
