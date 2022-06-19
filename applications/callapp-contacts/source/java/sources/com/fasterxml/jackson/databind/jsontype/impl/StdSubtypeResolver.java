package com.fasterxml.jackson.databind.jsontype.impl;

import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.introspect.AnnotatedClass;
import com.fasterxml.jackson.databind.introspect.AnnotatedClassResolver;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.jsontype.NamedType;
import com.fasterxml.jackson.databind.jsontype.SubtypeResolver;
import java.io.Serializable;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver.class */
public class StdSubtypeResolver extends SubtypeResolver implements Serializable {
    private static final long serialVersionUID = 1;
    protected LinkedHashSet<NamedType> _registeredSubtypes;

    public StdSubtypeResolver() {
    }

    protected StdSubtypeResolver(StdSubtypeResolver stdSubtypeResolver) {
        LinkedHashSet<NamedType> linkedHashSet = stdSubtypeResolver._registeredSubtypes;
        this._registeredSubtypes = linkedHashSet == null ? null : new LinkedHashSet<>(linkedHashSet);
    }

    protected void _collectAndResolve(AnnotatedClass annotatedClass, NamedType namedType, MapperConfig<?> mapperConfig, AnnotationIntrospector annotationIntrospector, HashMap<NamedType, NamedType> hashMap) {
        NamedType namedType2 = namedType;
        if (!namedType.hasName()) {
            String findTypeName = annotationIntrospector.findTypeName(annotatedClass);
            namedType2 = namedType;
            if (findTypeName != null) {
                namedType2 = new NamedType(namedType.getType(), findTypeName);
            }
        }
        NamedType namedType3 = new NamedType(namedType2.getType());
        if (hashMap.containsKey(namedType3)) {
            if (!namedType2.hasName() || hashMap.get(namedType3).hasName()) {
                return;
            }
            hashMap.put(namedType3, namedType2);
            return;
        }
        hashMap.put(namedType3, namedType2);
        List<NamedType> findSubtypes = annotationIntrospector.findSubtypes(annotatedClass);
        if (findSubtypes == null || findSubtypes.isEmpty()) {
            return;
        }
        for (NamedType namedType4 : findSubtypes) {
            _collectAndResolve(AnnotatedClassResolver.resolveWithoutSuperTypes(mapperConfig, namedType4.getType()), namedType4, mapperConfig, annotationIntrospector, hashMap);
        }
    }

    protected void _collectAndResolveByTypeId(AnnotatedClass annotatedClass, NamedType namedType, MapperConfig<?> mapperConfig, Set<Class<?>> set, Map<String, NamedType> map) {
        List<NamedType> findSubtypes;
        AnnotationIntrospector annotationIntrospector = mapperConfig.getAnnotationIntrospector();
        NamedType namedType2 = namedType;
        if (!namedType.hasName()) {
            String findTypeName = annotationIntrospector.findTypeName(annotatedClass);
            namedType2 = namedType;
            if (findTypeName != null) {
                namedType2 = new NamedType(namedType.getType(), findTypeName);
            }
        }
        if (namedType2.hasName()) {
            map.put(namedType2.getName(), namedType2);
        }
        if (!set.add(namedType2.getType()) || (findSubtypes = annotationIntrospector.findSubtypes(annotatedClass)) == null || findSubtypes.isEmpty()) {
            return;
        }
        for (NamedType namedType3 : findSubtypes) {
            _collectAndResolveByTypeId(AnnotatedClassResolver.resolveWithoutSuperTypes(mapperConfig, namedType3.getType()), namedType3, mapperConfig, set, map);
        }
    }

    protected Collection<NamedType> _combineNamedAndUnnamed(Class<?> cls, Set<Class<?>> set, Map<String, NamedType> map) {
        ArrayList arrayList = new ArrayList(map.values());
        for (NamedType namedType : map.values()) {
            set.remove(namedType.getType());
        }
        for (Class<?> cls2 : set) {
            if (cls2 != cls || !Modifier.isAbstract(cls2.getModifiers())) {
                arrayList.add(new NamedType(cls2));
            }
        }
        return arrayList;
    }

    @Override // com.fasterxml.jackson.databind.jsontype.SubtypeResolver
    public Collection<NamedType> collectAndResolveSubtypesByClass(MapperConfig<?> mapperConfig, AnnotatedClass annotatedClass) {
        AnnotationIntrospector annotationIntrospector = mapperConfig.getAnnotationIntrospector();
        HashMap<NamedType, NamedType> hashMap = new HashMap<>();
        if (this._registeredSubtypes != null) {
            Class<?> rawType = annotatedClass.getRawType();
            Iterator<NamedType> it2 = this._registeredSubtypes.iterator();
            while (it2.hasNext()) {
                NamedType next = it2.next();
                if (rawType.isAssignableFrom(next.getType())) {
                    _collectAndResolve(AnnotatedClassResolver.resolveWithoutSuperTypes(mapperConfig, next.getType()), next, mapperConfig, annotationIntrospector, hashMap);
                }
            }
        }
        _collectAndResolve(annotatedClass, new NamedType(annotatedClass.getRawType(), null), mapperConfig, annotationIntrospector, hashMap);
        return new ArrayList(hashMap.values());
    }

    @Override // com.fasterxml.jackson.databind.jsontype.SubtypeResolver
    public Collection<NamedType> collectAndResolveSubtypesByClass(MapperConfig<?> mapperConfig, AnnotatedMember annotatedMember, JavaType javaType) {
        List<NamedType> findSubtypes;
        AnnotationIntrospector annotationIntrospector = mapperConfig.getAnnotationIntrospector();
        Class<?> rawType = javaType == null ? annotatedMember.getRawType() : javaType.getRawClass();
        HashMap<NamedType, NamedType> hashMap = new HashMap<>();
        LinkedHashSet<NamedType> linkedHashSet = this._registeredSubtypes;
        if (linkedHashSet != null) {
            Iterator<NamedType> it2 = linkedHashSet.iterator();
            while (it2.hasNext()) {
                NamedType next = it2.next();
                if (rawType.isAssignableFrom(next.getType())) {
                    _collectAndResolve(AnnotatedClassResolver.resolveWithoutSuperTypes(mapperConfig, next.getType()), next, mapperConfig, annotationIntrospector, hashMap);
                }
            }
        }
        if (annotatedMember != null && (findSubtypes = annotationIntrospector.findSubtypes(annotatedMember)) != null) {
            for (NamedType namedType : findSubtypes) {
                _collectAndResolve(AnnotatedClassResolver.resolveWithoutSuperTypes(mapperConfig, namedType.getType()), namedType, mapperConfig, annotationIntrospector, hashMap);
            }
        }
        _collectAndResolve(AnnotatedClassResolver.resolveWithoutSuperTypes(mapperConfig, rawType), new NamedType(rawType, null), mapperConfig, annotationIntrospector, hashMap);
        return new ArrayList(hashMap.values());
    }

    @Override // com.fasterxml.jackson.databind.jsontype.SubtypeResolver
    public Collection<NamedType> collectAndResolveSubtypesByTypeId(MapperConfig<?> mapperConfig, AnnotatedClass annotatedClass) {
        Class<?> rawType = annotatedClass.getRawType();
        HashSet hashSet = new HashSet();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        _collectAndResolveByTypeId(annotatedClass, new NamedType(rawType, null), mapperConfig, hashSet, linkedHashMap);
        LinkedHashSet<NamedType> linkedHashSet = this._registeredSubtypes;
        if (linkedHashSet != null) {
            Iterator<NamedType> it2 = linkedHashSet.iterator();
            while (it2.hasNext()) {
                NamedType next = it2.next();
                if (rawType.isAssignableFrom(next.getType())) {
                    _collectAndResolveByTypeId(AnnotatedClassResolver.resolveWithoutSuperTypes(mapperConfig, next.getType()), next, mapperConfig, hashSet, linkedHashMap);
                }
            }
        }
        return _combineNamedAndUnnamed(rawType, hashSet, linkedHashMap);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.SubtypeResolver
    public Collection<NamedType> collectAndResolveSubtypesByTypeId(MapperConfig<?> mapperConfig, AnnotatedMember annotatedMember, JavaType javaType) {
        List<NamedType> findSubtypes;
        AnnotationIntrospector annotationIntrospector = mapperConfig.getAnnotationIntrospector();
        Class<?> rawClass = javaType.getRawClass();
        HashSet hashSet = new HashSet();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        _collectAndResolveByTypeId(AnnotatedClassResolver.resolveWithoutSuperTypes(mapperConfig, rawClass), new NamedType(rawClass, null), mapperConfig, hashSet, linkedHashMap);
        if (annotatedMember != null && (findSubtypes = annotationIntrospector.findSubtypes(annotatedMember)) != null) {
            for (NamedType namedType : findSubtypes) {
                _collectAndResolveByTypeId(AnnotatedClassResolver.resolveWithoutSuperTypes(mapperConfig, namedType.getType()), namedType, mapperConfig, hashSet, linkedHashMap);
            }
        }
        LinkedHashSet<NamedType> linkedHashSet = this._registeredSubtypes;
        if (linkedHashSet != null) {
            Iterator<NamedType> it2 = linkedHashSet.iterator();
            while (it2.hasNext()) {
                NamedType next = it2.next();
                if (rawClass.isAssignableFrom(next.getType())) {
                    _collectAndResolveByTypeId(AnnotatedClassResolver.resolveWithoutSuperTypes(mapperConfig, next.getType()), next, mapperConfig, hashSet, linkedHashMap);
                }
            }
        }
        return _combineNamedAndUnnamed(rawClass, hashSet, linkedHashMap);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.SubtypeResolver
    public SubtypeResolver copy() {
        return new StdSubtypeResolver(this);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.SubtypeResolver
    public void registerSubtypes(Collection<Class<?>> collection) {
        NamedType[] namedTypeArr = new NamedType[collection.size()];
        int i = 0;
        for (Class<?> cls : collection) {
            namedTypeArr[i] = new NamedType(cls);
            i++;
        }
        registerSubtypes(namedTypeArr);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.SubtypeResolver
    public void registerSubtypes(NamedType... namedTypeArr) {
        if (this._registeredSubtypes == null) {
            this._registeredSubtypes = new LinkedHashSet<>();
        }
        for (NamedType namedType : namedTypeArr) {
            this._registeredSubtypes.add(namedType);
        }
    }

    @Override // com.fasterxml.jackson.databind.jsontype.SubtypeResolver
    public void registerSubtypes(Class<?>... clsArr) {
        NamedType[] namedTypeArr = new NamedType[clsArr.length];
        int length = clsArr.length;
        for (int i = 0; i < length; i++) {
            namedTypeArr[i] = new NamedType(clsArr[i]);
        }
        registerSubtypes(namedTypeArr);
    }
}
