package org.mozilla.javascript.ast;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/ast/XmlDotQuery.class */
public class XmlDotQuery extends InfixExpression {

    /* renamed from: rp */
    private int f825rp = -1;

    public XmlDotQuery() {
        this.type = 146;
    }

    public XmlDotQuery(int i) {
        super(i);
        this.type = 146;
    }

    public XmlDotQuery(int i, int i2) {
        super(i, i2);
        this.type = 146;
    }

    public int getRp() {
        return this.f825rp;
    }

    public void setRp(int i) {
        this.f825rp = i;
    }

    @Override // org.mozilla.javascript.ast.InfixExpression, org.mozilla.javascript.ast.AstNode
    public String toSource(int i) {
        return makeIndent(i) + getLeft().toSource(0) + ".(" + getRight().toSource(0) + ")";
    }
}
