package org.mozilla.javascript.ast;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/ast/Loop.class */
public abstract class Loop extends Scope {
    protected AstNode body;

    /* renamed from: lp */
    protected int f819lp = -1;

    /* renamed from: rp */
    protected int f820rp = -1;

    public Loop() {
    }

    public Loop(int i) {
        super(i);
    }

    public Loop(int i, int i2) {
        super(i, i2);
    }

    public AstNode getBody() {
        return this.body;
    }

    public int getLp() {
        return this.f819lp;
    }

    public int getRp() {
        return this.f820rp;
    }

    public void setBody(AstNode astNode) {
        this.body = astNode;
        setLength((astNode.getPosition() + astNode.getLength()) - getPosition());
        astNode.setParent(this);
    }

    public void setLp(int i) {
        this.f819lp = i;
    }

    public void setParens(int i, int i2) {
        this.f819lp = i;
        this.f820rp = i2;
    }

    public void setRp(int i) {
        this.f820rp = i;
    }
}
