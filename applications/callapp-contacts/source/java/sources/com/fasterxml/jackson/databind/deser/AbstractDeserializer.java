package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;
import com.fasterxml.jackson.annotation.ObjectIdResolver;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import com.fasterxml.jackson.databind.deser.impl.ObjectIdReader;
import com.fasterxml.jackson.databind.deser.impl.PropertyBasedObjectIdGenerator;
import com.fasterxml.jackson.databind.deser.impl.ReadableObjectId;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.ObjectIdInfo;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.type.LogicalType;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.io.IOException;
import java.io.Serializable;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/AbstractDeserializer.class */
public class AbstractDeserializer extends JsonDeserializer<Object> implements ContextualDeserializer, Serializable {
    private static final long serialVersionUID = 1;
    protected final boolean _acceptBoolean;
    protected final boolean _acceptDouble;
    protected final boolean _acceptInt;
    protected final boolean _acceptString;
    protected final Map<String, SettableBeanProperty> _backRefProperties;
    protected final JavaType _baseType;
    protected final ObjectIdReader _objectIdReader;
    protected transient Map<String, SettableBeanProperty> _properties;

    /* JADX WARN: Code restructure failed: missing block: B:17:0x007f, code lost:
        if (r0.isAssignableFrom(java.lang.Double.class) != false) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected AbstractDeserializer(com.fasterxml.jackson.databind.BeanDescription r5) {
        /*
            r4 = this;
            r0 = r4
            r0.<init>()
            r0 = r5
            com.fasterxml.jackson.databind.JavaType r0 = r0.getType()
            r5 = r0
            r0 = r4
            r1 = r5
            r0._baseType = r1
            r0 = r4
            r1 = 0
            r0._objectIdReader = r1
            r0 = r4
            r1 = 0
            r0._backRefProperties = r1
            r0 = r5
            java.lang.Class r0 = r0.getRawClass()
            r6 = r0
            r0 = r4
            r1 = r6
            java.lang.Class<java.lang.String> r2 = java.lang.String.class
            boolean r1 = r1.isAssignableFrom(r2)
            r0._acceptString = r1
            java.lang.Class r0 = java.lang.Boolean.TYPE
            r5 = r0
            r0 = 0
            r7 = r0
            r0 = r6
            r1 = r5
            if (r0 == r1) goto L44
            r0 = r6
            java.lang.Class<java.lang.Boolean> r1 = java.lang.Boolean.class
            boolean r0 = r0.isAssignableFrom(r1)
            if (r0 == 0) goto L3e
            goto L44
        L3e:
            r0 = 0
            r8 = r0
            goto L47
        L44:
            r0 = 1
            r8 = r0
        L47:
            r0 = r4
            r1 = r8
            r0._acceptBoolean = r1
            r0 = r6
            java.lang.Class r1 = java.lang.Integer.TYPE
            if (r0 == r1) goto L66
            r0 = r6
            java.lang.Class<java.lang.Integer> r1 = java.lang.Integer.class
            boolean r0 = r0.isAssignableFrom(r1)
            if (r0 == 0) goto L60
            goto L66
        L60:
            r0 = 0
            r8 = r0
            goto L69
        L66:
            r0 = 1
            r8 = r0
        L69:
            r0 = r4
            r1 = r8
            r0._acceptInt = r1
            r0 = r6
            java.lang.Class r1 = java.lang.Double.TYPE
            if (r0 == r1) goto L82
            r0 = r7
            r8 = r0
            r0 = r6
            java.lang.Class<java.lang.Double> r1 = java.lang.Double.class
            boolean r0 = r0.isAssignableFrom(r1)
            if (r0 == 0) goto L85
        L82:
            r0 = 1
            r8 = r0
        L85:
            r0 = r4
            r1 = r8
            r0._acceptDouble = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.deser.AbstractDeserializer.<init>(com.fasterxml.jackson.databind.BeanDescription):void");
    }

    protected AbstractDeserializer(AbstractDeserializer abstractDeserializer, ObjectIdReader objectIdReader, Map<String, SettableBeanProperty> map) {
        this._baseType = abstractDeserializer._baseType;
        this._backRefProperties = abstractDeserializer._backRefProperties;
        this._acceptString = abstractDeserializer._acceptString;
        this._acceptBoolean = abstractDeserializer._acceptBoolean;
        this._acceptInt = abstractDeserializer._acceptInt;
        this._acceptDouble = abstractDeserializer._acceptDouble;
        this._objectIdReader = objectIdReader;
        this._properties = map;
    }

    @Deprecated
    public AbstractDeserializer(BeanDeserializerBuilder beanDeserializerBuilder, BeanDescription beanDescription, Map<String, SettableBeanProperty> map) {
        this(beanDeserializerBuilder, beanDescription, map, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x008a, code lost:
        if (r0.isAssignableFrom(java.lang.Double.class) != false) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AbstractDeserializer(com.fasterxml.jackson.databind.deser.BeanDeserializerBuilder r5, com.fasterxml.jackson.databind.BeanDescription r6, java.util.Map<java.lang.String, com.fasterxml.jackson.databind.deser.SettableBeanProperty> r7, java.util.Map<java.lang.String, com.fasterxml.jackson.databind.deser.SettableBeanProperty> r8) {
        /*
            r4 = this;
            r0 = r4
            r0.<init>()
            r0 = r6
            com.fasterxml.jackson.databind.JavaType r0 = r0.getType()
            r6 = r0
            r0 = r4
            r1 = r6
            r0._baseType = r1
            r0 = r4
            r1 = r5
            com.fasterxml.jackson.databind.deser.impl.ObjectIdReader r1 = r1.getObjectIdReader()
            r0._objectIdReader = r1
            r0 = r4
            r1 = r7
            r0._backRefProperties = r1
            r0 = r4
            r1 = r8
            r0._properties = r1
            r0 = r6
            java.lang.Class r0 = r0.getRawClass()
            r5 = r0
            r0 = r4
            r1 = r5
            java.lang.Class<java.lang.String> r2 = java.lang.String.class
            boolean r1 = r1.isAssignableFrom(r2)
            r0._acceptString = r1
            java.lang.Class r0 = java.lang.Boolean.TYPE
            r6 = r0
            r0 = 0
            r9 = r0
            r0 = r5
            r1 = r6
            if (r0 == r1) goto L4e
            r0 = r5
            java.lang.Class<java.lang.Boolean> r1 = java.lang.Boolean.class
            boolean r0 = r0.isAssignableFrom(r1)
            if (r0 == 0) goto L48
            goto L4e
        L48:
            r0 = 0
            r10 = r0
            goto L51
        L4e:
            r0 = 1
            r10 = r0
        L51:
            r0 = r4
            r1 = r10
            r0._acceptBoolean = r1
            r0 = r5
            java.lang.Class r1 = java.lang.Integer.TYPE
            if (r0 == r1) goto L70
            r0 = r5
            java.lang.Class<java.lang.Integer> r1 = java.lang.Integer.class
            boolean r0 = r0.isAssignableFrom(r1)
            if (r0 == 0) goto L6a
            goto L70
        L6a:
            r0 = 0
            r10 = r0
            goto L73
        L70:
            r0 = 1
            r10 = r0
        L73:
            r0 = r4
            r1 = r10
            r0._acceptInt = r1
            r0 = r5
            java.lang.Class r1 = java.lang.Double.TYPE
            if (r0 == r1) goto L8d
            r0 = r9
            r10 = r0
            r0 = r5
            java.lang.Class<java.lang.Double> r1 = java.lang.Double.class
            boolean r0 = r0.isAssignableFrom(r1)
            if (r0 == 0) goto L90
        L8d:
            r0 = 1
            r10 = r0
        L90:
            r0 = r4
            r1 = r10
            r0._acceptDouble = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.deser.AbstractDeserializer.<init>(com.fasterxml.jackson.databind.deser.BeanDeserializerBuilder, com.fasterxml.jackson.databind.BeanDescription, java.util.Map, java.util.Map):void");
    }

    public static AbstractDeserializer constructForNonPOJO(BeanDescription beanDescription) {
        return new AbstractDeserializer(beanDescription);
    }

    protected Object _deserializeFromObjectId(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        Object readObjectReference = this._objectIdReader.readObjectReference(jsonParser, deserializationContext);
        ReadableObjectId findObjectId = deserializationContext.findObjectId(readObjectReference, this._objectIdReader.generator, this._objectIdReader.resolver);
        Object resolve = findObjectId.resolve();
        if (resolve != null) {
            return resolve;
        }
        throw new UnresolvedForwardReference(jsonParser, "Could not resolve Object Id [" + readObjectReference + "] -- unresolved forward-reference?", jsonParser.getCurrentLocation(), findObjectId);
    }

    protected Object _deserializeIfNatural(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        switch (jsonParser.currentTokenId()) {
            case 6:
                if (!this._acceptString) {
                    return null;
                }
                return jsonParser.getText();
            case 7:
                if (!this._acceptInt) {
                    return null;
                }
                return Integer.valueOf(jsonParser.getIntValue());
            case 8:
                if (!this._acceptDouble) {
                    return null;
                }
                return Double.valueOf(jsonParser.getDoubleValue());
            case 9:
                if (!this._acceptBoolean) {
                    return null;
                }
                return Boolean.TRUE;
            case 10:
                if (!this._acceptBoolean) {
                    return null;
                }
                return Boolean.FALSE;
            default:
                return null;
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.ContextualDeserializer
    public JsonDeserializer<?> createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
        AnnotatedMember member;
        ObjectIdInfo findObjectIdInfo;
        JavaType javaType;
        PropertyBasedObjectIdGenerator propertyBasedObjectIdGenerator;
        SettableBeanProperty settableBeanProperty;
        AnnotationIntrospector annotationIntrospector = deserializationContext.getAnnotationIntrospector();
        if (beanProperty == null || annotationIntrospector == null || (member = beanProperty.getMember()) == null || (findObjectIdInfo = annotationIntrospector.findObjectIdInfo(member)) == null) {
            return this._properties == null ? this : new AbstractDeserializer(this, this._objectIdReader, (Map<String, SettableBeanProperty>) null);
        }
        ObjectIdResolver objectIdResolverInstance = deserializationContext.objectIdResolverInstance(member, findObjectIdInfo);
        ObjectIdInfo findObjectReferenceInfo = annotationIntrospector.findObjectReferenceInfo(member, findObjectIdInfo);
        Class<? extends ObjectIdGenerator<?>> generatorType = findObjectReferenceInfo.getGeneratorType();
        if (generatorType == ObjectIdGenerators.PropertyGenerator.class) {
            PropertyName propertyName = findObjectReferenceInfo.getPropertyName();
            Map<String, SettableBeanProperty> map = this._properties;
            settableBeanProperty = map == null ? null : map.get(propertyName.getSimpleName());
            if (settableBeanProperty == null) {
                deserializationContext.reportBadDefinition(this._baseType, String.format("Invalid Object Id definition for %s: cannot find property with name %s", ClassUtil.nameOf(handledType()), ClassUtil.name(propertyName)));
            }
            javaType = settableBeanProperty.getType();
            propertyBasedObjectIdGenerator = new PropertyBasedObjectIdGenerator(findObjectReferenceInfo.getScope());
        } else {
            objectIdResolverInstance = deserializationContext.objectIdResolverInstance(member, findObjectReferenceInfo);
            javaType = deserializationContext.getTypeFactory().findTypeParameters(deserializationContext.constructType((Class<?>) generatorType), ObjectIdGenerator.class)[0];
            propertyBasedObjectIdGenerator = deserializationContext.objectIdGeneratorInstance(member, findObjectReferenceInfo);
            settableBeanProperty = null;
        }
        return new AbstractDeserializer(this, ObjectIdReader.construct(javaType, findObjectReferenceInfo.getPropertyName(), propertyBasedObjectIdGenerator, deserializationContext.findRootValueDeserializer(javaType), settableBeanProperty, objectIdResolverInstance), (Map<String, SettableBeanProperty>) null);
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public Object deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        return deserializationContext.handleMissingInstantiator(this._baseType.getRawClass(), new ValueInstantiator.Base(this._baseType), jsonParser, "abstract types either need to be mapped to concrete types, have custom deserializer, or contain additional type information", new Object[0]);
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public Object deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException {
        JsonToken currentToken;
        if (this._objectIdReader != null && (currentToken = jsonParser.currentToken()) != null) {
            if (currentToken.isScalarValue()) {
                return _deserializeFromObjectId(jsonParser, deserializationContext);
            }
            JsonToken jsonToken = currentToken;
            if (currentToken == JsonToken.START_OBJECT) {
                jsonToken = jsonParser.nextToken();
            }
            if (jsonToken == JsonToken.FIELD_NAME && this._objectIdReader.maySerializeAsObject() && this._objectIdReader.isValidReferencePropertyName(jsonParser.currentName(), jsonParser)) {
                return _deserializeFromObjectId(jsonParser, deserializationContext);
            }
        }
        Object _deserializeIfNatural = _deserializeIfNatural(jsonParser, deserializationContext);
        return _deserializeIfNatural != null ? _deserializeIfNatural : typeDeserializer.deserializeTypedFromObject(jsonParser, deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public SettableBeanProperty findBackReference(String str) {
        Map<String, SettableBeanProperty> map = this._backRefProperties;
        if (map == null) {
            return null;
        }
        return map.get(str);
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public ObjectIdReader getObjectIdReader() {
        return this._objectIdReader;
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public Class<?> handledType() {
        return this._baseType.getRawClass();
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public boolean isCachable() {
        return true;
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public LogicalType logicalType() {
        return LogicalType.POJO;
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public Boolean supportsUpdate(DeserializationConfig deserializationConfig) {
        return null;
    }
}
