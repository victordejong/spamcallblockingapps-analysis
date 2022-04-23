package org.mozilla.javascript.ast;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/ast/FunctionCall.class */
public class FunctionCall extends AstNode {
    protected static final List<AstNode> NO_ARGS = Collections.unmodifiableList(new ArrayList());
    protected List<AstNode> arguments;

    /* renamed from: lp */
    protected int f809lp = -1;

    /* renamed from: rp */
    protected int f810rp = -1;
    protected AstNode target;

    public FunctionCall() {
        this.type = 38;
    }

    public FunctionCall(int i) {
        super(i);
        this.type = 38;
    }

    public FunctionCall(int i, int i2) {
        super(i, i2);
        this.type = 38;
    }

    public void addArgument(AstNode astNode) {
        assertNotNull(astNode);
        if (this.arguments == null) {
            this.arguments = new ArrayList();
        }
        this.arguments.add(astNode);
        astNode.setParent(this);
    }

    public List<AstNode> getArguments() {
        return this.arguments != null ? this.arguments : NO_ARGS;
    }

    public int getLp() {
        return this.f809lp;
    }

    public int getRp() {
        return this.f810rp;
    }

    public AstNode getTarget() {
        return this.target;
    }

    public void setArguments(List<AstNode> list) {
        if (list == null) {
            this.arguments = null;
            return;
        }
        if (this.arguments != null) {
            this.arguments.clear();
        }
        for (AstNode astNode : list) {
            addArgument(astNode);
        }
    }

    public void setLp(int i) {
        this.f809lp = i;
    }

    public void setParens(int i, int i2) {
        this.f809lp = i;
        this.f810rp = i2;
    }

    public void setRp(int i) {
        this.f810rp = i;
    }

    public void setTarget(AstNode astNode) {
        assertNotNull(astNode);
        this.target = astNode;
        astNode.setParent(this);
    }

    @Override // org.mozilla.javascript.ast.AstNode
    public String toSource(int i) {
        StringBuilder sb = new StringBuilder();
        sb.append(makeIndent(i));
        sb.append(this.target.toSource(0));
        sb.append("(");
        if (this.arguments != null) {
            printList(this.arguments, sb);
        }
        sb.append(")");
        return sb.toString();
    }

    @Override // org.mozilla.javascript.ast.AstNode
    public void visit(NodeVisitor nodeVisitor) {
        if (nodeVisitor.visit(this)) {
            this.target.visit(nodeVisitor);
            for (AstNode astNode : getArguments()) {
                astNode.visit(nodeVisitor);
            }
        }
    }
}
