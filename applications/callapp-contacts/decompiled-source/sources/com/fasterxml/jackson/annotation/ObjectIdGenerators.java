package com.fasterxml.jackson.annotation;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/annotation/ObjectIdGenerators.class */
public class ObjectIdGenerators {

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/annotation/ObjectIdGenerators$Base.class */
    public static abstract class Base<T> extends ObjectIdGenerator<T> {
        protected final Class<?> _scope;

        protected Base(Class<?> cls) {
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

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/annotation/ObjectIdGenerators$None.class */
    public static abstract class None extends ObjectIdGenerator<Object> {
    }

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/annotation/ObjectIdGenerators$PropertyGenerator.class */
    public static abstract class PropertyGenerator extends Base<Object> {
        public PropertyGenerator(Class<?> cls) {
            super(cls);
        }

        @Override // com.fasterxml.jackson.annotation.ObjectIdGenerators.Base, com.fasterxml.jackson.annotation.ObjectIdGenerator
        public /* bridge */ /* synthetic */ boolean canUseFor(ObjectIdGenerator objectIdGenerator) {
            return super.canUseFor(objectIdGenerator);
        }
    }
}
