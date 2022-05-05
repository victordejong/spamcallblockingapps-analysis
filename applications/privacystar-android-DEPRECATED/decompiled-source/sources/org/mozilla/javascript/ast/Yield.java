package org.mozilla.javascript.ast;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/ast/Yield.class */
public class Yield extends AstNode {
    private AstNode value;

    public Yield() {
        this.type = 72;
    }

    public Yield(int i) {
        super(i);
        this.type = 72;
    }

    public Yield(int i, int i2) {
        super(i, i2);
        this.type = 72;
    }

    public Yield(int i, int i2, AstNode astNode) {
        super(i, i2);
        this.type = 72;
        setValue(astNode);
    }

    public AstNode getValue() {
        return this.value;
    }

    public void setValue(AstNode astNode) {
        this.value = astNode;
        if (astNode != null) {
            astNode.setParent(this);
        }
    }

    @Override // org.mozilla.javascript.ast.AstNode
    public String toSource(int i) {
        String str;
        if (this.value == null) {
            str = "yield";
        } else {
            str = "yield " + this.value.toSource(0);
        }
        return str;
    }

    @Override // org.mozilla.javascript.ast.AstNode
    public void visit(NodeVisitor nodeVisitor) {
        if (nodeVisitor.visit(this) && this.value != null) {
            this.value.visit(nodeVisitor);
        }
    }
}
