package org.mozilla.javascript.ast;

import org.apache.commons.p018io.IOUtils;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/ast/ForInLoop.class */
public class ForInLoop extends Loop {
    protected boolean isForEach;
    protected AstNode iteratedObject;
    protected AstNode iterator;
    protected int inPosition = -1;
    protected int eachPosition = -1;

    public ForInLoop() {
        this.type = 119;
    }

    public ForInLoop(int i) {
        super(i);
        this.type = 119;
    }

    public ForInLoop(int i, int i2) {
        super(i, i2);
        this.type = 119;
    }

    public int getEachPosition() {
        return this.eachPosition;
    }

    public int getInPosition() {
        return this.inPosition;
    }

    public AstNode getIteratedObject() {
        return this.iteratedObject;
    }

    public AstNode getIterator() {
        return this.iterator;
    }

    public boolean isForEach() {
        return this.isForEach;
    }

    public void setEachPosition(int i) {
        this.eachPosition = i;
    }

    public void setInPosition(int i) {
        this.inPosition = i;
    }

    public void setIsForEach(boolean z) {
        this.isForEach = z;
    }

    public void setIteratedObject(AstNode astNode) {
        assertNotNull(astNode);
        this.iteratedObject = astNode;
        astNode.setParent(this);
    }

    public void setIterator(AstNode astNode) {
        assertNotNull(astNode);
        this.iterator = astNode;
        astNode.setParent(this);
    }

    @Override // org.mozilla.javascript.ast.Scope, org.mozilla.javascript.ast.Jump, org.mozilla.javascript.ast.AstNode
    public String toSource(int i) {
        StringBuilder sb = new StringBuilder();
        sb.append(makeIndent(i));
        sb.append("for ");
        if (isForEach()) {
            sb.append("each ");
        }
        sb.append("(");
        sb.append(this.iterator.toSource(0));
        sb.append(" in ");
        sb.append(this.iteratedObject.toSource(0));
        sb.append(") ");
        if (this.body.getType() == 129) {
            sb.append(this.body.toSource(i).trim());
            sb.append(IOUtils.LINE_SEPARATOR_UNIX);
        } else {
            sb.append(IOUtils.LINE_SEPARATOR_UNIX);
            sb.append(this.body.toSource(i + 1));
        }
        return sb.toString();
    }

    @Override // org.mozilla.javascript.ast.Scope, org.mozilla.javascript.ast.Jump, org.mozilla.javascript.ast.AstNode
    public void visit(NodeVisitor nodeVisitor) {
        if (nodeVisitor.visit(this)) {
            this.iterator.visit(nodeVisitor);
            this.iteratedObject.visit(nodeVisitor);
            this.body.visit(nodeVisitor);
        }
    }
}
