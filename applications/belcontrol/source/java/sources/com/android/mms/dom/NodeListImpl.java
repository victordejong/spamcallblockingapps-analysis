package com.android.mms.dom;

import java.util.ArrayList;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
/* loaded from: classes-dex2jar.jar:com/android/mms/dom/NodeListImpl.class */
public class NodeListImpl implements NodeList {
    private boolean mDeepSearch;
    private Node mRootNode;
    private ArrayList<Node> mSearchNodes;
    private ArrayList<Node> mStaticNodes;
    private String mTagName;

    public NodeListImpl(ArrayList<Node> arrayList) {
        this.mStaticNodes = arrayList;
    }

    public NodeListImpl(Node node, String str, boolean z) {
        this.mRootNode = node;
        this.mTagName = str;
        this.mDeepSearch = z;
    }

    private void fillList(Node node) {
        if (node == this.mRootNode) {
            this.mSearchNodes = new ArrayList<>();
        } else if (this.mTagName == null || node.getNodeName().equals(this.mTagName)) {
            this.mSearchNodes.add(node);
        }
        Node firstChild = node.getFirstChild();
        while (true) {
            Node node2 = firstChild;
            if (node2 != null) {
                if (this.mDeepSearch) {
                    fillList(node2);
                } else if (this.mTagName == null || node2.getNodeName().equals(this.mTagName)) {
                    this.mSearchNodes.add(node2);
                }
                firstChild = node2.getNextSibling();
            } else {
                return;
            }
        }
    }

    @Override // org.w3c.dom.NodeList
    public int getLength() {
        ArrayList<Node> arrayList = this.mStaticNodes;
        if (arrayList == null) {
            fillList(this.mRootNode);
            return this.mSearchNodes.size();
        }
        return arrayList.size();
    }

    @Override // org.w3c.dom.NodeList
    public Node item(int i) {
        Node node;
        ArrayList<Node> arrayList = this.mStaticNodes;
        ArrayList<Node> arrayList2 = arrayList;
        if (arrayList == null) {
            fillList(this.mRootNode);
            try {
                arrayList2 = this.mSearchNodes;
            } catch (IndexOutOfBoundsException e) {
                node = null;
            }
        }
        node = arrayList2.get(i);
        return node;
    }
}
