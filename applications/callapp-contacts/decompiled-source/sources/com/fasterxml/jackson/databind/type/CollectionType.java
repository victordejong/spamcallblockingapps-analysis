package com.fasterxml.jackson.databind.type;

import com.fasterxml.jackson.databind.JavaType;
import java.lang.reflect.TypeVariable;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/type/CollectionType.class */
public final class CollectionType extends CollectionLikeType {
    private static final long serialVersionUID = 1;

    protected CollectionType(TypeBase typeBase, JavaType javaType) {
        super(typeBase, javaType);
    }

    private CollectionType(Class<?> cls, TypeBindings typeBindings, JavaType javaType, JavaType[] javaTypeArr, JavaType javaType2, Object obj, Object obj2, boolean z) {
        super(cls, typeBindings, javaType, javaTypeArr, javaType2, obj, obj2, z);
    }

    @Deprecated
    public static CollectionType construct(Class<?> cls, JavaType javaType) {
        TypeVariable<Class<?>>[] typeParameters = cls.getTypeParameters();
        return new CollectionType(cls, (typeParameters == null || typeParameters.length != 1) ? TypeBindings.emptyBindings() : TypeBindings.create(cls, javaType), _bogusSuperClass(cls), null, javaType, null, null, false);
    }

    public static CollectionType construct(Class<?> cls, TypeBindings typeBindings, JavaType javaType, JavaType[] javaTypeArr, JavaType javaType2) {
        return new CollectionType(cls, typeBindings, javaType, javaTypeArr, javaType2, null, null, false);
    }

    @Override // com.fasterxml.jackson.databind.type.CollectionLikeType, com.fasterxml.jackson.databind.JavaType
    @Deprecated
    public final JavaType _narrow(Class<?> cls) {
        return new CollectionType(cls, this._bindings, this._superClass, this._superInterfaces, this._elementType, null, null, this._asStatic);
    }

    @Override // com.fasterxml.jackson.databind.type.CollectionLikeType, com.fasterxml.jackson.databind.JavaType
    public final JavaType refine(Class<?> cls, TypeBindings typeBindings, JavaType javaType, JavaType[] javaTypeArr) {
        return new CollectionType(cls, typeBindings, javaType, javaTypeArr, this._elementType, this._valueHandler, this._typeHandler, this._asStatic);
    }

    @Override // com.fasterxml.jackson.databind.type.CollectionLikeType, com.fasterxml.jackson.databind.JavaType
    public final String toString() {
        return "[collection type; class " + this._class.getName() + ", contains " + this._elementType + "]";
    }

    @Override // com.fasterxml.jackson.databind.type.CollectionLikeType, com.fasterxml.jackson.databind.JavaType
    public final JavaType withContentType(JavaType javaType) {
        return this._elementType == javaType ? this : new CollectionType(this._class, this._bindings, this._superClass, this._superInterfaces, javaType, this._valueHandler, this._typeHandler, this._asStatic);
    }

    @Override // com.fasterxml.jackson.databind.type.CollectionLikeType, com.fasterxml.jackson.databind.JavaType
    public final CollectionType withContentTypeHandler(Object obj) {
        return new CollectionType(this._class, this._bindings, this._superClass, this._superInterfaces, this._elementType.withTypeHandler(obj), this._valueHandler, this._typeHandler, this._asStatic);
    }

    @Override // com.fasterxml.jackson.databind.type.CollectionLikeType, com.fasterxml.jackson.databind.JavaType
    public final CollectionType withContentValueHandler(Object obj) {
        return new CollectionType(this._class, this._bindings, this._superClass, this._superInterfaces, this._elementType.withValueHandler(obj), this._valueHandler, this._typeHandler, this._asStatic);
    }

    @Override // com.fasterxml.jackson.databind.type.CollectionLikeType, com.fasterxml.jackson.databind.JavaType
    public final CollectionType withStaticTyping() {
        return this._asStatic ? this : new CollectionType(this._class, this._bindings, this._superClass, this._superInterfaces, this._elementType.withStaticTyping(), this._valueHandler, this._typeHandler, true);
    }

    @Override // com.fasterxml.jackson.databind.type.CollectionLikeType, com.fasterxml.jackson.databind.JavaType
    public final CollectionType withTypeHandler(Object obj) {
        return new CollectionType(this._class, this._bindings, this._superClass, this._superInterfaces, this._elementType, this._valueHandler, obj, this._asStatic);
    }

    @Override // com.fasterxml.jackson.databind.type.CollectionLikeType, com.fasterxml.jackson.databind.JavaType
    public final CollectionType withValueHandler(Object obj) {
        return new CollectionType(this._class, this._bindings, this._superClass, this._superInterfaces, this._elementType, obj, this._typeHandler, this._asStatic);
    }
}
