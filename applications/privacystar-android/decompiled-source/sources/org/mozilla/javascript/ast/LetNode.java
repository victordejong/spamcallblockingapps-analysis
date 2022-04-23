package org.mozilla.javascript.ast;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/ast/LetNode.class */
public class LetNode extends Scope {
    private AstNode body;

    /* renamed from: lp */
    private int f817lp = -1;

    /* renamed from: rp */
    private int f818rp = -1;
    private VariableDeclaration variables;

    public LetNode() {
        this.type = 158;
    }

    public LetNode(int i) {
        super(i);
        this.type = 158;
    }

    public LetNode(int i, int i2) {
        super(i, i2);
        this.type = 158;
    }

    public AstNode getBody() {
        return this.body;
    }

    public int getLp() {
        return this.f817lp;
    }

    public int getRp() {
        return this.f818rp;
    }

    public VariableDeclaration getVariables() {
        return this.variables;
    }

    public void setBody(AstNode astNode) {
        this.body = astNode;
        if (astNode != null) {
            astNode.setParent(this);
        }
    }

    public void setLp(int i) {
        this.f817lp = i;
    }

    public void setParens(int i, int i2) {
        this.f817lp = i;
        this.f818rp = i2;
    }

    public void setRp(int i) {
        this.f818rp = i;
    }

    public void setVariables(VariableDeclaration variableDeclaration) {
        assertNotNull(variableDeclaration);
        this.variables = variableDeclaration;
        variableDeclaration.setParent(this);
    }

    @Override // org.mozilla.javascript.ast.Scope, org.mozilla.javascript.ast.Jump, org.mozilla.javascript.ast.AstNode
    public String toSource(int i) {
        String makeIndent = makeIndent(i);
        StringBuilder sb = new StringBuilder();
        sb.append(makeIndent);
        sb.append("let (");
        printList(this.variables.getVariables(), sb);
        sb.append(") ");
        if (this.body != null) {
            sb.append(this.body.toSource(i));
        }
        return sb.toString();
    }

    @Override // org.mozilla.javascript.ast.Scope, org.mozilla.javascript.ast.Jump, org.mozilla.javascript.ast.AstNode
    public void visit(NodeVisitor nodeVisitor) {
        if (nodeVisitor.visit(this)) {
            this.variables.visit(nodeVisitor);
            if (this.body != null) {
                this.body.visit(nodeVisitor);
            }
        }
    }
}
