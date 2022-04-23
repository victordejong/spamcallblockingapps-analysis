package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.introspect.ClassIntrospector;
import com.fasterxml.jackson.databind.introspect.TypeResolutionContext;
import com.fasterxml.jackson.databind.type.TypeBindings;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.Annotations;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.Target;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/introspect/AnnotatedClass.class */
public final class AnnotatedClass extends Annotated implements TypeResolutionContext {
    public static final AnnotationMap[] NO_ANNOTATION_MAPS = new AnnotationMap[0];
    public final AnnotationIntrospector _annotationIntrospector;
    public final TypeBindings _bindings;
    public final Class<?> _class;
    public AnnotationMap _classAnnotations;
    public List<AnnotatedConstructor> _constructors;
    public List<AnnotatedMethod> _creatorMethods;
    public boolean _creatorsResolved = false;
    public AnnotatedConstructor _defaultConstructor;
    public List<AnnotatedField> _fields;
    public AnnotatedMethodMap _memberMethods;
    public final ClassIntrospector.MixInResolver _mixInResolver;
    public final Class<?> _primaryMixIn;
    public final List<JavaType> _superTypes;
    public final JavaType _type;
    public final TypeFactory _typeFactory;

    public AnnotatedClass(JavaType javaType, Class<?> cls, TypeBindings typeBindings, List<JavaType> list, AnnotationIntrospector annotationIntrospector, ClassIntrospector.MixInResolver mixInResolver, TypeFactory typeFactory, AnnotationMap annotationMap) {
        this._type = javaType;
        this._class = cls;
        this._bindings = typeBindings;
        this._superTypes = list;
        this._annotationIntrospector = annotationIntrospector;
        this._typeFactory = typeFactory;
        this._mixInResolver = mixInResolver;
        ClassIntrospector.MixInResolver mixInResolver2 = this._mixInResolver;
        this._primaryMixIn = mixInResolver2 == null ? null : mixInResolver2.findMixInClassFor(this._class);
        this._classAnnotations = annotationMap;
    }

    public static AnnotatedClass construct(JavaType javaType, MapperConfig<?> mapperConfig) {
        return new AnnotatedClass(javaType, javaType.getRawClass(), javaType.getBindings(), ClassUtil.findSuperTypes(javaType, null, false), mapperConfig.isAnnotationProcessingEnabled() ? mapperConfig.getAnnotationIntrospector() : null, mapperConfig, mapperConfig.getTypeFactory(), null);
    }

    public static AnnotatedClass construct(JavaType javaType, MapperConfig<?> mapperConfig, ClassIntrospector.MixInResolver mixInResolver) {
        return new AnnotatedClass(javaType, javaType.getRawClass(), javaType.getBindings(), ClassUtil.findSuperTypes(javaType, null, false), mapperConfig.isAnnotationProcessingEnabled() ? mapperConfig.getAnnotationIntrospector() : null, mixInResolver, mapperConfig.getTypeFactory(), null);
    }

    public static AnnotatedClass constructWithoutSuperTypes(Class<?> cls, MapperConfig<?> mapperConfig) {
        if (mapperConfig == null) {
            return new AnnotatedClass(null, cls, TypeBindings.emptyBindings(), Collections.emptyList(), null, null, null, null);
        }
        return new AnnotatedClass(null, cls, TypeBindings.emptyBindings(), Collections.emptyList(), mapperConfig.isAnnotationProcessingEnabled() ? mapperConfig.getAnnotationIntrospector() : null, mapperConfig, mapperConfig.getTypeFactory(), null);
    }

    public final AnnotationMap _addAnnotationsIfNotPresent(AnnotationMap annotationMap, Annotation[] annotationArr) {
        if (annotationArr != null) {
            List<Annotation> list = null;
            for (Annotation annotation : annotationArr) {
                list = list;
                if (annotationMap.addIfNotPresent(annotation)) {
                    list = list;
                    if (_isAnnotationBundle(annotation)) {
                        list = _addFromBundle(annotation, list);
                    }
                }
            }
            if (list != null) {
                _addAnnotationsIfNotPresent(annotationMap, (Annotation[]) list.toArray(new Annotation[list.size()]));
            }
        }
        return annotationMap;
    }

    public final void _addAnnotationsIfNotPresent(AnnotatedMember annotatedMember, Annotation[] annotationArr) {
        if (annotationArr != null) {
            List<Annotation> list = null;
            for (Annotation annotation : annotationArr) {
                list = list;
                if (annotatedMember.addIfNotPresent(annotation)) {
                    list = list;
                    if (_isAnnotationBundle(annotation)) {
                        list = _addFromBundle(annotation, list);
                    }
                }
            }
            if (list != null) {
                _addAnnotationsIfNotPresent(annotatedMember, (Annotation[]) list.toArray(new Annotation[list.size()]));
            }
        }
    }

    public void _addClassMixIns(AnnotationMap annotationMap, JavaType javaType) {
        if (this._mixInResolver != null) {
            Class<?> rawClass = javaType.getRawClass();
            _addClassMixIns(annotationMap, rawClass, this._mixInResolver.findMixInClassFor(rawClass));
        }
    }

    public void _addClassMixIns(AnnotationMap annotationMap, Class<?> cls) {
        ClassIntrospector.MixInResolver mixInResolver = this._mixInResolver;
        if (mixInResolver != null) {
            _addClassMixIns(annotationMap, cls, mixInResolver.findMixInClassFor(cls));
        }
    }

    public void _addClassMixIns(AnnotationMap annotationMap, Class<?> cls, Class<?> cls2) {
        if (cls2 != null) {
            _addAnnotationsIfNotPresent(annotationMap, ClassUtil.findClassAnnotations(cls2));
            for (Class<?> cls3 : ClassUtil.findSuperClasses(cls2, cls, false)) {
                _addAnnotationsIfNotPresent(annotationMap, ClassUtil.findClassAnnotations(cls3));
            }
        }
    }

    public void _addConstructorMixIns(Class<?> cls) {
        List<AnnotatedConstructor> list = this._constructors;
        int size = list == null ? 0 : list.size();
        MemberKey[] memberKeyArr = null;
        for (ClassUtil.Ctor ctor : ClassUtil.getConstructors(cls)) {
            Constructor<?> constructor = ctor.getConstructor();
            if (constructor.getParameterTypes().length != 0) {
                MemberKey[] memberKeyArr2 = memberKeyArr;
                if (memberKeyArr == null) {
                    MemberKey[] memberKeyArr3 = new MemberKey[size];
                    int i = 0;
                    while (true) {
                        memberKeyArr2 = memberKeyArr3;
                        if (i >= size) {
                            break;
                        }
                        memberKeyArr3[i] = new MemberKey(this._constructors.get(i).getAnnotated());
                        i++;
                    }
                }
                MemberKey memberKey = new MemberKey(constructor);
                int i2 = 0;
                while (true) {
                    memberKeyArr = memberKeyArr2;
                    if (i2 >= size) {
                        break;
                    }
                    if (memberKey.equals(memberKeyArr2[i2])) {
                        _addMixOvers(constructor, this._constructors.get(i2), true);
                        memberKeyArr = memberKeyArr2;
                        break;
                    }
                    i2++;
                }
            } else {
                AnnotatedConstructor annotatedConstructor = this._defaultConstructor;
                memberKeyArr = memberKeyArr;
                if (annotatedConstructor != null) {
                    _addMixOvers(constructor, annotatedConstructor, false);
                    memberKeyArr = memberKeyArr;
                }
            }
        }
    }

    public void _addFactoryMixIns(Class<?> cls) {
        Method[] declaredMethods;
        int size = this._creatorMethods.size();
        MemberKey[] memberKeyArr = null;
        for (Method method : ClassUtil.getDeclaredMethods(cls)) {
            if (Modifier.isStatic(method.getModifiers()) && method.getParameterTypes().length != 0) {
                MemberKey[] memberKeyArr2 = memberKeyArr;
                if (memberKeyArr == null) {
                    MemberKey[] memberKeyArr3 = new MemberKey[size];
                    int i = 0;
                    while (true) {
                        memberKeyArr2 = memberKeyArr3;
                        if (i >= size) {
                            break;
                        }
                        memberKeyArr3[i] = new MemberKey(this._creatorMethods.get(i).getAnnotated());
                        i++;
                    }
                }
                MemberKey memberKey = new MemberKey(method);
                int i2 = 0;
                while (true) {
                    memberKeyArr = memberKeyArr2;
                    if (i2 >= size) {
                        break;
                    }
                    if (memberKey.equals(memberKeyArr2[i2])) {
                        _addMixOvers(method, this._creatorMethods.get(i2), true);
                        memberKeyArr = memberKeyArr2;
                        break;
                    }
                    i2++;
                }
            }
        }
    }

    public void _addFieldMixIns(Class<?> cls, Class<?> cls2, Map<String, AnnotatedField> map) {
        Field[] declaredFields;
        AnnotatedField annotatedField;
        for (Class<?> cls3 : ClassUtil.findSuperClasses(cls, cls2, true)) {
            for (Field field : ClassUtil.getDeclaredFields(cls3)) {
                if (_isIncludableField(field) && (annotatedField = map.get(field.getName())) != null) {
                    _addOrOverrideAnnotations(annotatedField, field.getDeclaredAnnotations());
                }
            }
        }
    }

    public final List<Annotation> _addFromBundle(Annotation annotation, List<Annotation> list) {
        Annotation[] findClassAnnotations;
        for (Annotation annotation2 : ClassUtil.findClassAnnotations(annotation.annotationType())) {
            list = list;
            if (!(annotation2 instanceof Target)) {
                if (annotation2 instanceof Retention) {
                    list = list;
                } else {
                    list = list;
                    if (list == null) {
                        list = new ArrayList<>();
                    }
                    list.add(annotation2);
                }
            }
        }
        return list;
    }

    public void _addMemberMethods(Class<?> cls, TypeResolutionContext typeResolutionContext, AnnotatedMethodMap annotatedMethodMap, Class<?> cls2, AnnotatedMethodMap annotatedMethodMap2) {
        Method[] _findClassMethods;
        if (cls2 != null) {
            _addMethodMixIns(cls, annotatedMethodMap, cls2, annotatedMethodMap2);
        }
        if (cls != null) {
            for (Method method : _findClassMethods(cls)) {
                if (_isIncludableMemberMethod(method)) {
                    AnnotatedMethod find = annotatedMethodMap.find(method);
                    if (find == null) {
                        AnnotatedMethod _constructMethod = _constructMethod(method, typeResolutionContext);
                        annotatedMethodMap.add(_constructMethod);
                        AnnotatedMethod remove = annotatedMethodMap2.remove(method);
                        if (remove != null) {
                            _addMixOvers(remove.getAnnotated(), _constructMethod, false);
                        }
                    } else {
                        _addMixUnders(method, find);
                        if (find.getDeclaringClass().isInterface() && !method.getDeclaringClass().isInterface()) {
                            annotatedMethodMap.add(find.withMethod(method));
                        }
                    }
                }
            }
        }
    }

    public void _addMethodMixIns(Class<?> cls, AnnotatedMethodMap annotatedMethodMap, Class<?> cls2, AnnotatedMethodMap annotatedMethodMap2) {
        Method[] declaredMethods;
        for (Class<?> cls3 : ClassUtil.findRawSuperTypes(cls2, cls, true)) {
            for (Method method : ClassUtil.getDeclaredMethods(cls3)) {
                if (_isIncludableMemberMethod(method)) {
                    AnnotatedMethod find = annotatedMethodMap.find(method);
                    if (find != null) {
                        _addMixUnders(method, find);
                    } else {
                        AnnotatedMethod find2 = annotatedMethodMap2.find(method);
                        if (find2 != null) {
                            _addMixUnders(method, find2);
                        } else {
                            annotatedMethodMap2.add(_constructMethod(method, this));
                        }
                    }
                }
            }
        }
    }

    public void _addMixOvers(Constructor<?> constructor, AnnotatedConstructor annotatedConstructor, boolean z) {
        _addOrOverrideAnnotations(annotatedConstructor, constructor.getDeclaredAnnotations());
        if (z) {
            Annotation[][] parameterAnnotations = constructor.getParameterAnnotations();
            int length = parameterAnnotations.length;
            for (int i = 0; i < length; i++) {
                for (Annotation annotation : parameterAnnotations[i]) {
                    annotatedConstructor.addOrOverrideParam(i, annotation);
                }
            }
        }
    }

    public void _addMixOvers(Method method, AnnotatedMethod annotatedMethod, boolean z) {
        _addOrOverrideAnnotations(annotatedMethod, method.getDeclaredAnnotations());
        if (z) {
            Annotation[][] parameterAnnotations = method.getParameterAnnotations();
            int length = parameterAnnotations.length;
            for (int i = 0; i < length; i++) {
                for (Annotation annotation : parameterAnnotations[i]) {
                    annotatedMethod.addOrOverrideParam(i, annotation);
                }
            }
        }
    }

    public void _addMixUnders(Method method, AnnotatedMethod annotatedMethod) {
        _addAnnotationsIfNotPresent(annotatedMethod, method.getDeclaredAnnotations());
    }

    public final void _addOrOverrideAnnotations(AnnotatedMember annotatedMember, Annotation[] annotationArr) {
        if (annotationArr != null) {
            List<Annotation> list = null;
            for (Annotation annotation : annotationArr) {
                list = list;
                if (annotatedMember.addOrOverride(annotation)) {
                    list = list;
                    if (_isAnnotationBundle(annotation)) {
                        list = _addFromBundle(annotation, list);
                    }
                }
            }
            if (list != null) {
                _addOrOverrideAnnotations(annotatedMember, (Annotation[]) list.toArray(new Annotation[list.size()]));
            }
        }
    }

    public final AnnotationMap _classAnnotations() {
        AnnotationMap annotationMap = this._classAnnotations;
        AnnotationMap annotationMap2 = annotationMap;
        if (annotationMap == null) {
            synchronized (this) {
                AnnotationMap annotationMap3 = this._classAnnotations;
                annotationMap2 = annotationMap3;
                if (annotationMap3 == null) {
                    annotationMap2 = _resolveClassAnnotations();
                    this._classAnnotations = annotationMap2;
                }
            }
        }
        return annotationMap2;
    }

    public AnnotationMap _collectRelevantAnnotations(Annotation[] annotationArr) {
        AnnotationMap annotationMap = new AnnotationMap();
        _addAnnotationsIfNotPresent(annotationMap, annotationArr);
        return annotationMap;
    }

    public AnnotationMap[] _collectRelevantAnnotations(Annotation[][] annotationArr) {
        int length = annotationArr.length;
        AnnotationMap[] annotationMapArr = new AnnotationMap[length];
        for (int i = 0; i < length; i++) {
            annotationMapArr[i] = _collectRelevantAnnotations(annotationArr[i]);
        }
        return annotationMapArr;
    }

    public AnnotatedMethod _constructCreatorMethod(Method method, TypeResolutionContext typeResolutionContext) {
        int length = method.getParameterTypes().length;
        return this._annotationIntrospector == null ? new AnnotatedMethod(typeResolutionContext, method, _emptyAnnotationMap(), _emptyAnnotationMaps(length)) : length == 0 ? new AnnotatedMethod(typeResolutionContext, method, _collectRelevantAnnotations(method.getDeclaredAnnotations()), NO_ANNOTATION_MAPS) : new AnnotatedMethod(typeResolutionContext, method, _collectRelevantAnnotations(method.getDeclaredAnnotations()), _collectRelevantAnnotations(method.getParameterAnnotations()));
    }

    public AnnotatedConstructor _constructDefaultConstructor(ClassUtil.Ctor ctor, TypeResolutionContext typeResolutionContext) {
        return this._annotationIntrospector == null ? new AnnotatedConstructor(typeResolutionContext, ctor.getConstructor(), _emptyAnnotationMap(), NO_ANNOTATION_MAPS) : new AnnotatedConstructor(typeResolutionContext, ctor.getConstructor(), _collectRelevantAnnotations(ctor.getDeclaredAnnotations()), NO_ANNOTATION_MAPS);
    }

    public AnnotatedField _constructField(Field field, TypeResolutionContext typeResolutionContext) {
        return this._annotationIntrospector == null ? new AnnotatedField(typeResolutionContext, field, _emptyAnnotationMap()) : new AnnotatedField(typeResolutionContext, field, _collectRelevantAnnotations(field.getDeclaredAnnotations()));
    }

    public AnnotatedMethod _constructMethod(Method method, TypeResolutionContext typeResolutionContext) {
        return this._annotationIntrospector == null ? new AnnotatedMethod(typeResolutionContext, method, _emptyAnnotationMap(), null) : new AnnotatedMethod(typeResolutionContext, method, _collectRelevantAnnotations(method.getDeclaredAnnotations()), null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v3, types: [java.lang.annotation.Annotation[], java.lang.annotation.Annotation[][], java.lang.Object] */
    /* JADX WARN: Type inference failed for: r13v4, types: [java.lang.annotation.Annotation[], java.lang.annotation.Annotation[][], java.lang.Object] */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.fasterxml.jackson.databind.introspect.AnnotatedConstructor _constructNonDefaultConstructor(com.fasterxml.jackson.databind.util.ClassUtil.Ctor r9, com.fasterxml.jackson.databind.introspect.TypeResolutionContext r10) {
        /*
            Method dump skipped, instructions count: 305
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.introspect.AnnotatedClass._constructNonDefaultConstructor(com.fasterxml.jackson.databind.util.ClassUtil$Ctor, com.fasterxml.jackson.databind.introspect.TypeResolutionContext):com.fasterxml.jackson.databind.introspect.AnnotatedConstructor");
    }

    public final AnnotationMap _emptyAnnotationMap() {
        return new AnnotationMap();
    }

    public final AnnotationMap[] _emptyAnnotationMaps(int i) {
        if (i == 0) {
            return NO_ANNOTATION_MAPS;
        }
        AnnotationMap[] annotationMapArr = new AnnotationMap[i];
        for (int i2 = 0; i2 < i; i2++) {
            annotationMapArr[i2] = _emptyAnnotationMap();
        }
        return annotationMapArr;
    }

    public Method[] _findClassMethods(Class<?> cls) {
        try {
            return ClassUtil.getDeclaredMethods(cls);
        } catch (NoClassDefFoundError e) {
            ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
            if (contextClassLoader != null) {
                try {
                    return contextClassLoader.loadClass(cls.getName()).getDeclaredMethods();
                } catch (ClassNotFoundException e2) {
                    throw e;
                }
            } else {
                throw e;
            }
        }
    }

    public Map<String, AnnotatedField> _findFields(JavaType javaType, TypeResolutionContext typeResolutionContext, Map<String, AnnotatedField> map) {
        Field[] declaredFields;
        JavaType superClass = javaType.getSuperClass();
        Map<String, AnnotatedField> map2 = map;
        if (superClass != null) {
            Class<?> rawClass = javaType.getRawClass();
            Map<String, AnnotatedField> _findFields = _findFields(superClass, new TypeResolutionContext.Basic(this._typeFactory, superClass.getBindings()), map);
            for (Field field : ClassUtil.getDeclaredFields(rawClass)) {
                if (_isIncludableField(field)) {
                    Map<String, AnnotatedField> map3 = _findFields;
                    if (_findFields == null) {
                        map3 = new LinkedHashMap<>();
                    }
                    map3.put(field.getName(), _constructField(field, typeResolutionContext));
                    _findFields = map3;
                }
            }
            ClassIntrospector.MixInResolver mixInResolver = this._mixInResolver;
            map2 = _findFields;
            if (mixInResolver != null) {
                Class<?> findMixInClassFor = mixInResolver.findMixInClassFor(rawClass);
                map2 = _findFields;
                if (findMixInClassFor != null) {
                    _addFieldMixIns(findMixInClassFor, rawClass, _findFields);
                    map2 = _findFields;
                }
            }
        }
        return map2;
    }

    public final boolean _isAnnotationBundle(Annotation annotation) {
        AnnotationIntrospector annotationIntrospector = this._annotationIntrospector;
        return annotationIntrospector != null && annotationIntrospector.isAnnotationBundle(annotation);
    }

    public final boolean _isIncludableConstructor(Constructor<?> constructor) {
        return !constructor.isSynthetic();
    }

    public final boolean _isIncludableField(Field field) {
        return !field.isSynthetic() && !Modifier.isStatic(field.getModifiers());
    }

    public boolean _isIncludableMemberMethod(Method method) {
        if (Modifier.isStatic(method.getModifiers())) {
            return false;
        }
        boolean z = false;
        if (!method.isSynthetic()) {
            if (method.isBridge()) {
                z = false;
            } else {
                z = false;
                if (method.getParameterTypes().length <= 2) {
                    z = true;
                }
            }
        }
        return z;
    }

    public final AnnotationMap _resolveClassAnnotations() {
        AnnotationMap annotationMap = new AnnotationMap();
        if (this._annotationIntrospector != null) {
            Class<?> cls = this._primaryMixIn;
            if (cls != null) {
                _addClassMixIns(annotationMap, this._class, cls);
            }
            _addAnnotationsIfNotPresent(annotationMap, ClassUtil.findClassAnnotations(this._class));
            for (JavaType javaType : this._superTypes) {
                _addClassMixIns(annotationMap, javaType);
                _addAnnotationsIfNotPresent(annotationMap, ClassUtil.findClassAnnotations(javaType.getRawClass()));
            }
            _addClassMixIns(annotationMap, Object.class);
        }
        return annotationMap;
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != AnnotatedClass.class) {
            return false;
        }
        if (((AnnotatedClass) obj)._class != this._class) {
            z = false;
        }
        return z;
    }

    public Iterable<AnnotatedField> fields() {
        if (this._fields == null) {
            resolveFields();
        }
        return this._fields;
    }

    public AnnotatedMethod findMethod(String str, Class<?>[] clsArr) {
        if (this._memberMethods == null) {
            resolveMemberMethods();
        }
        return this._memberMethods.find(str, clsArr);
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public Class<?> getAnnotated() {
        return this._class;
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public <A extends Annotation> A getAnnotation(Class<A> cls) {
        return (A) _classAnnotations().get(cls);
    }

    public Annotations getAnnotations() {
        return _classAnnotations();
    }

    public List<AnnotatedConstructor> getConstructors() {
        if (!this._creatorsResolved) {
            resolveCreators();
        }
        return this._constructors;
    }

    public AnnotatedConstructor getDefaultConstructor() {
        if (!this._creatorsResolved) {
            resolveCreators();
        }
        return this._defaultConstructor;
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public String getName() {
        return this._class.getName();
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public Class<?> getRawType() {
        return this._class;
    }

    public List<AnnotatedMethod> getStaticMethods() {
        if (!this._creatorsResolved) {
            resolveCreators();
        }
        return this._creatorMethods;
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public boolean hasAnnotation(Class<?> cls) {
        return _classAnnotations().has(cls);
    }

    public boolean hasAnnotations() {
        return _classAnnotations().size() > 0;
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public boolean hasOneOf(Class<? extends Annotation>[] clsArr) {
        return _classAnnotations().hasOneOf(clsArr);
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public int hashCode() {
        return this._class.getName().hashCode();
    }

    public Iterable<AnnotatedMethod> memberMethods() {
        if (this._memberMethods == null) {
            resolveMemberMethods();
        }
        return this._memberMethods;
    }

    public final void resolveCreators() {
        Method[] _findClassMethods;
        ClassUtil.Ctor[] constructors = ClassUtil.getConstructors(this._class);
        ArrayList arrayList = null;
        ArrayList arrayList2 = null;
        for (ClassUtil.Ctor ctor : constructors) {
            arrayList2 = arrayList2;
            if (_isIncludableConstructor(ctor.getConstructor())) {
                if (ctor.getParamCount() == 0) {
                    this._defaultConstructor = _constructDefaultConstructor(ctor, this);
                    arrayList2 = arrayList2;
                } else {
                    arrayList2 = arrayList2;
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList(Math.max(10, constructors.length));
                    }
                    arrayList2.add(_constructNonDefaultConstructor(ctor, this));
                }
            }
        }
        if (arrayList2 == null) {
            this._constructors = Collections.emptyList();
        } else {
            this._constructors = arrayList2;
        }
        if (this._primaryMixIn != null && (this._defaultConstructor != null || !this._constructors.isEmpty())) {
            _addConstructorMixIns(this._primaryMixIn);
        }
        AnnotationIntrospector annotationIntrospector = this._annotationIntrospector;
        if (annotationIntrospector != null) {
            AnnotatedConstructor annotatedConstructor = this._defaultConstructor;
            if (annotatedConstructor != null && annotationIntrospector.hasIgnoreMarker(annotatedConstructor)) {
                this._defaultConstructor = null;
            }
            List<AnnotatedConstructor> list = this._constructors;
            if (list != null) {
                int size = list.size();
                while (true) {
                    int i = size - 1;
                    if (i < 0) {
                        break;
                    }
                    size = i;
                    if (this._annotationIntrospector.hasIgnoreMarker(this._constructors.get(i))) {
                        this._constructors.remove(i);
                        size = i;
                    }
                }
            }
        }
        for (Method method : _findClassMethods(this._class)) {
            if (!Modifier.isStatic(method.getModifiers())) {
                arrayList = arrayList;
            } else {
                arrayList = arrayList;
                if (arrayList == null) {
                    arrayList = new ArrayList(8);
                }
                arrayList.add(_constructCreatorMethod(method, this));
            }
        }
        if (arrayList == null) {
            this._creatorMethods = Collections.emptyList();
        } else {
            this._creatorMethods = arrayList;
            Class<?> cls = this._primaryMixIn;
            if (cls != null) {
                _addFactoryMixIns(cls);
            }
            if (this._annotationIntrospector != null) {
                int size2 = this._creatorMethods.size();
                while (true) {
                    int i2 = size2 - 1;
                    if (i2 < 0) {
                        break;
                    }
                    size2 = i2;
                    if (this._annotationIntrospector.hasIgnoreMarker(this._creatorMethods.get(i2))) {
                        this._creatorMethods.remove(i2);
                        size2 = i2;
                    }
                }
            }
        }
        this._creatorsResolved = true;
    }

    public final void resolveFields() {
        Map<String, AnnotatedField> _findFields = _findFields(this._type, this, null);
        if (_findFields == null || _findFields.size() == 0) {
            this._fields = Collections.emptyList();
            return;
        }
        this._fields = new ArrayList(_findFields.size());
        this._fields.addAll(_findFields.values());
    }

    public final void resolveMemberMethods() {
        Class<?> findMixInClassFor;
        this._memberMethods = new AnnotatedMethodMap();
        AnnotatedMethodMap annotatedMethodMap = new AnnotatedMethodMap();
        _addMemberMethods(this._class, this, this._memberMethods, this._primaryMixIn, annotatedMethodMap);
        for (JavaType javaType : this._superTypes) {
            ClassIntrospector.MixInResolver mixInResolver = this._mixInResolver;
            _addMemberMethods(javaType.getRawClass(), new TypeResolutionContext.Basic(this._typeFactory, javaType.getBindings()), this._memberMethods, mixInResolver == null ? null : mixInResolver.findMixInClassFor(javaType.getRawClass()), annotatedMethodMap);
        }
        ClassIntrospector.MixInResolver mixInResolver2 = this._mixInResolver;
        if (!(mixInResolver2 == null || (findMixInClassFor = mixInResolver2.findMixInClassFor(Object.class)) == null)) {
            _addMethodMixIns(this._class, this._memberMethods, findMixInClassFor, annotatedMethodMap);
        }
        if (!(this._annotationIntrospector == null || annotatedMethodMap.isEmpty())) {
            Iterator<AnnotatedMethod> it = annotatedMethodMap.iterator();
            while (it.hasNext()) {
                AnnotatedMethod next = it.next();
                try {
                    Method declaredMethod = Object.class.getDeclaredMethod(next.getName(), next.getRawParameterTypes());
                    if (declaredMethod != null) {
                        AnnotatedMethod _constructMethod = _constructMethod(declaredMethod, this);
                        _addMixOvers(next.getAnnotated(), _constructMethod, false);
                        this._memberMethods.add(_constructMethod);
                    }
                } catch (Exception e) {
                }
            }
        }
    }

    @Override // com.fasterxml.jackson.databind.introspect.TypeResolutionContext
    public JavaType resolveType(Type type) {
        return this._typeFactory.constructType(type, this._bindings);
    }

    public String toString() {
        return "[AnnotedClass " + this._class.getName() + "]";
    }
}
