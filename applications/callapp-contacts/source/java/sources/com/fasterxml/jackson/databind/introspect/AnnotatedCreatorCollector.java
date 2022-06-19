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
        ArrayList arrayList2;
        MemberKey[] memberKeyArr;
        ClassUtil.Ctor ctor2;
        if (!javaType.isEnumType()) {
            ClassUtil.Ctor[] constructors = ClassUtil.getConstructors(javaType.getRawClass());
            int length = constructors.length;
            ClassUtil.Ctor ctor3 = null;
            ArrayList arrayList3 = null;
            int i2 = 0;
            while (true) {
                ctor = ctor3;
                arrayList = arrayList3;
                if (i2 >= length) {
                    break;
                }
                ClassUtil.Ctor ctor4 = constructors[i2];
                ClassUtil.Ctor ctor5 = ctor3;
                ArrayList arrayList4 = arrayList3;
                if (isIncludableConstructor(ctor4.getConstructor())) {
                    if (ctor4.getParamCount() == 0) {
                        ctor5 = ctor4;
                        arrayList4 = arrayList3;
                    } else {
                        arrayList4 = arrayList3;
                        if (arrayList3 == null) {
                            arrayList4 = new ArrayList();
                        }
                        arrayList4.add(ctor4);
                        ctor5 = ctor3;
                    }
                }
                i2++;
                ctor3 = ctor5;
                arrayList3 = arrayList4;
            }
        } else {
            ctor = null;
            arrayList = null;
        }
        if (arrayList == null) {
            arrayList2 = Collections.emptyList();
            if (ctor == null) {
                return arrayList2;
            }
            i = 0;
        } else {
            int size = arrayList.size();
            arrayList2 = new ArrayList(size);
            for (int i3 = 0; i3 < size; i3++) {
                arrayList2.add(null);
            }
            i = size;
        }
        ClassUtil.Ctor ctor6 = ctor;
        if (cls != null) {
            ClassUtil.Ctor[] constructors2 = ClassUtil.getConstructors(cls);
            int length2 = constructors2.length;
            MemberKey[] memberKeyArr2 = null;
            int i4 = 0;
            while (true) {
                ctor6 = ctor;
                if (i4 >= length2) {
                    break;
                }
                ClassUtil.Ctor ctor7 = constructors2[i4];
                if (ctor7.getParamCount() == 0) {
                    ctor2 = ctor;
                    memberKeyArr = memberKeyArr2;
                    if (ctor != null) {
                        this._defaultConstructor = constructDefaultConstructor(ctor, ctor7);
                        ctor2 = null;
                        memberKeyArr = memberKeyArr2;
                    }
                } else {
                    ctor2 = ctor;
                    memberKeyArr = memberKeyArr2;
                    if (arrayList != null) {
                        MemberKey[] memberKeyArr3 = memberKeyArr2;
                        if (memberKeyArr2 == null) {
                            MemberKey[] memberKeyArr4 = new MemberKey[i];
                            int i5 = 0;
                            while (true) {
                                memberKeyArr3 = memberKeyArr4;
                                if (i5 >= i) {
                                    break;
                                }
                                memberKeyArr4[i5] = new MemberKey(((ClassUtil.Ctor) arrayList.get(i5)).getConstructor());
                                i5++;
                            }
                        }
                        MemberKey memberKey = new MemberKey(ctor7.getConstructor());
                        int i6 = 0;
                        while (true) {
                            ctor2 = ctor;
                            memberKeyArr = memberKeyArr3;
                            if (i6 >= i) {
                                break;
                            } else if (memberKey.equals(memberKeyArr3[i6])) {
                                arrayList2.set(i6, constructNonDefaultConstructor((ClassUtil.Ctor) arrayList.get(i6), ctor7));
                                ctor2 = ctor;
                                memberKeyArr = memberKeyArr3;
                                break;
                            } else {
                                i6++;
                            }
                        }
                    }
                }
                i4++;
                ctor = ctor2;
                memberKeyArr2 = memberKeyArr;
            }
        }
        int i7 = 0;
        if (ctor6 != null) {
            this._defaultConstructor = constructDefaultConstructor(ctor6, null);
            i7 = 0;
        }
        while (i7 < i) {
            if (arrayList2.get(i7) == null) {
                arrayList2.set(i7, constructNonDefaultConstructor((ClassUtil.Ctor) arrayList.get(i7), null));
            }
            i7++;
        }
        return arrayList2;
    }

    private List<AnnotatedMethod> _findPotentialFactories(TypeFactory typeFactory, JavaType javaType, Class<?> cls) {
        Method[] classMethods = ClassUtil.getClassMethods(javaType.getRawClass());
        int length = classMethods.length;
        ArrayList arrayList = null;
        int i = 0;
        while (i < length) {
            Method method = classMethods[i];
            ArrayList arrayList2 = arrayList;
            if (_isIncludableFactoryMethod(method)) {
                arrayList2 = arrayList;
                if (arrayList == null) {
                    arrayList2 = new ArrayList();
                }
                arrayList2.add(method);
            }
            i++;
            arrayList = arrayList2;
        }
        if (arrayList == null) {
            return Collections.emptyList();
        }
        TypeResolutionContext.Empty empty = new TypeResolutionContext.Empty(typeFactory);
        int size = arrayList.size();
        ArrayList arrayList3 = new ArrayList(size);
        for (int i2 = 0; i2 < size; i2++) {
            arrayList3.add(null);
        }
        int i3 = 0;
        if (cls != null) {
            Method[] declaredMethods = cls.getDeclaredMethods();
            int length2 = declaredMethods.length;
            MemberKey[] memberKeyArr = null;
            int i4 = 0;
            while (true) {
                i3 = 0;
                if (i4 >= length2) {
                    break;
                }
                Method method2 = declaredMethods[i4];
                MemberKey[] memberKeyArr2 = memberKeyArr;
                if (_isIncludableFactoryMethod(method2)) {
                    MemberKey[] memberKeyArr3 = memberKeyArr;
                    if (memberKeyArr == null) {
                        MemberKey[] memberKeyArr4 = new MemberKey[size];
                        int i5 = 0;
                        while (true) {
                            memberKeyArr3 = memberKeyArr4;
                            if (i5 >= size) {
                                break;
                            }
                            memberKeyArr4[i5] = new MemberKey((Method) arrayList.get(i5));
                            i5++;
                        }
                    }
                    MemberKey memberKey = new MemberKey(method2);
                    int i6 = 0;
                    while (true) {
                        memberKeyArr2 = memberKeyArr3;
                        if (i6 >= size) {
                            break;
                        } else if (memberKey.equals(memberKeyArr3[i6])) {
                            arrayList3.set(i6, constructFactoryCreator((Method) arrayList.get(i6), empty, method2));
                            memberKeyArr2 = memberKeyArr3;
                            break;
                        } else {
                            i6++;
                        }
                    }
                }
                i4++;
                memberKeyArr = memberKeyArr2;
            }
        }
        while (i3 < size) {
            if (((AnnotatedMethod) arrayList3.get(i3)) == null) {
                Method method3 = (Method) arrayList.get(i3);
                arrayList3.set(i3, constructFactoryCreator(method3, MethodGenericTypeResolver.narrowMethodTypeParameters(method3, javaType, typeFactory, empty), null));
            }
            i3++;
        }
        return arrayList3;
    }

    private static boolean _isIncludableFactoryMethod(Method method) {
        return Modifier.isStatic(method.getModifiers()) && !method.isSynthetic();
    }

    private AnnotationMap collectAnnotations(ClassUtil.Ctor ctor, ClassUtil.Ctor ctor2) {
        if (this._collectAnnotations) {
            AnnotationCollector collectAnnotations = collectAnnotations(ctor.getDeclaredAnnotations());
            AnnotationCollector annotationCollector = collectAnnotations;
            if (ctor2 != null) {
                annotationCollector = collectAnnotations(collectAnnotations, ctor2.getDeclaredAnnotations());
            }
            return annotationCollector.asAnnotationMap();
        }
        return _emptyAnnotationMap();
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
        if (this._collectAnnotations) {
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
        return NO_ANNOTATION_MAPS;
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
    /* JADX WARN: Type inference failed for: r0v34, types: [java.lang.annotation.Annotation[]] */
    /* JADX WARN: Type inference failed for: r0v43, types: [java.lang.annotation.Annotation[]] */
    protected final AnnotatedConstructor constructNonDefaultConstructor(ClassUtil.Ctor ctor, ClassUtil.Ctor ctor2) {
        AnnotationMap[] annotationMapArr;
        Annotation[][] annotationArr;
        int paramCount = ctor.getParamCount();
        if (this._intr == null) {
            return new AnnotatedConstructor(this._typeContext, ctor.getConstructor(), _emptyAnnotationMap(), _emptyAnnotationMaps(paramCount));
        }
        if (paramCount == 0) {
            return new AnnotatedConstructor(this._typeContext, ctor.getConstructor(), collectAnnotations(ctor, ctor2), NO_ANNOTATION_MAPS);
        }
        Annotation[][] parameterAnnotations = ctor.getParameterAnnotations();
        Annotation[][] annotationArr2 = null;
        if (paramCount != parameterAnnotations.length) {
            Class<?> declaringClass = ctor.getDeclaringClass();
            if (!ClassUtil.isEnumType(declaringClass) || paramCount != parameterAnnotations.length + 2) {
                annotationArr = parameterAnnotations;
                annotationMapArr = null;
                if (declaringClass.isMemberClass()) {
                    annotationArr = parameterAnnotations;
                    annotationMapArr = null;
                    if (paramCount == parameterAnnotations.length + 1) {
                        annotationArr = new Annotation[parameterAnnotations.length + 1];
                        System.arraycopy(parameterAnnotations, 0, annotationArr, 1, parameterAnnotations.length);
                        annotationArr[0] = NO_ANNOTATIONS;
                        annotationMapArr = collectAnnotations(annotationArr, (Annotation[][]) null);
                    }
                }
            } else {
                annotationArr = new Annotation[parameterAnnotations.length + 2];
                System.arraycopy(parameterAnnotations, 0, annotationArr, 2, parameterAnnotations.length);
                annotationMapArr = collectAnnotations(annotationArr, (Annotation[][]) null);
            }
            if (annotationMapArr == null) {
                throw new IllegalStateException(String.format("Internal error: constructor for %s has mismatch: %d parameters; %d sets of annotations", ctor.getDeclaringClass().getName(), Integer.valueOf(paramCount), Integer.valueOf(annotationArr.length)));
            }
        } else {
            if (ctor2 != null) {
                annotationArr2 = ctor2.getParameterAnnotations();
            }
            annotationMapArr = collectAnnotations(parameterAnnotations, annotationArr2);
        }
        return new AnnotatedConstructor(this._typeContext, ctor.getConstructor(), collectAnnotations(ctor, ctor2), annotationMapArr);
    }
}
