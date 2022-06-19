package com.fasterxml.jackson.databind.jsontype.impl;

import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.databind.DatabindContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.jsontype.NamedType;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/jsontype/impl/TypeNameIdResolver.class */
public class TypeNameIdResolver extends TypeIdResolverBase {
    protected final boolean _caseInsensitive;
    protected final MapperConfig<?> _config;
    protected final Map<String, JavaType> _idToType;
    protected final ConcurrentHashMap<String, String> _typeToId;

    protected TypeNameIdResolver(MapperConfig<?> mapperConfig, JavaType javaType, ConcurrentHashMap<String, String> concurrentHashMap, HashMap<String, JavaType> hashMap) {
        super(javaType, mapperConfig.getTypeFactory());
        this._config = mapperConfig;
        this._typeToId = concurrentHashMap;
        this._idToType = hashMap;
        this._caseInsensitive = mapperConfig.isEnabled(MapperFeature.ACCEPT_CASE_INSENSITIVE_VALUES);
    }

    protected static String _defaultTypeId(Class<?> cls) {
        String name = cls.getName();
        int lastIndexOf = name.lastIndexOf(46);
        return lastIndexOf < 0 ? name : name.substring(lastIndexOf + 1);
    }

    public static TypeNameIdResolver construct(MapperConfig<?> mapperConfig, JavaType javaType, Collection<NamedType> collection, boolean z, boolean z2) {
        HashMap hashMap;
        ConcurrentHashMap concurrentHashMap;
        if (z != z2) {
            if (z) {
                concurrentHashMap = new ConcurrentHashMap();
                hashMap = null;
            } else {
                hashMap = new HashMap();
                concurrentHashMap = new ConcurrentHashMap(4);
            }
            boolean isEnabled = mapperConfig.isEnabled(MapperFeature.ACCEPT_CASE_INSENSITIVE_VALUES);
            if (collection != null) {
                for (NamedType namedType : collection) {
                    Class<?> type = namedType.getType();
                    String name = namedType.hasName() ? namedType.getName() : _defaultTypeId(type);
                    if (z) {
                        concurrentHashMap.put(type.getName(), name);
                    }
                    if (z2) {
                        String str = name;
                        if (isEnabled) {
                            str = name.toLowerCase();
                        }
                        JavaType javaType2 = (JavaType) hashMap.get(str);
                        if (javaType2 == null || !type.isAssignableFrom(javaType2.getRawClass())) {
                            hashMap.put(str, mapperConfig.constructType(type));
                        }
                    }
                }
            }
            return new TypeNameIdResolver(mapperConfig, javaType, concurrentHashMap, hashMap);
        }
        throw new IllegalArgumentException();
    }

    protected JavaType _typeFromId(String str) {
        String str2 = str;
        if (this._caseInsensitive) {
            str2 = str.toLowerCase();
        }
        return this._idToType.get(str2);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.impl.TypeIdResolverBase, com.fasterxml.jackson.databind.jsontype.TypeIdResolver
    public String getDescForKnownTypeIds() {
        TreeSet treeSet = new TreeSet();
        for (Map.Entry<String, JavaType> entry : this._idToType.entrySet()) {
            if (entry.getValue().isConcrete()) {
                treeSet.add(entry.getKey());
            }
        }
        return treeSet.toString();
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeIdResolver
    public JsonTypeInfo.EnumC10518Id getMechanism() {
        return JsonTypeInfo.EnumC10518Id.NAME;
    }

    protected String idFromClass(Class<?> cls) {
        if (cls == null) {
            return null;
        }
        String name = cls.getName();
        String str = this._typeToId.get(name);
        String str2 = str;
        if (str == null) {
            Class<?> rawClass = this._typeFactory.constructType(cls).getRawClass();
            if (this._config.isAnnotationProcessingEnabled()) {
                str = this._config.getAnnotationIntrospector().findTypeName(this._config.introspectClassAnnotations(rawClass).getClassInfo());
            }
            String str3 = str;
            if (str == null) {
                str3 = _defaultTypeId(rawClass);
            }
            this._typeToId.put(name, str3);
            str2 = str3;
        }
        return str2;
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
        return String.format("[%s; id-to-type=%s]", getClass().getName(), this._idToType);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.impl.TypeIdResolverBase, com.fasterxml.jackson.databind.jsontype.TypeIdResolver
    public JavaType typeFromId(DatabindContext databindContext, String str) {
        return _typeFromId(str);
    }
}
