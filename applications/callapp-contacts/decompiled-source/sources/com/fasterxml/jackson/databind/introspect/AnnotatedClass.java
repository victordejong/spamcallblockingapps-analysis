package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.introspect.ClassIntrospector;
import com.fasterxml.jackson.databind.type.TypeBindings;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.Annotations;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/introspect/AnnotatedClass.class */
public final class AnnotatedClass extends Annotated implements TypeResolutionContext {
    private static final Creators NO_CREATORS = new Creators(null, Collections.emptyList(), Collections.emptyList());
    protected final AnnotationIntrospector _annotationIntrospector;
    protected final TypeBindings _bindings;
    protected final Class<?> _class;
    protected final Annotations _classAnnotations;
    protected final boolean _collectAnnotations;
    protected Creators _creators;
    protected List<AnnotatedField> _fields;
    protected AnnotatedMethodMap _memberMethods;
    protected final ClassIntrospector.MixInResolver _mixInResolver;
    protected transient Boolean _nonStaticInnerClass;
    protected final Class<?> _primaryMixIn;
    protected final List<JavaType> _superTypes;
    protected final JavaType _type;
    protected final TypeFactory _typeFactory;

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/introspect/AnnotatedClass$Creators.class */
    public static final class Creators {
        public final List<AnnotatedConstructor> constructors;
        public final List<AnnotatedMethod> creatorMethods;
        public final AnnotatedConstructor defaultConstructor;

        public Creators(AnnotatedConstructor annotatedConstructor, List<AnnotatedConstructor> list, List<AnnotatedMethod> list2) {
            this.defaultConstructor = annotatedConstructor;
            this.constructors = list;
            this.creatorMethods = list2;
        }
    }

    @Deprecated
    AnnotatedClass(JavaType javaType, Class<?> cls, List<JavaType> list, Class<?> cls2, Annotations annotations, TypeBindings typeBindings, AnnotationIntrospector annotationIntrospector, ClassIntrospector.MixInResolver mixInResolver, TypeFactory typeFactory) {
        this(javaType, cls, list, cls2, annotations, typeBindings, annotationIntrospector, mixInResolver, typeFactory, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AnnotatedClass(JavaType javaType, Class<?> cls, List<JavaType> list, Class<?> cls2, Annotations annotations, TypeBindings typeBindings, AnnotationIntrospector annotationIntrospector, ClassIntrospector.MixInResolver mixInResolver, TypeFactory typeFactory, boolean z) {
        this._type = javaType;
        this._class = cls;
        this._superTypes = list;
        this._primaryMixIn = cls2;
        this._classAnnotations = annotations;
        this._bindings = typeBindings;
        this._annotationIntrospector = annotationIntrospector;
        this._mixInResolver = mixInResolver;
        this._typeFactory = typeFactory;
        this._collectAnnotations = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AnnotatedClass(Class<?> cls) {
        this._type = null;
        this._class = cls;
        this._superTypes = Collections.emptyList();
        this._primaryMixIn = null;
        this._classAnnotations = AnnotationCollector.emptyAnnotations();
        this._bindings = TypeBindings.emptyBindings();
        this._annotationIntrospector = null;
        this._mixInResolver = null;
        this._typeFactory = null;
        this._collectAnnotations = false;
    }

    private final Creators _creators() {
        Creators creators = this._creators;
        Creators creators2 = creators;
        if (creators == null) {
            JavaType javaType = this._type;
            creators2 = javaType == null ? NO_CREATORS : AnnotatedCreatorCollector.collectCreators(this._annotationIntrospector, this._typeFactory, this, javaType, this._primaryMixIn, this._collectAnnotations);
            this._creators = creators2;
        }
        return creators2;
    }

    private final List<AnnotatedField> _fields() {
        List<AnnotatedField> list = this._fields;
        List<AnnotatedField> list2 = list;
        if (list == null) {
            JavaType javaType = this._type;
            list2 = javaType == null ? Collections.emptyList() : AnnotatedFieldCollector.collectFields(this._annotationIntrospector, this, this._mixInResolver, this._typeFactory, javaType, this._collectAnnotations);
            this._fields = list2;
        }
        return list2;
    }

    private final AnnotatedMethodMap _methods() {
        AnnotatedMethodMap annotatedMethodMap = this._memberMethods;
        AnnotatedMethodMap annotatedMethodMap2 = annotatedMethodMap;
        if (annotatedMethodMap == null) {
            JavaType javaType = this._type;
            annotatedMethodMap2 = javaType == null ? new AnnotatedMethodMap() : AnnotatedMethodCollector.collectMethods(this._annotationIntrospector, this, this._mixInResolver, this._typeFactory, javaType, this._superTypes, this._primaryMixIn, this._collectAnnotations);
            this._memberMethods = annotatedMethodMap2;
        }
        return annotatedMethodMap2;
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return ClassUtil.hasClass(obj, getClass()) && ((AnnotatedClass) obj)._class == this._class;
    }

    public final Iterable<AnnotatedField> fields() {
        return _fields();
    }

    public final AnnotatedMethod findMethod(String str, Class<?>[] clsArr) {
        return _methods().find(str, clsArr);
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public final Class<?> getAnnotated() {
        return this._class;
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public final <A extends Annotation> A getAnnotation(Class<A> cls) {
        return (A) this._classAnnotations.get(cls);
    }

    public final Annotations getAnnotations() {
        return this._classAnnotations;
    }

    public final List<AnnotatedConstructor> getConstructors() {
        return _creators().constructors;
    }

    public final AnnotatedConstructor getDefaultConstructor() {
        return _creators().defaultConstructor;
    }

    public final List<AnnotatedMethod> getFactoryMethods() {
        return _creators().creatorMethods;
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public final String getName() {
        return this._class.getName();
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public final Class<?> getRawType() {
        return this._class;
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public final JavaType getType() {
        return this._type;
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public final boolean hasAnnotation(Class<?> cls) {
        return this._classAnnotations.has(cls);
    }

    public final boolean hasAnnotations() {
        return this._classAnnotations.size() > 0;
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public final boolean hasOneOf(Class<? extends Annotation>[] clsArr) {
        return this._classAnnotations.hasOneOf(clsArr);
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public final int hashCode() {
        return this._class.getName().hashCode();
    }

    public final boolean isNonStaticInnerClass() {
        Boolean bool = this._nonStaticInnerClass;
        Boolean bool2 = bool;
        if (bool == null) {
            bool2 = Boolean.valueOf(ClassUtil.isNonStaticInnerClass(this._class));
            this._nonStaticInnerClass = bool2;
        }
        return bool2.booleanValue();
    }

    public final Iterable<AnnotatedMethod> memberMethods() {
        return _methods();
    }

    @Override // com.fasterxml.jackson.databind.introspect.TypeResolutionContext
    public final JavaType resolveType(Type type) {
        return this._typeFactory.resolveMemberType(type, this._bindings);
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public final String toString() {
        return "[AnnotedClass " + this._class.getName() + "]";
    }
}
