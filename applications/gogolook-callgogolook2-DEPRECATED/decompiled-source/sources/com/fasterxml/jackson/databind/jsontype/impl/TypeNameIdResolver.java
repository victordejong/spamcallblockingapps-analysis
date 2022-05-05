package com.fasterxml.jackson.databind.jsontype.impl;

import com.fasterxml.jackson.databind.DatabindContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.jsontype.NamedType;
import java.util.Collection;
import java.util.HashMap;
import java.util.TreeSet;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/jsontype/impl/TypeNameIdResolver.class */
public class TypeNameIdResolver extends TypeIdResolverBase {
    public final MapperConfig<?> _config;
    public final HashMap<String, JavaType> _idToType;
    public final HashMap<String, String> _typeToId;

    public TypeNameIdResolver(MapperConfig<?> mapperConfig, JavaType javaType, HashMap<String, String> hashMap, HashMap<String, JavaType> hashMap2) {
        super(javaType, mapperConfig.getTypeFactory());
        this._config = mapperConfig;
        this._typeToId = hashMap;
        this._idToType = hashMap2;
    }

    public static String _defaultTypeId(Class<?> cls) {
        String name = cls.getName();
        int lastIndexOf = name.lastIndexOf(46);
        if (lastIndexOf >= 0) {
            name = name.substring(lastIndexOf + 1);
        }
        return name;
    }

    public static TypeNameIdResolver construct(MapperConfig<?> mapperConfig, JavaType javaType, Collection<NamedType> collection, boolean z, boolean z2) {
        JavaType javaType2;
        if (z != z2) {
            HashMap hashMap = null;
            HashMap hashMap2 = z ? new HashMap() : null;
            if (z2) {
                hashMap = new HashMap();
            }
            if (collection != null) {
                for (NamedType namedType : collection) {
                    Class<?> type = namedType.getType();
                    String name = namedType.hasName() ? namedType.getName() : _defaultTypeId(type);
                    if (z) {
                        hashMap2.put(type.getName(), name);
                    }
                    if (z2 && ((javaType2 = (JavaType) hashMap.get(name)) == null || !type.isAssignableFrom(javaType2.getRawClass()))) {
                        hashMap.put(name, mapperConfig.constructType(type));
                    }
                }
            }
            return new TypeNameIdResolver(mapperConfig, javaType, hashMap2, hashMap);
        }
        throw new IllegalArgumentException();
    }

    public JavaType _typeFromId(String str) {
        return this._idToType.get(str);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.impl.TypeIdResolverBase
    public String getDescForKnownTypeIds() {
        return new TreeSet(this._idToType.keySet()).toString();
    }

    public String idFromClass(Class<?> cls) {
        String str;
        if (cls == null) {
            return null;
        }
        Class<?> rawClass = this._typeFactory.constructType(cls).getRawClass();
        String name = rawClass.getName();
        synchronized (this._typeToId) {
            String str2 = this._typeToId.get(name);
            str = str2;
            if (str2 == null) {
                if (this._config.isAnnotationProcessingEnabled()) {
                    str2 = this._config.getAnnotationIntrospector().findTypeName(this._config.introspectClassAnnotations(rawClass).getClassInfo());
                }
                str = str2;
                if (str2 == null) {
                    str = _defaultTypeId(rawClass);
                }
                this._typeToId.put(name, str);
            }
        }
        return str;
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeIdResolver
    public String idFromValue(Object obj) {
        return idFromClass(obj.getClass());
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeIdResolver
    public String idFromValueAndType(Object obj, Class<?> cls) {
        return obj == null ? idFromClass(cls) : idFromValue(obj);
    }

    public String toString() {
        return '[' + TypeNameIdResolver.class.getName() + "; id-to-type=" + this._idToType + ']';
    }

    @Override // com.fasterxml.jackson.databind.jsontype.impl.TypeIdResolverBase, com.fasterxml.jackson.databind.jsontype.TypeIdResolver
    public JavaType typeFromId(DatabindContext databindContext, String str) {
        return _typeFromId(str);
    }
}
