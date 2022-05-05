package org.simpleframework.xml.core;

import org.simpleframework.xml.strategy.Value;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/core/ConversionInstance.class */
class ConversionInstance implements Instance {
    private final Context context;
    private final Class convert;
    private final Value value;

    public ConversionInstance(Context context, Value value, Class cls) throws Exception {
        this.context = context;
        this.convert = cls;
        this.value = value;
    }

    @Override // org.simpleframework.xml.core.Instance
    public Object getInstance() throws Exception {
        if (this.value.isReference()) {
            return this.value.getValue();
        }
        Object instance = getInstance(this.convert);
        if (instance != null) {
            setInstance(instance);
        }
        return instance;
    }

    public Object getInstance(Class cls) throws Exception {
        return this.context.getInstance(cls).getInstance();
    }

    @Override // org.simpleframework.xml.core.Instance
    public Class getType() {
        return this.convert;
    }

    @Override // org.simpleframework.xml.core.Instance
    public boolean isReference() {
        return this.value.isReference();
    }

    @Override // org.simpleframework.xml.core.Instance
    public Object setInstance(Object obj) throws Exception {
        Value value = this.value;
        if (value != null) {
            value.setValue(obj);
        }
        return obj;
    }
}
