package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/impl/MergingSettableBeanProperty.class */
public class MergingSettableBeanProperty extends SettableBeanProperty.Delegating {
    protected final AnnotatedMember _accessor;

    protected MergingSettableBeanProperty(SettableBeanProperty settableBeanProperty, AnnotatedMember annotatedMember) {
        super(settableBeanProperty);
        this._accessor = annotatedMember;
    }

    protected MergingSettableBeanProperty(MergingSettableBeanProperty mergingSettableBeanProperty, SettableBeanProperty settableBeanProperty) {
        super(settableBeanProperty);
        this._accessor = mergingSettableBeanProperty._accessor;
    }

    public static MergingSettableBeanProperty construct(SettableBeanProperty settableBeanProperty, AnnotatedMember annotatedMember) {
        return new MergingSettableBeanProperty(settableBeanProperty, annotatedMember);
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty.Delegating, com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public void deserializeAndSet(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        Object value = this._accessor.getValue(obj);
        Object deserialize = value == null ? this.delegate.deserialize(jsonParser, deserializationContext) : this.delegate.deserializeWith(jsonParser, deserializationContext, value);
        if (deserialize != value) {
            this.delegate.set(obj, deserialize);
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty.Delegating, com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public Object deserializeSetAndReturn(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        Object value = this._accessor.getValue(obj);
        Object deserialize = value == null ? this.delegate.deserialize(jsonParser, deserializationContext) : this.delegate.deserializeWith(jsonParser, deserializationContext, value);
        return (deserialize == value || deserialize == null) ? obj : this.delegate.setAndReturn(obj, deserialize);
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty.Delegating, com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public void set(Object obj, Object obj2) throws IOException {
        if (obj2 != null) {
            this.delegate.set(obj, obj2);
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty.Delegating, com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public Object setAndReturn(Object obj, Object obj2) throws IOException {
        Object obj3 = obj;
        if (obj2 != null) {
            obj3 = this.delegate.setAndReturn(obj, obj2);
        }
        return obj3;
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty.Delegating
    public SettableBeanProperty withDelegate(SettableBeanProperty settableBeanProperty) {
        return new MergingSettableBeanProperty(settableBeanProperty, this._accessor);
    }
}
