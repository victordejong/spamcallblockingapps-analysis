package org.mozilla.javascript.ast;

import org.apache.commons.p018io.IOUtils;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/ast/IfStatement.class */
public class IfStatement extends AstNode {
    private AstNode condition;
    private AstNode elsePart;
    private int elsePosition = -1;

    /* renamed from: lp */
    private int f815lp = -1;

    /* renamed from: rp */
    private int f816rp = -1;
    private AstNode thenPart;

    public IfStatement() {
        this.type = 112;
    }

    public IfStatement(int i) {
        super(i);
        this.type = 112;
    }

    public IfStatement(int i, int i2) {
        super(i, i2);
        this.type = 112;
    }

    public AstNode getCondition() {
        return this.condition;
    }

    public AstNode getElsePart() {
        return this.elsePart;
    }

    public int getElsePosition() {
        return this.elsePosition;
    }

    public int getLp() {
        return this.f815lp;
    }

    public int getRp() {
        return this.f816rp;
    }

    public AstNode getThenPart() {
        return this.thenPart;
    }

    public void setCondition(AstNode astNode) {
        assertNotNull(astNode);
        this.condition = astNode;
        astNode.setParent(this);
    }

    public void setElsePart(AstNode astNode) {
        this.elsePart = astNode;
        if (astNode != null) {
            astNode.setParent(this);
        }
    }

    public void setElsePosition(int i) {
        this.elsePosition = i;
    }

    public void setLp(int i) {
        this.f815lp = i;
    }

    public void setParens(int i, int i2) {
        this.f815lp = i;
        this.f816rp = i2;
    }

    public void setRp(int i) {
        this.f816rp = i;
    }

    public void setThenPart(AstNode astNode) {
        assertNotNull(astNode);
        this.thenPart = astNode;
        astNode.setParent(this);
    }

    @Override // org.mozilla.javascript.ast.AstNode
    public String toSource(int i) {
        String makeIndent = makeIndent(i);
        StringBuilder sb = new StringBuilder(32);
        sb.append(makeIndent);
        sb.append("if (");
        sb.append(this.condition.toSource(0));
        sb.append(") ");
        if (this.thenPart.getType() != 129) {
            sb.append(IOUtils.LINE_SEPARATOR_UNIX);
            sb.append(makeIndent(i + 1));
        }
        sb.append(this.thenPart.toSource(i).trim());
        if (this.elsePart != null) {
            if (this.thenPart.getType() != 129) {
                sb.append(IOUtils.LINE_SEPARATOR_UNIX);
                sb.append(makeIndent);
                sb.append("else ");
            } else {
                sb.append(" else ");
            }
            if (!(this.elsePart.getType() == 129 || this.elsePart.getType() == 112)) {
                sb.append(IOUtils.LINE_SEPARATOR_UNIX);
                sb.append(makeIndent(i + 1));
            }
            sb.append(this.elsePart.toSource(i).trim());
        }
        sb.append(IOUtils.LINE_SEPARATOR_UNIX);
        return sb.toString();
    }

    @Override // org.mozilla.javascript.ast.AstNode
    public void visit(NodeVisitor nodeVisitor) {
        if (nodeVisitor.visit(this)) {
            this.condition.visit(nodeVisitor);
            this.thenPart.visit(nodeVisitor);
            if (this.elsePart != null) {
                this.elsePart.visit(nodeVisitor);
            }
        }
    }
}
