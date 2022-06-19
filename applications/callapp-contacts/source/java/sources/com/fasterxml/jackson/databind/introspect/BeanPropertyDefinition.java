package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.Named;
import java.util.Iterator;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/introspect/BeanPropertyDefinition.class */
public abstract class BeanPropertyDefinition implements Named {
    public static final JsonInclude.Value EMPTY_INCLUDE = JsonInclude.Value.empty();

    public boolean couldDeserialize() {
        return getMutator() != null;
    }

    public boolean couldSerialize() {
        return getAccessor() != null;
    }

    public abstract JsonInclude.Value findInclusion();

    public ObjectIdInfo findObjectIdInfo() {
        return null;
    }

    public String findReferenceName() {
        AnnotationIntrospector.ReferenceProperty findReferenceType = findReferenceType();
        if (findReferenceType == null) {
            return null;
        }
        return findReferenceType.getName();
    }

    public AnnotationIntrospector.ReferenceProperty findReferenceType() {
        return null;
    }

    public Class<?>[] findViews() {
        return null;
    }

    public AnnotatedMember getAccessor() {
        AnnotatedMethod getter = getGetter();
        AnnotatedMethod annotatedMethod = getter;
        if (getter == null) {
            annotatedMethod = getField();
        }
        return annotatedMethod;
    }

    public abstract AnnotatedParameter getConstructorParameter();

    public Iterator<AnnotatedParameter> getConstructorParameters() {
        return ClassUtil.emptyIterator();
    }

    public abstract AnnotatedField getField();

    public abstract PropertyName getFullName();

    public abstract AnnotatedMethod getGetter();

    public abstract PropertyMetadata getMetadata();

    public AnnotatedMember getMutator() {
        AnnotatedParameter constructorParameter = getConstructorParameter();
        AnnotatedParameter annotatedParameter = constructorParameter;
        if (constructorParameter == null) {
            AnnotatedMethod setter = getSetter();
            annotatedParameter = setter;
            if (setter == null) {
                annotatedParameter = getField();
            }
        }
        return annotatedParameter;
    }

    @Override // com.fasterxml.jackson.databind.util.Named
    public abstract String getName();

    public AnnotatedMember getNonConstructorMutator() {
        AnnotatedMethod setter = getSetter();
        AnnotatedMethod annotatedMethod = setter;
        if (setter == null) {
            annotatedMethod = getField();
        }
        return annotatedMethod;
    }

    public abstract AnnotatedMember getPrimaryMember();

    public abstract JavaType getPrimaryType();

    public abstract Class<?> getRawPrimaryType();

    public abstract AnnotatedMethod getSetter();

    public abstract PropertyName getWrapperName();

    public abstract boolean hasConstructorParameter();

    public abstract boolean hasField();

    public boolean hasName(PropertyName propertyName) {
        return getFullName().equals(propertyName);
    }

    public abstract boolean hasSetter();

    public abstract boolean isExplicitlyIncluded();

    public boolean isExplicitlyNamed() {
        return isExplicitlyIncluded();
    }

    public boolean isTypeId() {
        return false;
    }
}
