package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.annotation.ObjectIdResolver;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.InjectableValues;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.KeyDeserializer;
import com.fasterxml.jackson.databind.cfg.HandlerInstantiator;
import com.fasterxml.jackson.databind.deser.impl.ReadableObjectId;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/DefaultDeserializationContext.class */
public abstract class DefaultDeserializationContext extends DeserializationContext implements Serializable {
    private List<ObjectIdResolver> _objectIdResolvers;
    protected transient LinkedHashMap<ObjectIdGenerator.IdKey, ReadableObjectId> _objectIds;

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/DefaultDeserializationContext$Impl.class */
    public static final class Impl extends DefaultDeserializationContext {
        private Impl(Impl impl) {
            super(impl);
        }

        private Impl(Impl impl, DeserializationConfig deserializationConfig) {
            super(impl, deserializationConfig);
        }

        private Impl(Impl impl, DeserializationConfig deserializationConfig, JsonParser jsonParser, InjectableValues injectableValues) {
            super(impl, deserializationConfig, jsonParser, injectableValues);
        }

        private Impl(Impl impl, DeserializerFactory deserializerFactory) {
            super(impl, deserializerFactory);
        }

        public Impl(DeserializerFactory deserializerFactory) {
            super(deserializerFactory, (DeserializerCache) null);
        }

        @Override // com.fasterxml.jackson.databind.deser.DefaultDeserializationContext
        public final DefaultDeserializationContext copy() {
            ClassUtil.verifyMustOverride(Impl.class, this, "copy");
            return new Impl(this);
        }

        @Override // com.fasterxml.jackson.databind.deser.DefaultDeserializationContext
        public final DefaultDeserializationContext createDummyInstance(DeserializationConfig deserializationConfig) {
            return new Impl(this, deserializationConfig);
        }

        @Override // com.fasterxml.jackson.databind.deser.DefaultDeserializationContext
        public final DefaultDeserializationContext createInstance(DeserializationConfig deserializationConfig, JsonParser jsonParser, InjectableValues injectableValues) {
            return new Impl(this, deserializationConfig, jsonParser, injectableValues);
        }
    }

    protected DefaultDeserializationContext(DefaultDeserializationContext defaultDeserializationContext) {
        super(defaultDeserializationContext);
    }

    protected DefaultDeserializationContext(DefaultDeserializationContext defaultDeserializationContext, DeserializationConfig deserializationConfig) {
        super(defaultDeserializationContext, deserializationConfig);
    }

    protected DefaultDeserializationContext(DefaultDeserializationContext defaultDeserializationContext, DeserializationConfig deserializationConfig, JsonParser jsonParser, InjectableValues injectableValues) {
        super(defaultDeserializationContext, deserializationConfig, jsonParser, injectableValues);
    }

    protected DefaultDeserializationContext(DefaultDeserializationContext defaultDeserializationContext, DeserializerFactory deserializerFactory) {
        super(defaultDeserializationContext, deserializerFactory);
    }

    protected DefaultDeserializationContext(DeserializerFactory deserializerFactory, DeserializerCache deserializerCache) {
        super(deserializerFactory, deserializerCache);
    }

    protected Object _unwrapAndDeserialize(JsonParser jsonParser, JavaType javaType, JsonDeserializer<Object> jsonDeserializer, Object obj) throws IOException {
        String simpleName = this._config.findRootName(javaType).getSimpleName();
        if (jsonParser.currentToken() != JsonToken.START_OBJECT) {
            reportWrongTokenException(javaType, JsonToken.START_OBJECT, "Current token not START_OBJECT (needed to unwrap root name %s), but %s", ClassUtil.name(simpleName), jsonParser.currentToken());
        }
        if (jsonParser.nextToken() != JsonToken.FIELD_NAME) {
            reportWrongTokenException(javaType, JsonToken.FIELD_NAME, "Current token not FIELD_NAME (to contain expected root name %s), but %s", ClassUtil.name(simpleName), jsonParser.currentToken());
        }
        String currentName = jsonParser.currentName();
        if (!simpleName.equals(currentName)) {
            reportPropertyInputMismatch(javaType, currentName, "Root name (%s) does not match expected (%s) for type %s", ClassUtil.name(currentName), ClassUtil.name(simpleName), ClassUtil.getTypeDescription(javaType));
        }
        jsonParser.nextToken();
        Object deserialize = obj == null ? jsonDeserializer.deserialize(jsonParser, this) : jsonDeserializer.deserialize(jsonParser, this, obj);
        if (jsonParser.nextToken() != JsonToken.END_OBJECT) {
            reportWrongTokenException(javaType, JsonToken.END_OBJECT, "Current token not END_OBJECT (to match wrapper object with root name %s), but %s", ClassUtil.name(simpleName), jsonParser.currentToken());
        }
        return deserialize;
    }

    public void checkUnresolvedObjectId() throws UnresolvedForwardReference {
        if (this._objectIds != null && isEnabled(DeserializationFeature.FAIL_ON_UNRESOLVED_OBJECT_IDS)) {
            UnresolvedForwardReference unresolvedForwardReference = null;
            for (Map.Entry<ObjectIdGenerator.IdKey, ReadableObjectId> entry : this._objectIds.entrySet()) {
                ReadableObjectId value = entry.getValue();
                if (value.hasReferringProperties() && !tryToResolveUnresolvedObjectId(value)) {
                    UnresolvedForwardReference unresolvedForwardReference2 = unresolvedForwardReference;
                    if (unresolvedForwardReference == null) {
                        unresolvedForwardReference2 = new UnresolvedForwardReference(getParser(), "Unresolved forward references for: ");
                    }
                    Object obj = value.getKey().key;
                    Iterator<ReadableObjectId.Referring> referringProperties = value.referringProperties();
                    while (true) {
                        unresolvedForwardReference = unresolvedForwardReference2;
                        if (referringProperties.hasNext()) {
                            ReadableObjectId.Referring next = referringProperties.next();
                            unresolvedForwardReference2.addUnresolvedId(obj, next.getBeanType(), next.getLocation());
                        }
                    }
                }
            }
            if (unresolvedForwardReference != null) {
                throw unresolvedForwardReference;
            }
        }
    }

    public DefaultDeserializationContext copy() {
        throw new IllegalStateException("DefaultDeserializationContext sub-class not overriding copy()");
    }

    public abstract DefaultDeserializationContext createDummyInstance(DeserializationConfig deserializationConfig);

    public abstract DefaultDeserializationContext createInstance(DeserializationConfig deserializationConfig, JsonParser jsonParser, InjectableValues injectableValues);

    protected ReadableObjectId createReadableObjectId(ObjectIdGenerator.IdKey idKey) {
        return new ReadableObjectId(idKey);
    }

    @Override // com.fasterxml.jackson.databind.DeserializationContext
    public JsonDeserializer<Object> deserializerInstance(Annotated annotated, Object obj) throws JsonMappingException {
        JsonDeserializer<?> jsonDeserializer = null;
        if (obj == null) {
            return null;
        }
        if (obj instanceof JsonDeserializer) {
            jsonDeserializer = (JsonDeserializer) obj;
        } else if (obj instanceof Class) {
            Class<?> cls = (Class) obj;
            if (cls == JsonDeserializer.None.class || ClassUtil.isBogusClass(cls)) {
                return null;
            }
            if (JsonDeserializer.class.isAssignableFrom(cls)) {
                HandlerInstantiator handlerInstantiator = this._config.getHandlerInstantiator();
                if (handlerInstantiator != null) {
                    jsonDeserializer = handlerInstantiator.deserializerInstance(this._config, annotated, cls);
                }
                if (jsonDeserializer == null) {
                    jsonDeserializer = (JsonDeserializer) ClassUtil.createInstance(cls, this._config.canOverrideAccessModifiers());
                }
            } else {
                throw new IllegalStateException("AnnotationIntrospector returned Class " + cls.getName() + "; expected Class<JsonDeserializer>");
            }
        } else {
            throw new IllegalStateException("AnnotationIntrospector returned deserializer definition of type " + obj.getClass().getName() + "; expected type JsonDeserializer or Class<JsonDeserializer> instead");
        }
        if (jsonDeserializer instanceof ResolvableDeserializer) {
            ((ResolvableDeserializer) jsonDeserializer).resolve(this);
        }
        return jsonDeserializer;
    }

    @Override // com.fasterxml.jackson.databind.DeserializationContext
    public ReadableObjectId findObjectId(Object obj, ObjectIdGenerator<?> objectIdGenerator, ObjectIdResolver objectIdResolver) {
        ObjectIdResolver objectIdResolver2;
        if (obj == null) {
            return null;
        }
        ObjectIdGenerator.IdKey key = objectIdGenerator.key(obj);
        LinkedHashMap<ObjectIdGenerator.IdKey, ReadableObjectId> linkedHashMap = this._objectIds;
        if (linkedHashMap == null) {
            this._objectIds = new LinkedHashMap<>();
        } else {
            ReadableObjectId readableObjectId = linkedHashMap.get(key);
            if (readableObjectId != null) {
                return readableObjectId;
            }
        }
        List<ObjectIdResolver> list = this._objectIdResolvers;
        if (list != null) {
            Iterator<ObjectIdResolver> it2 = list.iterator();
            do {
                objectIdResolver2 = null;
                if (!it2.hasNext()) {
                    break;
                }
                objectIdResolver2 = it2.next();
            } while (!objectIdResolver2.canUseFor(objectIdResolver));
        } else {
            this._objectIdResolvers = new ArrayList(8);
            objectIdResolver2 = null;
        }
        ObjectIdResolver objectIdResolver3 = objectIdResolver2;
        if (objectIdResolver2 == null) {
            objectIdResolver3 = objectIdResolver.newForDeserialization(this);
            this._objectIdResolvers.add(objectIdResolver3);
        }
        ReadableObjectId createReadableObjectId = createReadableObjectId(key);
        createReadableObjectId.setResolver(objectIdResolver3);
        this._objectIds.put(key, createReadableObjectId);
        return createReadableObjectId;
    }

    @Override // com.fasterxml.jackson.databind.DeserializationContext
    public final KeyDeserializer keyDeserializerInstance(Annotated annotated, Object obj) throws JsonMappingException {
        KeyDeserializer keyDeserializer = null;
        if (obj == null) {
            return null;
        }
        if (obj instanceof KeyDeserializer) {
            keyDeserializer = (KeyDeserializer) obj;
        } else if (obj instanceof Class) {
            Class<?> cls = (Class) obj;
            if (cls == KeyDeserializer.None.class || ClassUtil.isBogusClass(cls)) {
                return null;
            }
            if (KeyDeserializer.class.isAssignableFrom(cls)) {
                HandlerInstantiator handlerInstantiator = this._config.getHandlerInstantiator();
                if (handlerInstantiator != null) {
                    keyDeserializer = handlerInstantiator.keyDeserializerInstance(this._config, annotated, cls);
                }
                if (keyDeserializer == null) {
                    keyDeserializer = (KeyDeserializer) ClassUtil.createInstance(cls, this._config.canOverrideAccessModifiers());
                }
            } else {
                throw new IllegalStateException("AnnotationIntrospector returned Class " + cls.getName() + "; expected Class<KeyDeserializer>");
            }
        } else {
            throw new IllegalStateException("AnnotationIntrospector returned key deserializer definition of type " + obj.getClass().getName() + "; expected type KeyDeserializer or Class<KeyDeserializer> instead");
        }
        if (keyDeserializer instanceof ResolvableDeserializer) {
            ((ResolvableDeserializer) keyDeserializer).resolve(this);
        }
        return keyDeserializer;
    }

    public Object readRootValue(JsonParser jsonParser, JavaType javaType, JsonDeserializer<Object> jsonDeserializer, Object obj) throws IOException {
        return this._config.useRootWrapping() ? _unwrapAndDeserialize(jsonParser, javaType, jsonDeserializer, obj) : obj == null ? jsonDeserializer.deserialize(jsonParser, this) : jsonDeserializer.deserialize(jsonParser, this, obj);
    }

    protected boolean tryToResolveUnresolvedObjectId(ReadableObjectId readableObjectId) {
        return readableObjectId.tryToResolveUnresolved(this);
    }
}
