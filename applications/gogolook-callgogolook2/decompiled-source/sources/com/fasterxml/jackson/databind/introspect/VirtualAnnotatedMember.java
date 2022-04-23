package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.JavaType;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/introspect/VirtualAnnotatedMember.class */
public class VirtualAnnotatedMember extends AnnotatedMember implements Serializable {
    public final Class<?> _declaringClass;
    public final String _name;
    public final Class<?> _rawType;

    public VirtualAnnotatedMember(TypeResolutionContext typeResolutionContext, Class<?> cls, String str, Class<?> cls2) {
        super(typeResolutionContext, null);
        this._declaringClass = cls;
        this._rawType = cls2;
        this._name = str;
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != VirtualAnnotatedMember.class) {
            return false;
        }
        VirtualAnnotatedMember virtualAnnotatedMember = (VirtualAnnotatedMember) obj;
        if (virtualAnnotatedMember._declaringClass != this._declaringClass || !virtualAnnotatedMember._name.equals(this._name)) {
            z = false;
        }
        return z;
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public Field getAnnotated() {
        return null;
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedMember
    public Class<?> getDeclaringClass() {
        return this._declaringClass;
    }

    public String getFullName() {
        return getDeclaringClass().getName() + "#" + getName();
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedMember
    public Member getMember() {
        return null;
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public String getName() {
        return this._name;
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public Class<?> getRawType() {
        return this._rawType;
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public JavaType getType() {
        return this._typeContext.resolveType(this._rawType);
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedMember
    public Object getValue(Object obj) throws IllegalArgumentException {
        throw new IllegalArgumentException("Can not get virtual property '" + this._name + "'");
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public int hashCode() {
        return this._name.hashCode();
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedMember
    public void setValue(Object obj, Object obj2) throws IllegalArgumentException {
        throw new IllegalArgumentException("Can not set virtual property '" + this._name + "'");
    }

    public String toString() {
        return "[field " + getFullName() + "]";
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public Annotated withAnnotations(AnnotationMap annotationMap) {
        return this;
    }
}
