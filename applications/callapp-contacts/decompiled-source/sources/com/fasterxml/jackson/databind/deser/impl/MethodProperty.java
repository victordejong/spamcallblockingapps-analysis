package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.deser.NullValueProvider;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.util.Annotations;
import java.io.IOException;
import java.lang.reflect.Method;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/impl/MethodProperty.class */
public final class MethodProperty extends SettableBeanProperty {
    protected final AnnotatedMethod _annotated;
    protected final transient Method _setter;
    protected final boolean _skipNulls;

    protected MethodProperty(MethodProperty methodProperty, JsonDeserializer<?> jsonDeserializer, NullValueProvider nullValueProvider) {
        super(methodProperty, jsonDeserializer, nullValueProvider);
        this._annotated = methodProperty._annotated;
        this._setter = methodProperty._setter;
        this._skipNulls = NullsConstantProvider.isSkipper(nullValueProvider);
    }

    protected MethodProperty(MethodProperty methodProperty, PropertyName propertyName) {
        super(methodProperty, propertyName);
        this._annotated = methodProperty._annotated;
        this._setter = methodProperty._setter;
        this._skipNulls = methodProperty._skipNulls;
    }

    protected MethodProperty(MethodProperty methodProperty, Method method) {
        super(methodProperty);
        this._annotated = methodProperty._annotated;
        this._setter = method;
        this._skipNulls = methodProperty._skipNulls;
    }

    public MethodProperty(BeanPropertyDefinition beanPropertyDefinition, JavaType javaType, TypeDeserializer typeDeserializer, Annotations annotations, AnnotatedMethod annotatedMethod) {
        super(beanPropertyDefinition, javaType, typeDeserializer, annotations);
        this._annotated = annotatedMethod;
        this._setter = annotatedMethod.getAnnotated();
        this._skipNulls = NullsConstantProvider.isSkipper(this._nullProvider);
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public final void deserializeAndSet(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        Object obj2;
        if (jsonParser.hasToken(JsonToken.VALUE_NULL)) {
            if (!this._skipNulls) {
                obj2 = this._nullProvider.getNullValue(deserializationContext);
            } else {
                return;
            }
        } else if (this._valueTypeDeserializer == null) {
            Object deserialize = this._valueDeserializer.deserialize(jsonParser, deserializationContext);
            if (deserialize != null) {
                obj2 = deserialize;
            } else if (!this._skipNulls) {
                obj2 = this._nullProvider.getNullValue(deserializationContext);
            } else {
                return;
            }
        } else {
            obj2 = this._valueDeserializer.deserializeWithType(jsonParser, deserializationContext, this._valueTypeDeserializer);
        }
        try {
            this._setter.invoke(obj, obj2);
        } catch (Exception e) {
            _throwAsIOE(jsonParser, e, obj2);
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public final Object deserializeSetAndReturn(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        Object obj2;
        if (jsonParser.hasToken(JsonToken.VALUE_NULL)) {
            if (this._skipNulls) {
                return obj;
            }
            obj2 = this._nullProvider.getNullValue(deserializationContext);
        } else if (this._valueTypeDeserializer == null) {
            Object deserialize = this._valueDeserializer.deserialize(jsonParser, deserializationContext);
            if (deserialize != null) {
                obj2 = deserialize;
            } else if (this._skipNulls) {
                return obj;
            } else {
                obj2 = this._nullProvider.getNullValue(deserializationContext);
            }
        } else {
            obj2 = this._valueDeserializer.deserializeWithType(jsonParser, deserializationContext, this._valueTypeDeserializer);
        }
        try {
            Object invoke = this._setter.invoke(obj, obj2);
            return invoke == null ? obj : invoke;
        } catch (Exception e) {
            _throwAsIOE(jsonParser, e, obj2);
            return null;
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public final void fixAccess(DeserializationConfig deserializationConfig) {
        this._annotated.fixAccess(deserializationConfig.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty, com.fasterxml.jackson.databind.BeanProperty
    public final AnnotatedMember getMember() {
        return this._annotated;
    }

    final Object readResolve() {
        return new MethodProperty(this, this._annotated.getAnnotated());
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public final void set(Object obj, Object obj2) throws IOException {
        try {
            this._setter.invoke(obj, obj2);
        } catch (Exception e) {
            _throwAsIOE(e, obj2);
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public final Object setAndReturn(Object obj, Object obj2) throws IOException {
        try {
            Object invoke = this._setter.invoke(obj, obj2);
            return invoke == null ? obj : invoke;
        } catch (Exception e) {
            _throwAsIOE(e, obj2);
            return null;
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public final SettableBeanProperty withName(PropertyName propertyName) {
        return new MethodProperty(this, propertyName);
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public final SettableBeanProperty withNullProvider(NullValueProvider nullValueProvider) {
        return new MethodProperty(this, this._valueDeserializer, nullValueProvider);
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public final SettableBeanProperty withValueDeserializer(JsonDeserializer<?> jsonDeserializer) {
        if (this._valueDeserializer == jsonDeserializer) {
            return this;
        }
        return new MethodProperty(this, jsonDeserializer, this._valueDeserializer == this._nullProvider ? jsonDeserializer : this._nullProvider);
    }
}
