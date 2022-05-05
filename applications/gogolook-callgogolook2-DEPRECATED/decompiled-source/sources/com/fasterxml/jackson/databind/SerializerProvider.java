package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.cfg.ContextAttributes;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import com.fasterxml.jackson.databind.ser.FilterProvider;
import com.fasterxml.jackson.databind.ser.ResolvableSerializer;
import com.fasterxml.jackson.databind.ser.SerializerCache;
import com.fasterxml.jackson.databind.ser.SerializerFactory;
import com.fasterxml.jackson.databind.ser.impl.FailingSerializer;
import com.fasterxml.jackson.databind.ser.impl.ReadOnlyClassToSerializerMap;
import com.fasterxml.jackson.databind.ser.impl.TypeWrappedSerializer;
import com.fasterxml.jackson.databind.ser.impl.UnknownSerializer;
import com.fasterxml.jackson.databind.ser.impl.WritableObjectId;
import com.fasterxml.jackson.databind.ser.std.NullSerializer;
import com.fasterxml.jackson.databind.type.TypeFactory;
import java.io.IOException;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/SerializerProvider.class */
public abstract class SerializerProvider extends DatabindContext {
    public static final JsonSerializer<Object> DEFAULT_NULL_KEY_SERIALIZER = new FailingSerializer("Null key for a Map not allowed in JSON (use a converting NullKeySerializer?)");
    public static final JsonSerializer<Object> DEFAULT_UNKNOWN_SERIALIZER = new UnknownSerializer();
    public transient ContextAttributes _attributes;
    public final SerializationConfig _config;
    public DateFormat _dateFormat;
    public JsonSerializer<Object> _keySerializer;
    public final ReadOnlyClassToSerializerMap _knownSerializers;
    public JsonSerializer<Object> _nullKeySerializer;
    public JsonSerializer<Object> _nullValueSerializer;
    public final Class<?> _serializationView;
    public final SerializerCache _serializerCache;
    public final SerializerFactory _serializerFactory;
    public final boolean _stdNullValueSerializer;
    public JsonSerializer<Object> _unknownTypeSerializer;

    public SerializerProvider() {
        this._unknownTypeSerializer = DEFAULT_UNKNOWN_SERIALIZER;
        this._nullValueSerializer = NullSerializer.instance;
        this._nullKeySerializer = DEFAULT_NULL_KEY_SERIALIZER;
        this._config = null;
        this._serializerFactory = null;
        this._serializerCache = new SerializerCache();
        this._knownSerializers = null;
        this._serializationView = null;
        this._attributes = null;
        this._stdNullValueSerializer = true;
    }

    public SerializerProvider(SerializerProvider serializerProvider, SerializationConfig serializationConfig, SerializerFactory serializerFactory) {
        this._unknownTypeSerializer = DEFAULT_UNKNOWN_SERIALIZER;
        this._nullValueSerializer = NullSerializer.instance;
        JsonSerializer<Object> jsonSerializer = DEFAULT_NULL_KEY_SERIALIZER;
        this._nullKeySerializer = jsonSerializer;
        if (serializationConfig != null) {
            this._serializerFactory = serializerFactory;
            this._config = serializationConfig;
            this._serializerCache = serializerProvider._serializerCache;
            this._unknownTypeSerializer = serializerProvider._unknownTypeSerializer;
            this._keySerializer = serializerProvider._keySerializer;
            this._nullValueSerializer = serializerProvider._nullValueSerializer;
            this._nullKeySerializer = serializerProvider._nullKeySerializer;
            this._stdNullValueSerializer = this._nullValueSerializer == jsonSerializer;
            this._serializationView = serializationConfig.getActiveView();
            this._attributes = serializationConfig.getAttributes();
            this._knownSerializers = this._serializerCache.getReadOnlyLookupMap();
            return;
        }
        throw new NullPointerException();
    }

    public JsonSerializer<Object> _createAndCacheUntypedSerializer(JavaType javaType) throws JsonMappingException {
        try {
            JsonSerializer<Object> _createUntypedSerializer = _createUntypedSerializer(javaType);
            if (_createUntypedSerializer != null) {
                this._serializerCache.addAndResolveNonTypedSerializer(javaType, _createUntypedSerializer, this);
            }
            return _createUntypedSerializer;
        } catch (IllegalArgumentException e) {
            throw JsonMappingException.from(this, e.getMessage(), e);
        }
    }

    public JsonSerializer<Object> _createAndCacheUntypedSerializer(Class<?> cls) throws JsonMappingException {
        JavaType constructType = this._config.constructType(cls);
        try {
            JsonSerializer<Object> _createUntypedSerializer = _createUntypedSerializer(constructType);
            if (_createUntypedSerializer != null) {
                this._serializerCache.addAndResolveNonTypedSerializer(cls, constructType, _createUntypedSerializer, this);
            }
            return _createUntypedSerializer;
        } catch (IllegalArgumentException e) {
            throw JsonMappingException.from(this, e.getMessage(), e);
        }
    }

    public JsonSerializer<Object> _createUntypedSerializer(JavaType javaType) throws JsonMappingException {
        JsonSerializer<Object> createSerializer;
        synchronized (this._serializerCache) {
            createSerializer = this._serializerFactory.createSerializer(this, javaType);
        }
        return createSerializer;
    }

    public final DateFormat _dateFormat() {
        DateFormat dateFormat = this._dateFormat;
        if (dateFormat != null) {
            return dateFormat;
        }
        DateFormat dateFormat2 = (DateFormat) this._config.getDateFormat().clone();
        this._dateFormat = dateFormat2;
        return dateFormat2;
    }

    public JsonSerializer<Object> _handleContextualResolvable(JsonSerializer<?> jsonSerializer, BeanProperty beanProperty) throws JsonMappingException {
        if (jsonSerializer instanceof ResolvableSerializer) {
            ((ResolvableSerializer) jsonSerializer).resolve(this);
        }
        return handleSecondaryContextualization(jsonSerializer, beanProperty);
    }

    public JsonSerializer<Object> _handleResolvable(JsonSerializer<?> jsonSerializer) throws JsonMappingException {
        if (jsonSerializer instanceof ResolvableSerializer) {
            ((ResolvableSerializer) jsonSerializer).resolve(this);
        }
        return jsonSerializer;
    }

    public final boolean canOverrideAccessModifiers() {
        return this._config.canOverrideAccessModifiers();
    }

    public void defaultSerializeDateKey(long j, JsonGenerator jsonGenerator) throws IOException {
        if (isEnabled(SerializationFeature.WRITE_DATE_KEYS_AS_TIMESTAMPS)) {
            jsonGenerator.writeFieldName(String.valueOf(j));
        } else {
            jsonGenerator.writeFieldName(_dateFormat().format(new Date(j)));
        }
    }

    public void defaultSerializeDateKey(Date date, JsonGenerator jsonGenerator) throws IOException {
        if (isEnabled(SerializationFeature.WRITE_DATE_KEYS_AS_TIMESTAMPS)) {
            jsonGenerator.writeFieldName(String.valueOf(date.getTime()));
        } else {
            jsonGenerator.writeFieldName(_dateFormat().format(date));
        }
    }

    public final void defaultSerializeDateValue(Date date, JsonGenerator jsonGenerator) throws IOException {
        if (isEnabled(SerializationFeature.WRITE_DATES_AS_TIMESTAMPS)) {
            jsonGenerator.writeNumber(date.getTime());
        } else {
            jsonGenerator.writeString(_dateFormat().format(date));
        }
    }

    public final void defaultSerializeNull(JsonGenerator jsonGenerator) throws IOException {
        if (this._stdNullValueSerializer) {
            jsonGenerator.writeNull();
        } else {
            this._nullValueSerializer.serialize(null, jsonGenerator, this);
        }
    }

    public JsonSerializer<Object> findKeySerializer(JavaType javaType, BeanProperty beanProperty) throws JsonMappingException {
        return _handleContextualResolvable(this._serializerFactory.createKeySerializer(this._config, javaType, this._keySerializer), beanProperty);
    }

    public JsonSerializer<Object> findKeySerializer(Class<?> cls, BeanProperty beanProperty) throws JsonMappingException {
        return findKeySerializer(this._config.constructType(cls), beanProperty);
    }

    public JsonSerializer<Object> findNullKeySerializer(JavaType javaType, BeanProperty beanProperty) throws JsonMappingException {
        return this._nullKeySerializer;
    }

    public JsonSerializer<Object> findNullValueSerializer(BeanProperty beanProperty) throws JsonMappingException {
        return this._nullValueSerializer;
    }

    public abstract WritableObjectId findObjectId(Object obj, ObjectIdGenerator<?> objectIdGenerator);

    public JsonSerializer<Object> findPrimaryPropertySerializer(JavaType javaType, BeanProperty beanProperty) throws JsonMappingException {
        JsonSerializer<Object> untypedValueSerializer = this._knownSerializers.untypedValueSerializer(javaType);
        JsonSerializer<Object> jsonSerializer = untypedValueSerializer;
        if (untypedValueSerializer == null) {
            JsonSerializer<Object> untypedValueSerializer2 = this._serializerCache.untypedValueSerializer(javaType);
            jsonSerializer = untypedValueSerializer2;
            if (untypedValueSerializer2 == null) {
                JsonSerializer<Object> _createAndCacheUntypedSerializer = _createAndCacheUntypedSerializer(javaType);
                jsonSerializer = _createAndCacheUntypedSerializer;
                if (_createAndCacheUntypedSerializer == null) {
                    return getUnknownTypeSerializer(javaType.getRawClass());
                }
            }
        }
        return handlePrimaryContextualization(jsonSerializer, beanProperty);
    }

    public JsonSerializer<Object> findPrimaryPropertySerializer(Class<?> cls, BeanProperty beanProperty) throws JsonMappingException {
        JsonSerializer<Object> untypedValueSerializer = this._knownSerializers.untypedValueSerializer(cls);
        JsonSerializer<Object> jsonSerializer = untypedValueSerializer;
        if (untypedValueSerializer == null) {
            JsonSerializer<Object> untypedValueSerializer2 = this._serializerCache.untypedValueSerializer(cls);
            jsonSerializer = untypedValueSerializer2;
            if (untypedValueSerializer2 == null) {
                JsonSerializer<Object> untypedValueSerializer3 = this._serializerCache.untypedValueSerializer(this._config.constructType(cls));
                jsonSerializer = untypedValueSerializer3;
                if (untypedValueSerializer3 == null) {
                    JsonSerializer<Object> _createAndCacheUntypedSerializer = _createAndCacheUntypedSerializer(cls);
                    jsonSerializer = _createAndCacheUntypedSerializer;
                    if (_createAndCacheUntypedSerializer == null) {
                        return getUnknownTypeSerializer(cls);
                    }
                }
            }
        }
        return handlePrimaryContextualization(jsonSerializer, beanProperty);
    }

    public JsonSerializer<Object> findTypedValueSerializer(JavaType javaType, boolean z, BeanProperty beanProperty) throws JsonMappingException {
        JsonSerializer<Object> typedValueSerializer = this._knownSerializers.typedValueSerializer(javaType);
        if (typedValueSerializer != null) {
            return typedValueSerializer;
        }
        JsonSerializer<Object> typedValueSerializer2 = this._serializerCache.typedValueSerializer(javaType);
        if (typedValueSerializer2 != null) {
            return typedValueSerializer2;
        }
        JsonSerializer<Object> findValueSerializer = findValueSerializer(javaType, beanProperty);
        TypeSerializer createTypeSerializer = this._serializerFactory.createTypeSerializer(this._config, javaType);
        JsonSerializer<Object> jsonSerializer = findValueSerializer;
        if (createTypeSerializer != null) {
            jsonSerializer = new TypeWrappedSerializer(createTypeSerializer.forProperty(beanProperty), findValueSerializer);
        }
        if (z) {
            this._serializerCache.addTypedSerializer(javaType, jsonSerializer);
        }
        return jsonSerializer;
    }

    public JsonSerializer<Object> findTypedValueSerializer(Class<?> cls, boolean z, BeanProperty beanProperty) throws JsonMappingException {
        JsonSerializer<Object> typedValueSerializer = this._knownSerializers.typedValueSerializer(cls);
        if (typedValueSerializer != null) {
            return typedValueSerializer;
        }
        JsonSerializer<Object> typedValueSerializer2 = this._serializerCache.typedValueSerializer(cls);
        if (typedValueSerializer2 != null) {
            return typedValueSerializer2;
        }
        JsonSerializer<Object> findValueSerializer = findValueSerializer(cls, beanProperty);
        SerializerFactory serializerFactory = this._serializerFactory;
        SerializationConfig serializationConfig = this._config;
        TypeSerializer createTypeSerializer = serializerFactory.createTypeSerializer(serializationConfig, serializationConfig.constructType(cls));
        JsonSerializer<Object> jsonSerializer = findValueSerializer;
        if (createTypeSerializer != null) {
            jsonSerializer = new TypeWrappedSerializer(createTypeSerializer.forProperty(beanProperty), findValueSerializer);
        }
        if (z) {
            this._serializerCache.addTypedSerializer(cls, jsonSerializer);
        }
        return jsonSerializer;
    }

    public JsonSerializer<Object> findValueSerializer(JavaType javaType) throws JsonMappingException {
        JsonSerializer<Object> untypedValueSerializer = this._knownSerializers.untypedValueSerializer(javaType);
        JsonSerializer<Object> jsonSerializer = untypedValueSerializer;
        if (untypedValueSerializer == null) {
            JsonSerializer<Object> untypedValueSerializer2 = this._serializerCache.untypedValueSerializer(javaType);
            jsonSerializer = untypedValueSerializer2;
            if (untypedValueSerializer2 == null) {
                JsonSerializer<Object> _createAndCacheUntypedSerializer = _createAndCacheUntypedSerializer(javaType);
                jsonSerializer = _createAndCacheUntypedSerializer;
                if (_createAndCacheUntypedSerializer == null) {
                    jsonSerializer = getUnknownTypeSerializer(javaType.getRawClass());
                }
            }
        }
        return jsonSerializer;
    }

    public JsonSerializer<Object> findValueSerializer(JavaType javaType, BeanProperty beanProperty) throws JsonMappingException {
        JsonSerializer<Object> untypedValueSerializer = this._knownSerializers.untypedValueSerializer(javaType);
        JsonSerializer<Object> jsonSerializer = untypedValueSerializer;
        if (untypedValueSerializer == null) {
            JsonSerializer<Object> untypedValueSerializer2 = this._serializerCache.untypedValueSerializer(javaType);
            jsonSerializer = untypedValueSerializer2;
            if (untypedValueSerializer2 == null) {
                JsonSerializer<Object> _createAndCacheUntypedSerializer = _createAndCacheUntypedSerializer(javaType);
                jsonSerializer = _createAndCacheUntypedSerializer;
                if (_createAndCacheUntypedSerializer == null) {
                    return getUnknownTypeSerializer(javaType.getRawClass());
                }
            }
        }
        return handleSecondaryContextualization(jsonSerializer, beanProperty);
    }

    public JsonSerializer<Object> findValueSerializer(Class<?> cls) throws JsonMappingException {
        JsonSerializer<Object> untypedValueSerializer = this._knownSerializers.untypedValueSerializer(cls);
        JsonSerializer<Object> jsonSerializer = untypedValueSerializer;
        if (untypedValueSerializer == null) {
            JsonSerializer<Object> untypedValueSerializer2 = this._serializerCache.untypedValueSerializer(cls);
            jsonSerializer = untypedValueSerializer2;
            if (untypedValueSerializer2 == null) {
                JsonSerializer<Object> untypedValueSerializer3 = this._serializerCache.untypedValueSerializer(this._config.constructType(cls));
                jsonSerializer = untypedValueSerializer3;
                if (untypedValueSerializer3 == null) {
                    JsonSerializer<Object> _createAndCacheUntypedSerializer = _createAndCacheUntypedSerializer(cls);
                    jsonSerializer = _createAndCacheUntypedSerializer;
                    if (_createAndCacheUntypedSerializer == null) {
                        jsonSerializer = getUnknownTypeSerializer(cls);
                    }
                }
            }
        }
        return jsonSerializer;
    }

    public JsonSerializer<Object> findValueSerializer(Class<?> cls, BeanProperty beanProperty) throws JsonMappingException {
        JsonSerializer<Object> untypedValueSerializer = this._knownSerializers.untypedValueSerializer(cls);
        JsonSerializer<Object> jsonSerializer = untypedValueSerializer;
        if (untypedValueSerializer == null) {
            JsonSerializer<Object> untypedValueSerializer2 = this._serializerCache.untypedValueSerializer(cls);
            jsonSerializer = untypedValueSerializer2;
            if (untypedValueSerializer2 == null) {
                JsonSerializer<Object> untypedValueSerializer3 = this._serializerCache.untypedValueSerializer(this._config.constructType(cls));
                jsonSerializer = untypedValueSerializer3;
                if (untypedValueSerializer3 == null) {
                    JsonSerializer<Object> _createAndCacheUntypedSerializer = _createAndCacheUntypedSerializer(cls);
                    jsonSerializer = _createAndCacheUntypedSerializer;
                    if (_createAndCacheUntypedSerializer == null) {
                        return getUnknownTypeSerializer(cls);
                    }
                }
            }
        }
        return handleSecondaryContextualization(jsonSerializer, beanProperty);
    }

    public final Class<?> getActiveView() {
        return this._serializationView;
    }

    public final AnnotationIntrospector getAnnotationIntrospector() {
        return this._config.getAnnotationIntrospector();
    }

    public Object getAttribute(Object obj) {
        return this._attributes.getAttribute(obj);
    }

    @Override // com.fasterxml.jackson.databind.DatabindContext
    public final SerializationConfig getConfig() {
        return this._config;
    }

    public JsonSerializer<Object> getDefaultNullValueSerializer() {
        return this._nullValueSerializer;
    }

    public final JsonFormat.Value getDefaultPropertyFormat(Class<?> cls) {
        return this._config.getDefaultPropertyFormat(cls);
    }

    public final FilterProvider getFilterProvider() {
        return this._config.getFilterProvider();
    }

    public Locale getLocale() {
        return this._config.getLocale();
    }

    public TimeZone getTimeZone() {
        return this._config.getTimeZone();
    }

    @Override // com.fasterxml.jackson.databind.DatabindContext
    public final TypeFactory getTypeFactory() {
        return this._config.getTypeFactory();
    }

    public JsonSerializer<Object> getUnknownTypeSerializer(Class<?> cls) {
        return cls == Object.class ? this._unknownTypeSerializer : new UnknownSerializer(cls);
    }

    public JsonSerializer<?> handlePrimaryContextualization(JsonSerializer<?> jsonSerializer, BeanProperty beanProperty) throws JsonMappingException {
        JsonSerializer<?> jsonSerializer2 = jsonSerializer;
        if (jsonSerializer != null) {
            jsonSerializer2 = jsonSerializer;
            if (jsonSerializer instanceof ContextualSerializer) {
                jsonSerializer2 = ((ContextualSerializer) jsonSerializer).createContextual(this, beanProperty);
            }
        }
        return jsonSerializer2;
    }

    public JsonSerializer<?> handleSecondaryContextualization(JsonSerializer<?> jsonSerializer, BeanProperty beanProperty) throws JsonMappingException {
        JsonSerializer<?> jsonSerializer2 = jsonSerializer;
        if (jsonSerializer != null) {
            jsonSerializer2 = jsonSerializer;
            if (jsonSerializer instanceof ContextualSerializer) {
                jsonSerializer2 = ((ContextualSerializer) jsonSerializer).createContextual(this, beanProperty);
            }
        }
        return jsonSerializer2;
    }

    public final boolean isEnabled(MapperFeature mapperFeature) {
        return this._config.isEnabled(mapperFeature);
    }

    public final boolean isEnabled(SerializationFeature serializationFeature) {
        return this._config.isEnabled(serializationFeature);
    }

    public JsonMappingException mappingException(String str, Object... objArr) {
        String str2 = str;
        if (objArr != null) {
            str2 = str;
            if (objArr.length > 0) {
                str2 = String.format(str, objArr);
            }
        }
        return JsonMappingException.from(this, str2);
    }

    public abstract JsonSerializer<Object> serializerInstance(Annotated annotated, Object obj) throws JsonMappingException;

    public SerializerProvider setAttribute(Object obj, Object obj2) {
        this._attributes = this._attributes.withPerCallAttribute(obj, obj2);
        return this;
    }
}
