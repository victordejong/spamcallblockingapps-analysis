package org.simpleframework.xml.strategy;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/strategy/ObjectValue.class */
class ObjectValue implements Value {
    private Class type;
    private Object value;

    public ObjectValue(Class cls) {
        this.type = cls;
    }

    @Override // org.simpleframework.xml.strategy.Value
    public int getLength() {
        return 0;
    }

    @Override // org.simpleframework.xml.strategy.Value
    public Class getType() {
        return this.type;
    }

    @Override // org.simpleframework.xml.strategy.Value
    public Object getValue() {
        return this.value;
    }

    @Override // org.simpleframework.xml.strategy.Value
    public boolean isReference() {
        return false;
    }

    @Override // org.simpleframework.xml.strategy.Value
    public void setValue(Object obj) {
        this.value = obj;
    }
}
