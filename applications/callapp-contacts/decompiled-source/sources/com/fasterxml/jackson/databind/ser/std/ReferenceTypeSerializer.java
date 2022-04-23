package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.RuntimeJsonMappingException;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap;
import com.fasterxml.jackson.databind.type.ReferenceType;
import com.fasterxml.jackson.databind.util.NameTransformer;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer.class */
public abstract class ReferenceTypeSerializer<T> extends StdSerializer<T> implements ContextualSerializer {
    public static final Object MARKER_FOR_EMPTY = JsonInclude.Include.NON_EMPTY;
    private static final long serialVersionUID = 1;
    protected transient PropertySerializerMap _dynamicSerializers;
    protected final BeanProperty _property;
    protected final JavaType _referredType;
    protected final boolean _suppressNulls;
    protected final Object _suppressableValue;
    protected final NameTransformer _unwrapper;
    protected final JsonSerializer<Object> _valueSerializer;
    protected final TypeSerializer _valueTypeSerializer;

    /* renamed from: com.fasterxml.jackson.databind.ser.std.ReferenceTypeSerializer$1  reason: invalid class name */
    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer$1.class */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004d -> B:31:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0051 -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0055 -> B:25:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0059 -> B:21:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005d -> B:29:0x0040). Please submit an issue!!! */
        static {
            int[] iArr = new int[JsonInclude.Include.values().length];
            $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include = iArr;
            try {
                iArr[JsonInclude.Include.NON_DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include[JsonInclude.Include.NON_ABSENT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include[JsonInclude.Include.NON_EMPTY.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include[JsonInclude.Include.CUSTOM.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include[JsonInclude.Include.NON_NULL.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include[JsonInclude.Include.ALWAYS.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ReferenceTypeSerializer(ReferenceTypeSerializer<?> referenceTypeSerializer, BeanProperty beanProperty, TypeSerializer typeSerializer, JsonSerializer<?> jsonSerializer, NameTransformer nameTransformer, Object obj, boolean z) {
        super(referenceTypeSerializer);
        this._referredType = referenceTypeSerializer._referredType;
        this._dynamicSerializers = PropertySerializerMap.emptyForProperties();
        this._property = beanProperty;
        this._valueTypeSerializer = typeSerializer;
        this._valueSerializer = jsonSerializer;
        this._unwrapper = nameTransformer;
        this._suppressableValue = obj;
        this._suppressNulls = z;
    }

    public ReferenceTypeSerializer(ReferenceType referenceType, boolean z, TypeSerializer typeSerializer, JsonSerializer<Object> jsonSerializer) {
        super(referenceType);
        this._referredType = referenceType.getReferencedType();
        this._property = null;
        this._valueTypeSerializer = typeSerializer;
        this._valueSerializer = jsonSerializer;
        this._unwrapper = null;
        this._suppressableValue = null;
        this._suppressNulls = false;
        this._dynamicSerializers = PropertySerializerMap.emptyForProperties();
    }

    private final JsonSerializer<Object> _findCachedSerializer(SerializerProvider serializerProvider, Class<?> cls) throws JsonMappingException {
        JsonSerializer<Object> serializerFor = this._dynamicSerializers.serializerFor(cls);
        JsonSerializer<Object> jsonSerializer = serializerFor;
        if (serializerFor == null) {
            JsonSerializer<Object> findPrimaryPropertySerializer = this._referredType.hasGenericTypes() ? serializerProvider.findPrimaryPropertySerializer(serializerProvider.constructSpecializedType(this._referredType, cls), this._property) : serializerProvider.findPrimaryPropertySerializer(cls, this._property);
            NameTransformer nameTransformer = this._unwrapper;
            jsonSerializer = findPrimaryPropertySerializer;
            if (nameTransformer != null) {
                jsonSerializer = findPrimaryPropertySerializer.unwrappingSerializer(nameTransformer);
            }
            this._dynamicSerializers = this._dynamicSerializers.newWith(cls, jsonSerializer);
        }
        return jsonSerializer;
    }

    private final JsonSerializer<Object> _findSerializer(SerializerProvider serializerProvider, JavaType javaType, BeanProperty beanProperty) throws JsonMappingException {
        return serializerProvider.findPrimaryPropertySerializer(javaType, beanProperty);
    }

    protected abstract Object _getReferenced(T t);

    protected abstract Object _getReferencedIfPresent(T t);

    protected abstract boolean _isValuePresent(T t);

    protected boolean _useStatic(SerializerProvider serializerProvider, BeanProperty beanProperty, JavaType javaType) {
        if (javaType.isJavaLangObject()) {
            return false;
        }
        if (javaType.isFinal() || javaType.useStaticType()) {
            return true;
        }
        AnnotationIntrospector annotationIntrospector = serializerProvider.getAnnotationIntrospector();
        if (!(annotationIntrospector == null || beanProperty == null || beanProperty.getMember() == null)) {
            JsonSerialize.Typing findSerializationTyping = annotationIntrospector.findSerializationTyping(beanProperty.getMember());
            if (findSerializationTyping == JsonSerialize.Typing.STATIC) {
                return true;
            }
            if (findSerializationTyping == JsonSerialize.Typing.DYNAMIC) {
                return false;
            }
        }
        return serializerProvider.isEnabled(MapperFeature.USE_STATIC_TYPING);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer, com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitable
    public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType) throws JsonMappingException {
        JsonSerializer<Object> jsonSerializer = this._valueSerializer;
        JsonSerializer<Object> jsonSerializer2 = jsonSerializer;
        if (jsonSerializer == null) {
            JsonSerializer<Object> _findSerializer = _findSerializer(jsonFormatVisitorWrapper.getProvider(), this._referredType, this._property);
            NameTransformer nameTransformer = this._unwrapper;
            jsonSerializer2 = _findSerializer;
            if (nameTransformer != null) {
                jsonSerializer2 = _findSerializer.unwrappingSerializer(nameTransformer);
            }
        }
        jsonSerializer2.acceptJsonFormatVisitor(jsonFormatVisitorWrapper, this._referredType);
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x0169, code lost:
        if (r6._suppressNulls != r14) goto L_0x016c;
     */
    @Override // com.fasterxml.jackson.databind.ser.ContextualSerializer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.fasterxml.jackson.databind.JsonSerializer<?> createContextual(com.fasterxml.jackson.databind.SerializerProvider r7, com.fasterxml.jackson.databind.BeanProperty r8) throws com.fasterxml.jackson.databind.JsonMappingException {
        /*
            Method dump skipped, instructions count: 376
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.ser.std.ReferenceTypeSerializer.createContextual(com.fasterxml.jackson.databind.SerializerProvider, com.fasterxml.jackson.databind.BeanProperty):com.fasterxml.jackson.databind.JsonSerializer");
    }

    public JavaType getReferredType() {
        return this._referredType;
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public boolean isEmpty(SerializerProvider serializerProvider, T t) {
        if (!_isValuePresent(t)) {
            return true;
        }
        Object _getReferenced = _getReferenced(t);
        if (_getReferenced == null) {
            return this._suppressNulls;
        }
        if (this._suppressableValue == null) {
            return false;
        }
        JsonSerializer<Object> jsonSerializer = this._valueSerializer;
        JsonSerializer<Object> jsonSerializer2 = jsonSerializer;
        if (jsonSerializer == null) {
            try {
                jsonSerializer2 = _findCachedSerializer(serializerProvider, _getReferenced.getClass());
            } catch (JsonMappingException e) {
                throw new RuntimeJsonMappingException(e);
            }
        }
        Object obj = this._suppressableValue;
        return obj == MARKER_FOR_EMPTY ? jsonSerializer2.isEmpty(serializerProvider, _getReferenced) : obj.equals(_getReferenced);
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public boolean isUnwrappingSerializer() {
        return this._unwrapper != null;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer
    public void serialize(T t, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        Object _getReferencedIfPresent = _getReferencedIfPresent(t);
        if (_getReferencedIfPresent != null) {
            JsonSerializer<Object> jsonSerializer = this._valueSerializer;
            JsonSerializer<Object> jsonSerializer2 = jsonSerializer;
            if (jsonSerializer == null) {
                jsonSerializer2 = _findCachedSerializer(serializerProvider, _getReferencedIfPresent.getClass());
            }
            TypeSerializer typeSerializer = this._valueTypeSerializer;
            if (typeSerializer != null) {
                jsonSerializer2.serializeWithType(_getReferencedIfPresent, jsonGenerator, serializerProvider, typeSerializer);
            } else {
                jsonSerializer2.serialize(_getReferencedIfPresent, jsonGenerator, serializerProvider);
            }
        } else if (this._unwrapper == null) {
            serializerProvider.defaultSerializeNull(jsonGenerator);
        }
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public void serializeWithType(T t, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) throws IOException {
        Object _getReferencedIfPresent = _getReferencedIfPresent(t);
        if (_getReferencedIfPresent != null) {
            JsonSerializer<Object> jsonSerializer = this._valueSerializer;
            JsonSerializer<Object> jsonSerializer2 = jsonSerializer;
            if (jsonSerializer == null) {
                jsonSerializer2 = _findCachedSerializer(serializerProvider, _getReferencedIfPresent.getClass());
            }
            jsonSerializer2.serializeWithType(_getReferencedIfPresent, jsonGenerator, serializerProvider, typeSerializer);
        } else if (this._unwrapper == null) {
            serializerProvider.defaultSerializeNull(jsonGenerator);
        }
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public JsonSerializer<T> unwrappingSerializer(NameTransformer nameTransformer) {
        JsonSerializer<?> jsonSerializer = this._valueSerializer;
        JsonSerializer<?> jsonSerializer2 = jsonSerializer;
        if (jsonSerializer != null) {
            JsonSerializer<?> unwrappingSerializer = jsonSerializer.unwrappingSerializer(nameTransformer);
            jsonSerializer2 = unwrappingSerializer;
            if (unwrappingSerializer == this._valueSerializer) {
                return this;
            }
        }
        NameTransformer nameTransformer2 = this._unwrapper;
        if (nameTransformer2 != null) {
            nameTransformer = NameTransformer.chainedTransformer(nameTransformer, nameTransformer2);
        }
        return (this._valueSerializer == jsonSerializer2 && this._unwrapper == nameTransformer) ? this : withResolved(this._property, this._valueTypeSerializer, jsonSerializer2, nameTransformer);
    }

    public abstract ReferenceTypeSerializer<T> withContentInclusion(Object obj, boolean z);

    protected abstract ReferenceTypeSerializer<T> withResolved(BeanProperty beanProperty, TypeSerializer typeSerializer, JsonSerializer<?> jsonSerializer, NameTransformer nameTransformer);
}
