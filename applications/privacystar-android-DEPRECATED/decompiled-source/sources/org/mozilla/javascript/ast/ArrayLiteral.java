package org.mozilla.javascript.ast;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/ast/ArrayLiteral.class */
public class ArrayLiteral extends AstNode implements DestructuringForm {
    private static final List<AstNode> NO_ELEMS = Collections.unmodifiableList(new ArrayList());
    private int destructuringLength;
    private List<AstNode> elements;
    private boolean isDestructuring;
    private int skipCount;

    public ArrayLiteral() {
        this.type = 65;
    }

    public ArrayLiteral(int i) {
        super(i);
        this.type = 65;
    }

    public ArrayLiteral(int i, int i2) {
        super(i, i2);
        this.type = 65;
    }

    public void addElement(AstNode astNode) {
        assertNotNull(astNode);
        if (this.elements == null) {
            this.elements = new ArrayList();
        }
        this.elements.add(astNode);
        astNode.setParent(this);
    }

    public int getDestructuringLength() {
        return this.destructuringLength;
    }

    public AstNode getElement(int i) {
        if (this.elements != null) {
            return this.elements.get(i);
        }
        throw new IndexOutOfBoundsException("no elements");
    }

    public List<AstNode> getElements() {
        return this.elements != null ? this.elements : NO_ELEMS;
    }

    public int getSize() {
        return this.elements == null ? 0 : this.elements.size();
    }

    public int getSkipCount() {
        return this.skipCount;
    }

    @Override // org.mozilla.javascript.ast.DestructuringForm
    public boolean isDestructuring() {
        return this.isDestructuring;
    }

    public void setDestructuringLength(int i) {
        this.destructuringLength = i;
    }

    public void setElements(List<AstNode> list) {
        if (list == null) {
            this.elements = null;
            return;
        }
        if (this.elements != null) {
            this.elements.clear();
        }
        for (AstNode astNode : list) {
            addElement(astNode);
        }
    }

    @Override // org.mozilla.javascript.ast.DestructuringForm
    public void setIsDestructuring(boolean z) {
        this.isDestructuring = z;
    }

    public void setSkipCount(int i) {
        this.skipCount = i;
    }

    @Override // org.mozilla.javascript.ast.AstNode
    public String toSource(int i) {
        StringBuilder sb = new StringBuilder();
        sb.append(makeIndent(i));
        sb.append("[");
        if (this.elements != null) {
            printList(this.elements, sb);
        }
        sb.append("]");
        return sb.toString();
    }

    @Override // org.mozilla.javascript.ast.AstNode
    public void visit(NodeVisitor nodeVisitor) {
        if (nodeVisitor.visit(this)) {
            for (AstNode astNode : getElements()) {
                astNode.visit(nodeVisitor);
            }
        }
    }
}
