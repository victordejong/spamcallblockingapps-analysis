package org.mozilla.javascript.ast;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/ast/XmlElemRef.class */
public class XmlElemRef extends XmlRef {
    private AstNode indexExpr;

    /* renamed from: lb */
    private int f826lb = -1;

    /* renamed from: rb */
    private int f827rb = -1;

    public XmlElemRef() {
        this.type = 77;
    }

    public XmlElemRef(int i) {
        super(i);
        this.type = 77;
    }

    public XmlElemRef(int i, int i2) {
        super(i, i2);
        this.type = 77;
    }

    public AstNode getExpression() {
        return this.indexExpr;
    }

    public int getLb() {
        return this.f826lb;
    }

    public int getRb() {
        return this.f827rb;
    }

    public void setBrackets(int i, int i2) {
        this.f826lb = i;
        this.f827rb = i2;
    }

    public void setExpression(AstNode astNode) {
        assertNotNull(astNode);
        this.indexExpr = astNode;
        astNode.setParent(this);
    }

    public void setLb(int i) {
        this.f826lb = i;
    }

    public void setRb(int i) {
        this.f827rb = i;
    }

    @Override // org.mozilla.javascript.ast.AstNode
    public String toSource(int i) {
        StringBuilder sb = new StringBuilder();
        sb.append(makeIndent(i));
        if (isAttributeAccess()) {
            sb.append("@");
        }
        if (this.namespace != null) {
            sb.append(this.namespace.toSource(0));
            sb.append("::");
        }
        sb.append("[");
        sb.append(this.indexExpr.toSource(0));
        sb.append("]");
        return sb.toString();
    }

    @Override // org.mozilla.javascript.ast.AstNode
    public void visit(NodeVisitor nodeVisitor) {
        if (nodeVisitor.visit(this)) {
            if (this.namespace != null) {
                this.namespace.visit(nodeVisitor);
            }
            this.indexExpr.visit(nodeVisitor);
        }
    }
}
