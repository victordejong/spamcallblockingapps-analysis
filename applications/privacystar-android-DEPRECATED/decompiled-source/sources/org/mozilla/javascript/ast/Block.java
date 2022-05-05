package org.mozilla.javascript.ast;

import java.util.Iterator;
import org.mozilla.javascript.Node;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/ast/Block.class */
public class Block extends AstNode {
    public Block() {
        this.type = 129;
    }

    public Block(int i) {
        super(i);
        this.type = 129;
    }

    public Block(int i, int i2) {
        super(i, i2);
        this.type = 129;
    }

    public void addStatement(AstNode astNode) {
        addChild(astNode);
    }

    @Override // org.mozilla.javascript.ast.AstNode
    public String toSource(int i) {
        StringBuilder sb = new StringBuilder();
        sb.append(makeIndent(i));
        sb.append("{\n");
        Iterator<Node> it = iterator();
        while (it.hasNext()) {
            sb.append(((AstNode) it.next()).toSource(i + 1));
        }
        sb.append(makeIndent(i));
        sb.append("}\n");
        return sb.toString();
    }

    @Override // org.mozilla.javascript.ast.AstNode
    public void visit(NodeVisitor nodeVisitor) {
        if (nodeVisitor.visit(this)) {
            Iterator<Node> it = iterator();
            while (it.hasNext()) {
                ((AstNode) it.next()).visit(nodeVisitor);
            }
        }
    }
}
