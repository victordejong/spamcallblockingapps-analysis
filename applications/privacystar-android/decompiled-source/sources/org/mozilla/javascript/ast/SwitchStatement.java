package org.mozilla.javascript.ast;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/ast/SwitchStatement.class */
public class SwitchStatement extends Jump {
    private static final List<SwitchCase> NO_CASES = Collections.unmodifiableList(new ArrayList());
    private List<SwitchCase> cases;
    private AstNode expression;

    /* renamed from: lp */
    private int f821lp = -1;

    /* renamed from: rp */
    private int f822rp = -1;

    public SwitchStatement() {
        this.type = 114;
    }

    public SwitchStatement(int i) {
        this.type = 114;
        this.position = i;
    }

    public SwitchStatement(int i, int i2) {
        this.type = 114;
        this.position = i;
        this.length = i2;
    }

    public void addCase(SwitchCase switchCase) {
        assertNotNull(switchCase);
        if (this.cases == null) {
            this.cases = new ArrayList();
        }
        this.cases.add(switchCase);
        switchCase.setParent(this);
    }

    public List<SwitchCase> getCases() {
        return this.cases != null ? this.cases : NO_CASES;
    }

    public AstNode getExpression() {
        return this.expression;
    }

    public int getLp() {
        return this.f821lp;
    }

    public int getRp() {
        return this.f822rp;
    }

    public void setCases(List<SwitchCase> list) {
        if (list == null) {
            this.cases = null;
            return;
        }
        if (this.cases != null) {
            this.cases.clear();
        }
        for (SwitchCase switchCase : list) {
            addCase(switchCase);
        }
    }

    public void setExpression(AstNode astNode) {
        assertNotNull(astNode);
        this.expression = astNode;
        astNode.setParent(this);
    }

    public void setLp(int i) {
        this.f821lp = i;
    }

    public void setParens(int i, int i2) {
        this.f821lp = i;
        this.f822rp = i2;
    }

    public void setRp(int i) {
        this.f822rp = i;
    }

    @Override // org.mozilla.javascript.ast.Jump, org.mozilla.javascript.ast.AstNode
    public String toSource(int i) {
        String makeIndent = makeIndent(i);
        StringBuilder sb = new StringBuilder();
        sb.append(makeIndent);
        sb.append("switch (");
        sb.append(this.expression.toSource(0));
        sb.append(") {\n");
        if (this.cases != null) {
            for (SwitchCase switchCase : this.cases) {
                sb.append(switchCase.toSource(i + 1));
            }
        }
        sb.append(makeIndent);
        sb.append("}\n");
        return sb.toString();
    }

    @Override // org.mozilla.javascript.ast.Jump, org.mozilla.javascript.ast.AstNode
    public void visit(NodeVisitor nodeVisitor) {
        if (nodeVisitor.visit(this)) {
            this.expression.visit(nodeVisitor);
            for (SwitchCase switchCase : getCases()) {
                switchCase.visit(nodeVisitor);
            }
        }
    }
}
