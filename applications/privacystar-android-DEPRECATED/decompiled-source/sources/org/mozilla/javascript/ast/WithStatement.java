package org.mozilla.javascript.ast;

import org.apache.commons.p018io.IOUtils;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/ast/WithStatement.class */
public class WithStatement extends AstNode {
    private AstNode expression;

    /* renamed from: lp */
    private int f823lp = -1;

    /* renamed from: rp */
    private int f824rp = -1;
    private AstNode statement;

    public WithStatement() {
        this.type = 123;
    }

    public WithStatement(int i) {
        super(i);
        this.type = 123;
    }

    public WithStatement(int i, int i2) {
        super(i, i2);
        this.type = 123;
    }

    public AstNode getExpression() {
        return this.expression;
    }

    public int getLp() {
        return this.f823lp;
    }

    public int getRp() {
        return this.f824rp;
    }

    public AstNode getStatement() {
        return this.statement;
    }

    public void setExpression(AstNode astNode) {
        assertNotNull(astNode);
        this.expression = astNode;
        astNode.setParent(this);
    }

    public void setLp(int i) {
        this.f823lp = i;
    }

    public void setParens(int i, int i2) {
        this.f823lp = i;
        this.f824rp = i2;
    }

    public void setRp(int i) {
        this.f824rp = i;
    }

    public void setStatement(AstNode astNode) {
        assertNotNull(astNode);
        this.statement = astNode;
        astNode.setParent(this);
    }

    @Override // org.mozilla.javascript.ast.AstNode
    public String toSource(int i) {
        StringBuilder sb = new StringBuilder();
        sb.append(makeIndent(i));
        sb.append("with (");
        sb.append(this.expression.toSource(0));
        sb.append(") ");
        if (this.statement.getType() == 129) {
            sb.append(this.statement.toSource(i).trim());
            sb.append(IOUtils.LINE_SEPARATOR_UNIX);
        } else {
            sb.append(IOUtils.LINE_SEPARATOR_UNIX);
            sb.append(this.statement.toSource(i + 1));
        }
        return sb.toString();
    }

    @Override // org.mozilla.javascript.ast.AstNode
    public void visit(NodeVisitor nodeVisitor) {
        if (nodeVisitor.visit(this)) {
            this.expression.visit(nodeVisitor);
            this.statement.visit(nodeVisitor);
        }
    }
}
