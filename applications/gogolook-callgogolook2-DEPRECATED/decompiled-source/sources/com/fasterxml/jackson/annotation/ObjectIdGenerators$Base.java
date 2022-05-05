package com.fasterxml.jackson.annotation;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/annotation/ObjectIdGenerators$Base.class */
public abstract class ObjectIdGenerators$Base<T> extends ObjectIdGenerator<T> {
    public final Class<?> _scope;

    public ObjectIdGenerators$Base(Class<?> cls) {
        this._scope = cls;
    }

    @Override // com.fasterxml.jackson.annotation.ObjectIdGenerator
    public boolean canUseFor(ObjectIdGenerator<?> objectIdGenerator) {
        return objectIdGenerator.getClass() == getClass() && objectIdGenerator.getScope() == this._scope;
    }

    @Override // com.fasterxml.jackson.annotation.ObjectIdGenerator
    public final Class<?> getScope() {
        return this._scope;
    }
}
