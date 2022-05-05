package org.simpleframework.xml.convert;

import org.simpleframework.xml.strategy.Value;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/convert/Reference.class */
class Reference implements Value {
    private Class actual;
    private Object data;
    private Value value;

    public Reference(Value value, Object obj, Class cls) {
        this.actual = cls;
        this.value = value;
        this.data = obj;
    }

    @Override // org.simpleframework.xml.strategy.Value
    public int getLength() {
        return 0;
    }

    @Override // org.simpleframework.xml.strategy.Value
    public Class getType() {
        Object obj = this.data;
        return obj != null ? obj.getClass() : this.actual;
    }

    @Override // org.simpleframework.xml.strategy.Value
    public Object getValue() {
        return this.data;
    }

    @Override // org.simpleframework.xml.strategy.Value
    public boolean isReference() {
        return true;
    }

    @Override // org.simpleframework.xml.strategy.Value
    public void setValue(Object obj) {
        Value value = this.value;
        if (value != null) {
            value.setValue(obj);
        }
        this.data = obj;
    }
}
