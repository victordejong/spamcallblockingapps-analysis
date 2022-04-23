package org.mozilla.javascript.ast;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/ast/XmlRef.class */
public abstract class XmlRef extends AstNode {
    protected int atPos = -1;
    protected int colonPos = -1;
    protected Name namespace;

    public XmlRef() {
    }

    public XmlRef(int i) {
        super(i);
    }

    public XmlRef(int i, int i2) {
        super(i, i2);
    }

    public int getAtPos() {
        return this.atPos;
    }

    public int getColonPos() {
        return this.colonPos;
    }

    public Name getNamespace() {
        return this.namespace;
    }

    public boolean isAttributeAccess() {
        return this.atPos >= 0;
    }

    public void setAtPos(int i) {
        this.atPos = i;
    }

    public void setColonPos(int i) {
        this.colonPos = i;
    }

    public void setNamespace(Name name) {
        this.namespace = name;
        if (name != null) {
            name.setParent(this);
        }
    }
}
