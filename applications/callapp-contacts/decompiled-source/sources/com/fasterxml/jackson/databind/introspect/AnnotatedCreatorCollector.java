package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.introspect.AnnotatedClass;
import com.fasterxml.jackson.databind.introspect.TypeResolutionContext;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.lang.annotation.Annotation;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector.class */
public final class AnnotatedCreatorCollector extends CollectorBase {
    private final boolean _collectAnnotations;
    private AnnotatedConstructor _defaultConstructor;
    private final TypeResolutionContext _typeContext;

    AnnotatedCreatorCollector(AnnotationIntrospector annotationIntrospector, TypeResolutionContext typeResolutionContext, boolean z) {
        super(annotationIntrospector);
        this._typeContext = typeResolutionContext;
        this._collectAnnotations = z;
    }

    private List<AnnotatedConstructor> _findPotentialConstructors(JavaType javaType, Class<?> cls) {
        ArrayList arrayList;
        ClassUtil.Ctor ctor;
        int i;
        List<AnnotatedConstructor> list;
        if (!javaType.isEnumType()) {
            ClassUtil.Ctor[] constructors = ClassUtil.getConstructors(javaType.getRawClass());
            int length = constructors.length;
            ClassUtil.Ctor ctor2 = null;
            ArrayList arrayList2 = null;
            int i2 = 0;
            while (true) {
                ctor = ctor2;
                arrayList = arrayList2;
                if (i2 >= length) {
                    break;
                }
                ClassUtil.Ctor ctor3 = constructors[i2];
                ctor2 = ctor2;
                arrayList2 = arrayList2;
                if (isIncludableConstructor(ctor3.getConstructor())) {
                    if (ctor3.getParamCount() == 0) {
                        ctor2 = ctor3;
                        arrayList2 = arrayList2;
                    } else {
                        arrayList2 = arrayList2;
                        if (arrayList2 == null) {
                            arrayList2 = new ArrayList();
                        }
                        arrayList2.add(ctor3);
                        ctor2 = ctor2;
                    }
                }
                i2++;
            }
        } else {
            ctor = null;
            arrayList = null;
        }
        if (arrayList == null) {
            list = Collections.emptyList();
            if (ctor == null) {
                return list;
            }
            i = 0;
        } else {
            int size = arrayList.size();
            list = new ArrayList<>(size);
            for (int i3 = 0; i3 < size; i3++) {
                list.add(null);
            }
            i = size;
        }
        ClassUtil.Ctor ctor4 = ctor;
        if (cls != null) {
            ClassUtil.Ctor[] constructors2 = ClassUtil.getConstructors(cls);
            int length2 = constructors2.length;
            MemberKey[] memberKeyArr = null;
            int i4 = 0;
            while (true) {
                ctor4 = ctor;
                if (i4 >= length2) {
                    break;
                }
                ClassUtil.Ctor ctor5 = constructors2[i4];
                if (ctor5.getParamCount() == 0) {
                    ctor = ctor;
                    memberKeyArr = memberKeyArr;
                    if (ctor != null) {
                        this._defaultConstructor = constructDefaultConstructor(ctor, ctor5);
                        ctor = null;
                        memberKeyArr = memberKeyArr;
                    }
                } else {
                    ctor = ctor;
                    memberKeyArr = memberKeyArr;
                    if (arrayList != null) {
                        MemberKey[] memberKeyArr2 = memberKeyArr;
                        if (memberKeyArr == null) {
                            MemberKey[] memberKeyArr3 = new MemberKey[i];
                            int i5 = 0;
                            while (true) {
                                memberKeyArr2 = memberKeyArr3;
                                if (i5 >= i) {
                                    break;
                                }
                                memberKeyArr3[i5] = new MemberKey(((ClassUtil.Ctor) arrayList.get(i5)).getConstructor());
                                i5++;
                            }
                        }
                        MemberKey memberKey = new MemberKey(ctor5.getConstructor());
                        int i6 = 0;
                        while (true) {
                            ctor = ctor;
                            memberKeyArr = memberKeyArr2;
                            if (i6 >= i) {
                                break;
                            } else if (memberKey.equals(memberKeyArr2[i6])) {
                                list.set(i6, constructNonDefaultConstructor((ClassUtil.Ctor) arrayList.get(i6), ctor5));
                                ctor = ctor;
                                memberKeyArr = memberKeyArr2;
                                break;
                            } else {
                                i6++;
                            }
                        }
                    }
                }
                i4++;
            }
        }
        int i7 = 0;
        if (ctor4 != null) {
            this._defaultConstructor = constructDefaultConstructor(ctor4, null);
            i7 = 0;
        }
        while (i7 < i) {
            if (list.get(i7) == null) {
                list.set(i7, constructNonDefaultConstructor((ClassUtil.Ctor) arrayList.get(i7), null));
            }
            i7++;
        }
        return list;
    }

    private List<AnnotatedMethod> _findPotentialFactories(TypeFactory typeFactory, JavaType javaType, Class<?> cls) {
        Method[] classMethods;
        ArrayList arrayList = null;
        for (Method method : ClassUtil.getClassMethods(javaType.getRawClass())) {
            arrayList = arrayList;
            if (_isIncludableFactoryMethod(method)) {
                arrayList = arrayList;
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(method);
            }
        }
        if (arrayList == null) {
            return Collections.emptyList();
        }
        TypeResolutionContext.Empty empty = new TypeResolutionContext.Empty(typeFactory);
        int size = arrayList.size();
        ArrayList arrayList2 = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            arrayList2.add(null);
        }
        int i2 = 0;
        if (cls != null) {
            Method[] declaredMethods = cls.getDeclaredMethods();
            int length = declaredMethods.length;
            MemberKey[] memberKeyArr = null;
            int i3 = 0;
            while (true) {
                i2 = 0;
                if (i3 >= length) {
                    break;
                }
                Method method2 = declaredMethods[i3];
                memberKeyArr = memberKeyArr;
                if (_isIncludableFactoryMethod(method2)) {
                    MemberKey[] memberKeyArr2 = memberKeyArr;
                    if (memberKeyArr == null) {
                        MemberKey[] memberKeyArr3 = new MemberKey[size];
                        int i4 = 0;
                        while (true) {
                            memberKeyArr2 = memberKeyArr3;
                            if (i4 >= size) {
                                break;
                            }
                            memberKeyArr3[i4] = new MemberKey((Method) arrayList.get(i4));
                            i4++;
                        }
                    }
                    MemberKey memberKey = new MemberKey(method2);
                    int i5 = 0;
                    while (true) {
                        memberKeyArr = memberKeyArr2;
                        if (i5 >= size) {
                            break;
                        } else if (memberKey.equals(memberKeyArr2[i5])) {
                            arrayList2.set(i5, constructFactoryCreator((Method) arrayList.get(i5), empty, method2));
                            memberKeyArr = memberKeyArr2;
                            break;
                        } else {
                            i5++;
                        }
                    }
                }
                i3++;
            }
        }
        while (i2 < size) {
            if (((AnnotatedMethod) arrayList2.get(i2)) == null) {
                Method method3 = (Method) arrayList.get(i2);
                arrayList2.set(i2, constructFactoryCreator(method3, MethodGenericTypeResolver.narrowMethodTypeParameters(method3, javaType, typeFactory, empty), null));
            }
            i2++;
        }
        return arrayList2;
    }

    private static boolean _isIncludableFactoryMethod(Method method) {
        return Modifier.isStatic(method.getModifiers()) && !method.isSynthetic();
    }

    private AnnotationMap collectAnnotations(ClassUtil.Ctor ctor, ClassUtil.Ctor ctor2) {
        if (!this._collectAnnotations) {
            return _emptyAnnotationMap();
        }
        AnnotationCollector collectAnnotations = collectAnnotations(ctor.getDeclaredAnnotations());
        AnnotationCollector annotationCollector = collectAnnotations;
        if (ctor2 != null) {
            annotationCollector = collectAnnotations(collectAnnotations, ctor2.getDeclaredAnnotations());
        }
        return annotationCollector.asAnnotationMap();
    }

    private final AnnotationMap collectAnnotations(AnnotatedElement annotatedElement, AnnotatedElement annotatedElement2) {
        AnnotationCollector collectAnnotations = collectAnnotations(annotatedElement.getDeclaredAnnotations());
        AnnotationCollector annotationCollector = collectAnnotations;
        if (annotatedElement2 != null) {
            annotationCollector = collectAnnotations(collectAnnotations, annotatedElement2.getDeclaredAnnotations());
        }
        return annotationCollector.asAnnotationMap();
    }

    private AnnotationMap[] collectAnnotations(Annotation[][] annotationArr, Annotation[][] annotationArr2) {
        if (!this._collectAnnotations) {
            return NO_ANNOTATION_MAPS;
        }
        int length = annotationArr.length;
        AnnotationMap[] annotationMapArr = new AnnotationMap[length];
        for (int i = 0; i < length; i++) {
            AnnotationCollector collectAnnotations = collectAnnotations(AnnotationCollector.emptyCollector(), annotationArr[i]);
            AnnotationCollector annotationCollector = collectAnnotations;
            if (annotationArr2 != null) {
                annotationCollector = collectAnnotations(collectAnnotations, annotationArr2[i]);
            }
            annotationMapArr[i] = annotationCollector.asAnnotationMap();
        }
        return annotationMapArr;
    }

    public static AnnotatedClass.Creators collectCreators(AnnotationIntrospector annotationIntrospector, TypeFactory typeFactory, TypeResolutionContext typeResolutionContext, JavaType javaType, Class<?> cls, boolean z) {
        return new AnnotatedCreatorCollector(annotationIntrospector, typeResolutionContext, z | (cls != null)).collect(typeFactory, javaType, cls);
    }

    private static boolean isIncludableConstructor(Constructor<?> constructor) {
        return !constructor.isSynthetic();
    }

    final AnnotatedClass.Creators collect(TypeFactory typeFactory, JavaType javaType, Class<?> cls) {
        List<AnnotatedConstructor> _findPotentialConstructors = _findPotentialConstructors(javaType, cls);
        List<AnnotatedMethod> _findPotentialFactories = _findPotentialFactories(typeFactory, javaType, cls);
        if (this._collectAnnotations) {
            if (this._defaultConstructor != null && this._intr.hasIgnoreMarker(this._defaultConstructor)) {
                this._defaultConstructor = null;
            }
            int size = _findPotentialConstructors.size();
            while (true) {
                int i = size - 1;
                if (i < 0) {
                    break;
                }
                size = i;
                if (this._intr.hasIgnoreMarker(_findPotentialConstructors.get(i))) {
                    _findPotentialConstructors.remove(i);
                    size = i;
                }
            }
            int size2 = _findPotentialFactories.size();
            while (true) {
                int i2 = size2 - 1;
                if (i2 < 0) {
                    break;
                }
                size2 = i2;
                if (this._intr.hasIgnoreMarker(_findPotentialFactories.get(i2))) {
                    _findPotentialFactories.remove(i2);
                    size2 = i2;
                }
            }
        }
        return new AnnotatedClass.Creators(this._defaultConstructor, _findPotentialConstructors, _findPotentialFactories);
    }

    protected final AnnotatedConstructor constructDefaultConstructor(ClassUtil.Ctor ctor, ClassUtil.Ctor ctor2) {
        return new AnnotatedConstructor(this._typeContext, ctor.getConstructor(), collectAnnotations(ctor, ctor2), NO_ANNOTATION_MAPS);
    }

    protected final AnnotatedMethod constructFactoryCreator(Method method, TypeResolutionContext typeResolutionContext, Method method2) {
        int length = method.getParameterTypes().length;
        if (this._intr == null) {
            return new AnnotatedMethod(typeResolutionContext, method, _emptyAnnotationMap(), _emptyAnnotationMaps(length));
        }
        if (length == 0) {
            return new AnnotatedMethod(typeResolutionContext, method, collectAnnotations(method, method2), NO_ANNOTATION_MAPS);
        }
        return new AnnotatedMethod(typeResolutionContext, method, collectAnnotations(method, method2), collectAnnotations(method.getParameterAnnotations(), method2 == null ? null : method2.getParameterAnnotations()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r17v3, types: [java.lang.annotation.Annotation[], java.lang.annotation.Annotation[][], java.lang.Object] */
    /* JADX WARN: Type inference failed for: r17v4, types: [java.lang.annotation.Annotation[], java.lang.annotation.Annotation[][], java.lang.Object] */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final com.fasterxml.jackson.databind.introspect.AnnotatedConstructor constructNonDefaultConstructor(com.fasterxml.jackson.databind.util.ClassUtil.Ctor r9, com.fasterxml.jackson.databind.util.ClassUtil.Ctor r10) {
        /*
            Method dump skipped, instructions count: 317
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.introspect.AnnotatedCreatorCollector.constructNonDefaultConstructor(com.fasterxml.jackson.databind.util.ClassUtil$Ctor, com.fasterxml.jackson.databind.util.ClassUtil$Ctor):com.fasterxml.jackson.databind.introspect.AnnotatedConstructor");
    }
}
