package org.mozilla.javascript.ast;

import org.apache.commons.p018io.IOUtils;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/ast/ObjectProperty.class */
public class ObjectProperty extends InfixExpression {
    public ObjectProperty() {
        this.type = 103;
    }

    public ObjectProperty(int i) {
        super(i);
        this.type = 103;
    }

    public ObjectProperty(int i, int i2) {
        super(i, i2);
        this.type = 103;
    }

    public boolean isGetter() {
        return this.type == 151;
    }

    public boolean isSetter() {
        return this.type == 152;
    }

    public void setIsGetter() {
        this.type = 151;
    }

    public void setIsSetter() {
        this.type = 152;
    }

    public void setNodeType(int i) {
        if (i == 103 || i == 151 || i == 152) {
            setType(i);
            return;
        }
        throw new IllegalArgumentException("invalid node type: " + i);
    }

    @Override // org.mozilla.javascript.ast.InfixExpression, org.mozilla.javascript.ast.AstNode
    public String toSource(int i) {
        StringBuilder sb = new StringBuilder();
        sb.append(IOUtils.LINE_SEPARATOR_UNIX);
        int i2 = i + 1;
        sb.append(makeIndent(i2));
        if (isGetter()) {
            sb.append("get ");
        } else if (isSetter()) {
            sb.append("set ");
        }
        AstNode astNode = this.left;
        if (getType() == 103) {
            i = 0;
        }
        sb.append(astNode.toSource(i));
        if (this.type == 103) {
            sb.append(": ");
        }
        AstNode astNode2 = this.right;
        int i3 = i2;
        if (getType() == 103) {
            i3 = 0;
        }
        sb.append(astNode2.toSource(i3));
        return sb.toString();
    }
}
