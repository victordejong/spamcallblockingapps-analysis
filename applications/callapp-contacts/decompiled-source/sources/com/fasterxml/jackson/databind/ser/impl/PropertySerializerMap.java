package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/ser/impl/PropertySerializerMap.class */
public abstract class PropertySerializerMap {
    protected final boolean _resetWhenFull;

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Double.class */
    static final class Double extends PropertySerializerMap {
        private final JsonSerializer<Object> _serializer1;
        private final JsonSerializer<Object> _serializer2;
        private final Class<?> _type1;
        private final Class<?> _type2;

        public Double(PropertySerializerMap propertySerializerMap, Class<?> cls, JsonSerializer<Object> jsonSerializer, Class<?> cls2, JsonSerializer<Object> jsonSerializer2) {
            super(propertySerializerMap);
            this._type1 = cls;
            this._serializer1 = jsonSerializer;
            this._type2 = cls2;
            this._serializer2 = jsonSerializer2;
        }

        @Override // com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap
        public final PropertySerializerMap newWith(Class<?> cls, JsonSerializer<Object> jsonSerializer) {
            return new Multi(this, new TypeAndSerializer[]{new TypeAndSerializer(this._type1, this._serializer1), new TypeAndSerializer(this._type2, this._serializer2), new TypeAndSerializer(cls, jsonSerializer)});
        }

        @Override // com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap
        public final JsonSerializer<Object> serializerFor(Class<?> cls) {
            if (cls == this._type1) {
                return this._serializer1;
            }
            if (cls == this._type2) {
                return this._serializer2;
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Empty.class */
    public static final class Empty extends PropertySerializerMap {
        public static final Empty FOR_PROPERTIES = new Empty(false);
        public static final Empty FOR_ROOT_VALUES = new Empty(true);

        protected Empty(boolean z) {
            super(z);
        }

        @Override // com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap
        public final PropertySerializerMap newWith(Class<?> cls, JsonSerializer<Object> jsonSerializer) {
            return new Single(this, cls, jsonSerializer);
        }

        @Override // com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap
        public final JsonSerializer<Object> serializerFor(Class<?> cls) {
            return null;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Multi.class */
    static final class Multi extends PropertySerializerMap {
        private final TypeAndSerializer[] _entries;

        public Multi(PropertySerializerMap propertySerializerMap, TypeAndSerializer[] typeAndSerializerArr) {
            super(propertySerializerMap);
            this._entries = typeAndSerializerArr;
        }

        @Override // com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap
        public final PropertySerializerMap newWith(Class<?> cls, JsonSerializer<Object> jsonSerializer) {
            TypeAndSerializer[] typeAndSerializerArr = this._entries;
            int length = typeAndSerializerArr.length;
            if (length == 8) {
                return this._resetWhenFull ? new Single(this, cls, jsonSerializer) : this;
            }
            TypeAndSerializer[] typeAndSerializerArr2 = (TypeAndSerializer[]) Arrays.copyOf(typeAndSerializerArr, length + 1);
            typeAndSerializerArr2[length] = new TypeAndSerializer(cls, jsonSerializer);
            return new Multi(this, typeAndSerializerArr2);
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x0089  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x009d  */
        /* JADX WARN: Removed duplicated region for block: B:30:0x00b1  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x00c5  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x00ca A[ORIG_RETURN, RETURN] */
        @Override // com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final com.fasterxml.jackson.databind.JsonSerializer<java.lang.Object> serializerFor(java.lang.Class<?> r4) {
            /*
                Method dump skipped, instructions count: 204
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap.Multi.serializerFor(java.lang.Class):com.fasterxml.jackson.databind.JsonSerializer");
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult.class */
    public static final class SerializerAndMapResult {
        public final PropertySerializerMap map;
        public final JsonSerializer<Object> serializer;

        public SerializerAndMapResult(JsonSerializer<Object> jsonSerializer, PropertySerializerMap propertySerializerMap) {
            this.serializer = jsonSerializer;
            this.map = propertySerializerMap;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Single.class */
    static final class Single extends PropertySerializerMap {
        private final JsonSerializer<Object> _serializer;
        private final Class<?> _type;

        public Single(PropertySerializerMap propertySerializerMap, Class<?> cls, JsonSerializer<Object> jsonSerializer) {
            super(propertySerializerMap);
            this._type = cls;
            this._serializer = jsonSerializer;
        }

        @Override // com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap
        public final PropertySerializerMap newWith(Class<?> cls, JsonSerializer<Object> jsonSerializer) {
            return new Double(this, this._type, this._serializer, cls, jsonSerializer);
        }

        @Override // com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap
        public final JsonSerializer<Object> serializerFor(Class<?> cls) {
            if (cls == this._type) {
                return this._serializer;
            }
            return null;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$TypeAndSerializer.class */
    static final class TypeAndSerializer {
        public final JsonSerializer<Object> serializer;
        public final Class<?> type;

        public TypeAndSerializer(Class<?> cls, JsonSerializer<Object> jsonSerializer) {
            this.type = cls;
            this.serializer = jsonSerializer;
        }
    }

    protected PropertySerializerMap(PropertySerializerMap propertySerializerMap) {
        this._resetWhenFull = propertySerializerMap._resetWhenFull;
    }

    protected PropertySerializerMap(boolean z) {
        this._resetWhenFull = z;
    }

    public static PropertySerializerMap emptyForProperties() {
        return Empty.FOR_PROPERTIES;
    }

    public final SerializerAndMapResult addSerializer(JavaType javaType, JsonSerializer<Object> jsonSerializer) {
        return new SerializerAndMapResult(jsonSerializer, newWith(javaType.getRawClass(), jsonSerializer));
    }

    public final SerializerAndMapResult addSerializer(Class<?> cls, JsonSerializer<Object> jsonSerializer) {
        return new SerializerAndMapResult(jsonSerializer, newWith(cls, jsonSerializer));
    }

    public final SerializerAndMapResult findAndAddKeySerializer(Class<?> cls, SerializerProvider serializerProvider, BeanProperty beanProperty) throws JsonMappingException {
        JsonSerializer<Object> findKeySerializer = serializerProvider.findKeySerializer(cls, beanProperty);
        return new SerializerAndMapResult(findKeySerializer, newWith(cls, findKeySerializer));
    }

    public final SerializerAndMapResult findAndAddPrimarySerializer(JavaType javaType, SerializerProvider serializerProvider, BeanProperty beanProperty) throws JsonMappingException {
        JsonSerializer<Object> findPrimaryPropertySerializer = serializerProvider.findPrimaryPropertySerializer(javaType, beanProperty);
        return new SerializerAndMapResult(findPrimaryPropertySerializer, newWith(javaType.getRawClass(), findPrimaryPropertySerializer));
    }

    public final SerializerAndMapResult findAndAddPrimarySerializer(Class<?> cls, SerializerProvider serializerProvider, BeanProperty beanProperty) throws JsonMappingException {
        JsonSerializer<Object> findPrimaryPropertySerializer = serializerProvider.findPrimaryPropertySerializer(cls, beanProperty);
        return new SerializerAndMapResult(findPrimaryPropertySerializer, newWith(cls, findPrimaryPropertySerializer));
    }

    public final SerializerAndMapResult findAndAddSecondarySerializer(JavaType javaType, SerializerProvider serializerProvider, BeanProperty beanProperty) throws JsonMappingException {
        JsonSerializer<Object> findContentValueSerializer = serializerProvider.findContentValueSerializer(javaType, beanProperty);
        return new SerializerAndMapResult(findContentValueSerializer, newWith(javaType.getRawClass(), findContentValueSerializer));
    }

    public final SerializerAndMapResult findAndAddSecondarySerializer(Class<?> cls, SerializerProvider serializerProvider, BeanProperty beanProperty) throws JsonMappingException {
        JsonSerializer<Object> findContentValueSerializer = serializerProvider.findContentValueSerializer(cls, beanProperty);
        return new SerializerAndMapResult(findContentValueSerializer, newWith(cls, findContentValueSerializer));
    }

    public abstract PropertySerializerMap newWith(Class<?> cls, JsonSerializer<Object> jsonSerializer);

    public abstract JsonSerializer<Object> serializerFor(Class<?> cls);
}
