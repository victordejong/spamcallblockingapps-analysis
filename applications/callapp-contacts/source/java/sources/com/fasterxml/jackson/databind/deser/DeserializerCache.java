package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.KeyDeserializer;
import com.fasterxml.jackson.databind.deser.std.StdDelegatingDeserializer;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.type.ArrayType;
import com.fasterxml.jackson.databind.type.CollectionLikeType;
import com.fasterxml.jackson.databind.type.CollectionType;
import com.fasterxml.jackson.databind.type.MapLikeType;
import com.fasterxml.jackson.databind.type.MapType;
import com.fasterxml.jackson.databind.type.ReferenceType;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.Converter;
import com.fasterxml.jackson.databind.util.LRUMap;
import java.io.Serializable;
import java.util.HashMap;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/DeserializerCache.class */
public final class DeserializerCache implements Serializable {
    protected final LRUMap<JavaType, JsonDeserializer<Object>> _cachedDeserializers;
    protected final HashMap<JavaType, JsonDeserializer<Object>> _incompleteDeserializers;

    public DeserializerCache() {
        this(2000);
    }

    public DeserializerCache(int i) {
        this._incompleteDeserializers = new HashMap<>(8);
        this._cachedDeserializers = new LRUMap<>(Math.min(64, i >> 2), i);
    }

    private boolean _hasCustomHandlers(JavaType javaType) {
        if (javaType.isContainerType()) {
            JavaType contentType = javaType.getContentType();
            if (contentType != null && (contentType.getValueHandler() != null || contentType.getTypeHandler() != null)) {
                return true;
            }
            return javaType.isMapLikeType() && javaType.getKeyType().getValueHandler() != null;
        }
        return false;
    }

    private Class<?> _verifyAsClass(Object obj, String str, Class<?> cls) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Class) {
            Class<?> cls2 = (Class) obj;
            if (cls2 != cls && !ClassUtil.isBogusClass(cls2)) {
                return cls2;
            }
            return null;
        }
        throw new IllegalStateException("AnnotationIntrospector." + str + "() returned value of type " + obj.getClass().getName() + ": expected type JsonSerializer or Class<JsonSerializer> instead");
    }

    private JavaType modifyTypeByAnnotation(DeserializationContext deserializationContext, Annotated annotated, JavaType javaType) throws JsonMappingException {
        AnnotationIntrospector annotationIntrospector = deserializationContext.getAnnotationIntrospector();
        if (annotationIntrospector == null) {
            return javaType;
        }
        MapLikeType mapLikeType = javaType;
        if (javaType.isMapLikeType()) {
            JavaType keyType = javaType.getKeyType();
            mapLikeType = javaType;
            if (keyType != null) {
                mapLikeType = javaType;
                if (keyType.getValueHandler() == null) {
                    Object findKeyDeserializer = annotationIntrospector.findKeyDeserializer(annotated);
                    mapLikeType = javaType;
                    if (findKeyDeserializer != null) {
                        KeyDeserializer keyDeserializerInstance = deserializationContext.keyDeserializerInstance(annotated, findKeyDeserializer);
                        mapLikeType = javaType;
                        if (keyDeserializerInstance != null) {
                            mapLikeType = ((MapLikeType) javaType).withKeyValueHandler(keyDeserializerInstance);
                        }
                    }
                }
            }
        }
        JavaType contentType = mapLikeType.getContentType();
        JavaType javaType2 = mapLikeType;
        if (contentType != null) {
            javaType2 = mapLikeType;
            if (contentType.getValueHandler() == null) {
                Object findContentDeserializer = annotationIntrospector.findContentDeserializer(annotated);
                javaType2 = mapLikeType;
                if (findContentDeserializer != null) {
                    JsonDeserializer<Object> jsonDeserializer = null;
                    if (findContentDeserializer instanceof JsonDeserializer) {
                        jsonDeserializer = (JsonDeserializer) findContentDeserializer;
                    } else {
                        Class<?> _verifyAsClass = _verifyAsClass(findContentDeserializer, "findContentDeserializer", JsonDeserializer.None.class);
                        if (_verifyAsClass != null) {
                            jsonDeserializer = deserializationContext.deserializerInstance(annotated, _verifyAsClass);
                        }
                    }
                    javaType2 = mapLikeType;
                    if (jsonDeserializer != null) {
                        javaType2 = mapLikeType.withContentValueHandler(jsonDeserializer);
                    }
                }
            }
        }
        return annotationIntrospector.refineDeserializationType(deserializationContext.getConfig(), annotated, javaType2);
    }

    protected final JsonDeserializer<Object> _createAndCache2(DeserializationContext deserializationContext, DeserializerFactory deserializerFactory, JavaType javaType) throws JsonMappingException {
        try {
            JsonDeserializer<Object> _createDeserializer = _createDeserializer(deserializationContext, deserializerFactory, javaType);
            if (_createDeserializer == null) {
                return null;
            }
            boolean z = !_hasCustomHandlers(javaType) && _createDeserializer.isCachable();
            if (_createDeserializer instanceof ResolvableDeserializer) {
                this._incompleteDeserializers.put(javaType, _createDeserializer);
                ((ResolvableDeserializer) _createDeserializer).resolve(deserializationContext);
                this._incompleteDeserializers.remove(javaType);
            }
            if (z) {
                this._cachedDeserializers.put(javaType, _createDeserializer);
            }
            return _createDeserializer;
        } catch (IllegalArgumentException e) {
            throw JsonMappingException.from(deserializationContext, ClassUtil.exceptionMessage(e), e);
        }
    }

    protected final JsonDeserializer<Object> _createAndCacheValueDeserializer(DeserializationContext deserializationContext, DeserializerFactory deserializerFactory, JavaType javaType) throws JsonMappingException {
        JsonDeserializer<Object> jsonDeserializer;
        synchronized (this._incompleteDeserializers) {
            JsonDeserializer<Object> _findCachedDeserializer = _findCachedDeserializer(javaType);
            if (_findCachedDeserializer != null) {
                return _findCachedDeserializer;
            }
            int size = this._incompleteDeserializers.size();
            if (size > 0 && (jsonDeserializer = this._incompleteDeserializers.get(javaType)) != null) {
                return jsonDeserializer;
            }
            JsonDeserializer<Object> _createAndCache2 = _createAndCache2(deserializationContext, deserializerFactory, javaType);
            if (size == 0 && this._incompleteDeserializers.size() > 0) {
                this._incompleteDeserializers.clear();
            }
            return _createAndCache2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001b, code lost:
        if (r13.isCollectionLikeType() != false) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final com.fasterxml.jackson.databind.JsonDeserializer<java.lang.Object> _createDeserializer(com.fasterxml.jackson.databind.DeserializationContext r11, com.fasterxml.jackson.databind.deser.DeserializerFactory r12, com.fasterxml.jackson.databind.JavaType r13) throws com.fasterxml.jackson.databind.JsonMappingException {
        /*
            Method dump skipped, instructions count: 200
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.deser.DeserializerCache._createDeserializer(com.fasterxml.jackson.databind.DeserializationContext, com.fasterxml.jackson.databind.deser.DeserializerFactory, com.fasterxml.jackson.databind.JavaType):com.fasterxml.jackson.databind.JsonDeserializer");
    }

    protected final JsonDeserializer<?> _createDeserializer2(DeserializationContext deserializationContext, DeserializerFactory deserializerFactory, JavaType javaType, BeanDescription beanDescription) throws JsonMappingException {
        DeserializationConfig config = deserializationContext.getConfig();
        if (javaType.isEnumType()) {
            return deserializerFactory.createEnumDeserializer(deserializationContext, javaType, beanDescription);
        }
        if (javaType.isContainerType()) {
            if (javaType.isArrayType()) {
                return deserializerFactory.createArrayDeserializer(deserializationContext, (ArrayType) javaType, beanDescription);
            }
            if (javaType.isMapLikeType() && beanDescription.findExpectedFormat(null).getShape() != JsonFormat.Shape.OBJECT) {
                MapLikeType mapLikeType = (MapLikeType) javaType;
                return mapLikeType instanceof MapType ? deserializerFactory.createMapDeserializer(deserializationContext, (MapType) mapLikeType, beanDescription) : deserializerFactory.createMapLikeDeserializer(deserializationContext, mapLikeType, beanDescription);
            } else if (javaType.isCollectionLikeType() && beanDescription.findExpectedFormat(null).getShape() != JsonFormat.Shape.OBJECT) {
                CollectionLikeType collectionLikeType = (CollectionLikeType) javaType;
                return collectionLikeType instanceof CollectionType ? deserializerFactory.createCollectionDeserializer(deserializationContext, (CollectionType) collectionLikeType, beanDescription) : deserializerFactory.createCollectionLikeDeserializer(deserializationContext, collectionLikeType, beanDescription);
            }
        }
        return javaType.isReferenceType() ? deserializerFactory.createReferenceDeserializer(deserializationContext, (ReferenceType) javaType, beanDescription) : JsonNode.class.isAssignableFrom(javaType.getRawClass()) ? deserializerFactory.createTreeDeserializer(config, javaType, beanDescription) : deserializerFactory.createBeanDeserializer(deserializationContext, javaType, beanDescription);
    }

    protected final JsonDeserializer<Object> _findCachedDeserializer(JavaType javaType) {
        if (javaType != null) {
            if (!_hasCustomHandlers(javaType)) {
                return this._cachedDeserializers.get(javaType);
            }
            return null;
        }
        throw new IllegalArgumentException("Null JavaType passed");
    }

    protected final KeyDeserializer _handleUnknownKeyDeserializer(DeserializationContext deserializationContext, JavaType javaType) throws JsonMappingException {
        return (KeyDeserializer) deserializationContext.reportBadDefinition(javaType, "Cannot find a (Map) Key deserializer for type ".concat(String.valueOf(javaType)));
    }

    protected final JsonDeserializer<Object> _handleUnknownValueDeserializer(DeserializationContext deserializationContext, JavaType javaType) throws JsonMappingException {
        return !ClassUtil.isConcrete(javaType.getRawClass()) ? (JsonDeserializer) deserializationContext.reportBadDefinition(javaType, "Cannot find a Value deserializer for abstract type ".concat(String.valueOf(javaType))) : (JsonDeserializer) deserializationContext.reportBadDefinition(javaType, "Cannot find a Value deserializer for type ".concat(String.valueOf(javaType)));
    }

    protected final Converter<Object, Object> findConverter(DeserializationContext deserializationContext, Annotated annotated) throws JsonMappingException {
        Object findDeserializationConverter = deserializationContext.getAnnotationIntrospector().findDeserializationConverter(annotated);
        if (findDeserializationConverter == null) {
            return null;
        }
        return deserializationContext.converterInstance(annotated, findDeserializationConverter);
    }

    protected final JsonDeserializer<Object> findConvertingDeserializer(DeserializationContext deserializationContext, Annotated annotated, JsonDeserializer<Object> jsonDeserializer) throws JsonMappingException {
        Converter<Object, Object> findConverter = findConverter(deserializationContext, annotated);
        return findConverter == null ? jsonDeserializer : new StdDelegatingDeserializer(findConverter, findConverter.getInputType(deserializationContext.getTypeFactory()), jsonDeserializer);
    }

    protected final JsonDeserializer<Object> findDeserializerFromAnnotation(DeserializationContext deserializationContext, Annotated annotated) throws JsonMappingException {
        Object findDeserializer = deserializationContext.getAnnotationIntrospector().findDeserializer(annotated);
        if (findDeserializer == null) {
            return null;
        }
        return findConvertingDeserializer(deserializationContext, annotated, deserializationContext.deserializerInstance(annotated, findDeserializer));
    }

    public final KeyDeserializer findKeyDeserializer(DeserializationContext deserializationContext, DeserializerFactory deserializerFactory, JavaType javaType) throws JsonMappingException {
        KeyDeserializer createKeyDeserializer = deserializerFactory.createKeyDeserializer(deserializationContext, javaType);
        if (createKeyDeserializer == null) {
            return _handleUnknownKeyDeserializer(deserializationContext, javaType);
        }
        if (createKeyDeserializer instanceof ResolvableDeserializer) {
            ((ResolvableDeserializer) createKeyDeserializer).resolve(deserializationContext);
        }
        return createKeyDeserializer;
    }

    public final JsonDeserializer<Object> findValueDeserializer(DeserializationContext deserializationContext, DeserializerFactory deserializerFactory, JavaType javaType) throws JsonMappingException {
        JsonDeserializer<Object> _findCachedDeserializer = _findCachedDeserializer(javaType);
        JsonDeserializer<Object> jsonDeserializer = _findCachedDeserializer;
        if (_findCachedDeserializer == null) {
            JsonDeserializer<Object> _createAndCacheValueDeserializer = _createAndCacheValueDeserializer(deserializationContext, deserializerFactory, javaType);
            jsonDeserializer = _createAndCacheValueDeserializer;
            if (_createAndCacheValueDeserializer == null) {
                jsonDeserializer = _handleUnknownValueDeserializer(deserializationContext, javaType);
            }
        }
        return jsonDeserializer;
    }

    public final boolean hasValueDeserializerFor(DeserializationContext deserializationContext, DeserializerFactory deserializerFactory, JavaType javaType) throws JsonMappingException {
        JsonDeserializer<Object> _findCachedDeserializer = _findCachedDeserializer(javaType);
        JsonDeserializer<Object> jsonDeserializer = _findCachedDeserializer;
        if (_findCachedDeserializer == null) {
            jsonDeserializer = _createAndCacheValueDeserializer(deserializationContext, deserializerFactory, javaType);
        }
        return jsonDeserializer != null;
    }

    final Object writeReplace() {
        this._incompleteDeserializers.clear();
        return this;
    }
}
