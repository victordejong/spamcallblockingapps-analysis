package org.bson.codecs.pojo;

import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.bson.codecs.configuration.CodecConfigurationException;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/pojo/PropertyMetadata.class */
final class PropertyMetadata<T> {
    private final String declaringClassName;
    private String error;
    private Field field;
    private Method getter;
    private final String name;
    private Method setter;
    private final TypeData<T> typeData;
    private TypeParameterMap typeParameterMap;
    private List<TypeData<?>> typeParameters;
    private final Map<Class<? extends Annotation>, Annotation> readAnnotations = new HashMap();
    private final Map<Class<? extends Annotation>, Annotation> writeAnnotations = new HashMap();

    public PropertyMetadata(String str, String str2, TypeData<T> typeData) {
        this.name = str;
        this.declaringClassName = str2;
        this.typeData = typeData;
    }

    private boolean isPublicAndNotStaticOrTransient(int i) {
        return Modifier.isPublic(i) && notStaticOrTransient(i);
    }

    private boolean notStaticOrTransient(int i) {
        return !Modifier.isTransient(i) && !Modifier.isStatic(i);
    }

    public PropertyMetadata<T> addReadAnnotation(Annotation annotation) {
        if (!this.readAnnotations.containsKey(annotation.annotationType())) {
            this.readAnnotations.put(annotation.annotationType(), annotation);
            return this;
        } else if (!annotation.equals(this.readAnnotations.get(annotation.annotationType()))) {
            throw new CodecConfigurationException(String.format("Read annotation %s for '%s' already exists in %s", annotation.annotationType(), this.name, this.declaringClassName));
        } else {
            return this;
        }
    }

    public PropertyMetadata<T> addWriteAnnotation(Annotation annotation) {
        if (!this.writeAnnotations.containsKey(annotation.annotationType())) {
            this.writeAnnotations.put(annotation.annotationType(), annotation);
            return this;
        } else if (!annotation.equals(this.writeAnnotations.get(annotation.annotationType()))) {
            throw new CodecConfigurationException(String.format("Write annotation %s for '%s' already exists in %s", annotation.annotationType(), this.name, this.declaringClassName));
        } else {
            return this;
        }
    }

    public PropertyMetadata<T> field(Field field) {
        this.field = field;
        return this;
    }

    public String getDeclaringClassName() {
        return this.declaringClassName;
    }

    public String getError() {
        return this.error;
    }

    public Field getField() {
        return this.field;
    }

    public Method getGetter() {
        return this.getter;
    }

    public String getName() {
        return this.name;
    }

    public List<Annotation> getReadAnnotations() {
        return new ArrayList(this.readAnnotations.values());
    }

    public Method getSetter() {
        return this.setter;
    }

    public TypeData<T> getTypeData() {
        return this.typeData;
    }

    public TypeParameterMap getTypeParameterMap() {
        return this.typeParameterMap;
    }

    public List<TypeData<?>> getTypeParameters() {
        return this.typeParameters;
    }

    public List<Annotation> getWriteAnnotations() {
        return new ArrayList(this.writeAnnotations.values());
    }

    public boolean isDeserializable() {
        boolean z = true;
        if (this.setter != null) {
            Field field = this.field;
            boolean z2 = true;
            if (field != null) {
                z2 = !Modifier.isFinal(field.getModifiers()) && notStaticOrTransient(this.field.getModifiers());
            }
            return z2;
        }
        Field field2 = this.field;
        if (field2 == null || Modifier.isFinal(field2.getModifiers()) || !isPublicAndNotStaticOrTransient(this.field.getModifiers())) {
            z = false;
        }
        return z;
    }

    public boolean isSerializable() {
        boolean z = true;
        if (this.getter != null) {
            Field field = this.field;
            boolean z2 = true;
            if (field != null) {
                z2 = notStaticOrTransient(field.getModifiers());
            }
            return z2;
        }
        Field field2 = this.field;
        if (field2 == null || !isPublicAndNotStaticOrTransient(field2.getModifiers())) {
            z = false;
        }
        return z;
    }

    public void setError(String str) {
        this.error = str;
    }

    public void setGetter(Method method) {
        this.getter = method;
    }

    public void setSetter(Method method) {
        this.setter = method;
    }

    public <S> PropertyMetadata<T> typeParameterInfo(TypeParameterMap typeParameterMap, TypeData<S> typeData) {
        if (typeParameterMap != null && typeData != null) {
            this.typeParameterMap = typeParameterMap;
            this.typeParameters = typeData.getTypeParameters();
        }
        return this;
    }
}
