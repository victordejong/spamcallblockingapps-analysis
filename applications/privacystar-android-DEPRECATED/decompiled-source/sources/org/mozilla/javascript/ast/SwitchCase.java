package org.mozilla.javascript.ast;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/ast/SwitchCase.class */
public class SwitchCase extends AstNode {
    private AstNode expression;
    private List<AstNode> statements;

    public SwitchCase() {
        this.type = 115;
    }

    public SwitchCase(int i) {
        super(i);
        this.type = 115;
    }

    public SwitchCase(int i, int i2) {
        super(i, i2);
        this.type = 115;
    }

    public void addStatement(AstNode astNode) {
        assertNotNull(astNode);
        if (this.statements == null) {
            this.statements = new ArrayList();
        }
        setLength((astNode.getPosition() + astNode.getLength()) - getPosition());
        this.statements.add(astNode);
        astNode.setParent(this);
    }

    public AstNode getExpression() {
        return this.expression;
    }

    public List<AstNode> getStatements() {
        return this.statements;
    }

    public boolean isDefault() {
        return this.expression == null;
    }

    public void setExpression(AstNode astNode) {
        this.expression = astNode;
        if (astNode != null) {
            astNode.setParent(this);
        }
    }

    public void setStatements(List<AstNode> list) {
        if (this.statements != null) {
            this.statements.clear();
        }
        for (AstNode astNode : list) {
            addStatement(astNode);
        }
    }

    @Override // org.mozilla.javascript.ast.AstNode
    public String toSource(int i) {
        StringBuilder sb = new StringBuilder();
        sb.append(makeIndent(i));
        if (this.expression == null) {
            sb.append("default:\n");
        } else {
            sb.append("case ");
            sb.append(this.expression.toSource(0));
            sb.append(":\n");
        }
        if (this.statements != null) {
            for (AstNode astNode : this.statements) {
                sb.append(astNode.toSource(i + 1));
            }
        }
        return sb.toString();
    }

    @Override // org.mozilla.javascript.ast.AstNode
    public void visit(NodeVisitor nodeVisitor) {
        if (nodeVisitor.visit(this)) {
            if (this.expression != null) {
                this.expression.visit(nodeVisitor);
            }
            if (this.statements != null) {
                for (AstNode astNode : this.statements) {
                    astNode.visit(nodeVisitor);
                }
            }
        }
    }
}
