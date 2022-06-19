package com.fasterxml.jackson.databind.ext;

import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.introspect.AnnotatedParameter;
import com.fasterxml.jackson.databind.introspect.AnnotatedWithParams;
import java.beans.ConstructorProperties;
import java.beans.Transient;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/ext/Java7SupportImpl.class */
public class Java7SupportImpl extends Java7Support {
    private final Class<?> _bogus = ConstructorProperties.class;

    @Override // com.fasterxml.jackson.databind.ext.Java7Support
    public PropertyName findConstructorName(AnnotatedParameter annotatedParameter) {
        ConstructorProperties annotation;
        AnnotatedWithParams owner = annotatedParameter.getOwner();
        if (owner == null || (annotation = owner.getAnnotation(ConstructorProperties.class)) == null) {
            return null;
        }
        String[] value = annotation.value();
        int index = annotatedParameter.getIndex();
        if (index >= value.length) {
            return null;
        }
        return PropertyName.construct(value[index]);
    }

    @Override // com.fasterxml.jackson.databind.ext.Java7Support
    public Boolean findTransient(Annotated annotated) {
        Transient annotation = annotated.getAnnotation(Transient.class);
        if (annotation != null) {
            return Boolean.valueOf(annotation.value());
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.ext.Java7Support
    public Boolean hasCreatorAnnotation(Annotated annotated) {
        if (annotated.getAnnotation(ConstructorProperties.class) != null) {
            return Boolean.TRUE;
        }
        return null;
    }
}
