package org.mozilla.javascript.ast;

import org.mozilla.javascript.Token;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/ast/InfixExpression.class */
public class InfixExpression extends AstNode {
    protected AstNode left;
    protected int operatorPosition = -1;
    protected AstNode right;

    public InfixExpression() {
    }

    public InfixExpression(int i) {
        super(i);
    }

    public InfixExpression(int i, int i2) {
        super(i, i2);
    }

    public InfixExpression(int i, int i2, AstNode astNode, AstNode astNode2) {
        super(i, i2);
        setLeft(astNode);
        setRight(astNode2);
    }

    public InfixExpression(int i, AstNode astNode, AstNode astNode2, int i2) {
        setType(i);
        setOperatorPosition(i2 - astNode.getPosition());
        setLeftAndRight(astNode, astNode2);
    }

    public InfixExpression(AstNode astNode, AstNode astNode2) {
        setLeftAndRight(astNode, astNode2);
    }

    public AstNode getLeft() {
        return this.left;
    }

    public int getOperator() {
        return getType();
    }

    public int getOperatorPosition() {
        return this.operatorPosition;
    }

    public AstNode getRight() {
        return this.right;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0052, code lost:
        if (r3.right.hasSideEffects() != false) goto L_0x0055;
     */
    @Override // org.mozilla.javascript.ast.AstNode, org.mozilla.javascript.Node
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean hasSideEffects() {
        /*
            r3 = this;
            r0 = r3
            int r0 = r0.getType()
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = 0
            r6 = r0
            r0 = r4
            r1 = 89
            if (r0 == r1) goto L_0x005b
            r0 = r4
            switch(r0) {
                case 104: goto L_0x002d;
                case 105: goto L_0x002d;
                default: goto L_0x0028;
            }
        L_0x0028:
            r0 = r3
            boolean r0 = super.hasSideEffects()
            return r0
        L_0x002d:
            r0 = r3
            org.mozilla.javascript.ast.AstNode r0 = r0.left
            if (r0 == 0) goto L_0x003e
            r0 = r3
            org.mozilla.javascript.ast.AstNode r0 = r0.left
            boolean r0 = r0.hasSideEffects()
            if (r0 != 0) goto L_0x0055
        L_0x003e:
            r0 = r6
            r7 = r0
            r0 = r3
            org.mozilla.javascript.ast.AstNode r0 = r0.right
            if (r0 == 0) goto L_0x0058
            r0 = r6
            r7 = r0
            r0 = r3
            org.mozilla.javascript.ast.AstNode r0 = r0.right
            boolean r0 = r0.hasSideEffects()
            if (r0 == 0) goto L_0x0058
        L_0x0055:
            r0 = 1
            r7 = r0
        L_0x0058:
            r0 = r7
            return r0
        L_0x005b:
            r0 = r5
            r7 = r0
            r0 = r3
            org.mozilla.javascript.ast.AstNode r0 = r0.right
            if (r0 == 0) goto L_0x0075
            r0 = r5
            r7 = r0
            r0 = r3
            org.mozilla.javascript.ast.AstNode r0 = r0.right
            boolean r0 = r0.hasSideEffects()
            if (r0 == 0) goto L_0x0075
            r0 = 1
            r7 = r0
        L_0x0075:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.ast.InfixExpression.hasSideEffects():boolean");
    }

    public void setLeft(AstNode astNode) {
        assertNotNull(astNode);
        this.left = astNode;
        setLineno(astNode.getLineno());
        astNode.setParent(this);
    }

    public void setLeftAndRight(AstNode astNode, AstNode astNode2) {
        assertNotNull(astNode);
        assertNotNull(astNode2);
        setBounds(astNode.getPosition(), astNode2.getPosition() + astNode2.getLength());
        setLeft(astNode);
        setRight(astNode2);
    }

    public void setOperator(int i) {
        if (!Token.isValidToken(i)) {
            throw new IllegalArgumentException("Invalid token: " + i);
        }
        setType(i);
    }

    public void setOperatorPosition(int i) {
        this.operatorPosition = i;
    }

    public void setRight(AstNode astNode) {
        assertNotNull(astNode);
        this.right = astNode;
        astNode.setParent(this);
    }

    @Override // org.mozilla.javascript.ast.AstNode
    public String toSource(int i) {
        return makeIndent(i) + this.left.toSource() + " " + operatorToString(getType()) + " " + this.right.toSource();
    }

    @Override // org.mozilla.javascript.ast.AstNode
    public void visit(NodeVisitor nodeVisitor) {
        if (nodeVisitor.visit(this)) {
            this.left.visit(nodeVisitor);
            this.right.visit(nodeVisitor);
        }
    }
}
