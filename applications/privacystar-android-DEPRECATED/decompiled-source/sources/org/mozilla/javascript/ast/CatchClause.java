package org.mozilla.javascript.ast;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/ast/CatchClause.class */
public class CatchClause extends AstNode {
    private Block body;
    private AstNode catchCondition;
    private int ifPosition = -1;

    /* renamed from: lp */
    private int f805lp = -1;

    /* renamed from: rp */
    private int f806rp = -1;
    private Name varName;

    public CatchClause() {
        this.type = 124;
    }

    public CatchClause(int i) {
        super(i);
        this.type = 124;
    }

    public CatchClause(int i, int i2) {
        super(i, i2);
        this.type = 124;
    }

    public Block getBody() {
        return this.body;
    }

    public AstNode getCatchCondition() {
        return this.catchCondition;
    }

    public int getIfPosition() {
        return this.ifPosition;
    }

    public int getLp() {
        return this.f805lp;
    }

    public int getRp() {
        return this.f806rp;
    }

    public Name getVarName() {
        return this.varName;
    }

    public void setBody(Block block) {
        assertNotNull(block);
        this.body = block;
        block.setParent(this);
    }

    public void setCatchCondition(AstNode astNode) {
        this.catchCondition = astNode;
        if (astNode != null) {
            astNode.setParent(this);
        }
    }

    public void setIfPosition(int i) {
        this.ifPosition = i;
    }

    public void setLp(int i) {
        this.f805lp = i;
    }

    public void setParens(int i, int i2) {
        this.f805lp = i;
        this.f806rp = i2;
    }

    public void setRp(int i) {
        this.f806rp = i;
    }

    public void setVarName(Name name) {
        assertNotNull(name);
        this.varName = name;
        name.setParent(this);
    }

    @Override // org.mozilla.javascript.ast.AstNode
    public String toSource(int i) {
        StringBuilder sb = new StringBuilder();
        sb.append(makeIndent(i));
        sb.append("catch (");
        sb.append(this.varName.toSource(0));
        if (this.catchCondition != null) {
            sb.append(" if ");
            sb.append(this.catchCondition.toSource(0));
        }
        sb.append(") ");
        sb.append(this.body.toSource(0));
        return sb.toString();
    }

    @Override // org.mozilla.javascript.ast.AstNode
    public void visit(NodeVisitor nodeVisitor) {
        if (nodeVisitor.visit(this)) {
            this.varName.visit(nodeVisitor);
            if (this.catchCondition != null) {
                this.catchCondition.visit(nodeVisitor);
            }
            this.body.visit(nodeVisitor);
        }
    }
}
