package org.bson.codecs.pojo;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.bson.codecs.configuration.CodecConfigurationException;
import org.bson.codecs.pojo.annotations.BsonId;
import org.bson.codecs.pojo.annotations.BsonProperty;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/pojo/CreatorExecutable.class */
final class CreatorExecutable<T> {
    private final Class<T> clazz;
    private final Constructor<T> constructor;
    private final Integer idPropertyIndex;
    private final Method method;
    private final List<Type> parameterGenericTypes;
    private final List<Class<?>> parameterTypes;
    private final List<BsonProperty> properties;

    public CreatorExecutable(Class<T> cls, Constructor<T> constructor) {
        this(cls, constructor, null);
    }

    private CreatorExecutable(Class<T> cls, Constructor<T> constructor, Method method) {
        Integer num;
        this.properties = new ArrayList();
        ArrayList arrayList = new ArrayList();
        this.parameterTypes = arrayList;
        ArrayList arrayList2 = new ArrayList();
        this.parameterGenericTypes = arrayList2;
        this.clazz = cls;
        this.constructor = constructor;
        this.method = method;
        Integer num2 = null;
        if (constructor != null || method != null) {
            Class<?>[] parameterTypes = constructor != null ? constructor.getParameterTypes() : method.getParameterTypes();
            Type[] genericParameterTypes = constructor != null ? constructor.getGenericParameterTypes() : method.getGenericParameterTypes();
            arrayList.addAll(Arrays.asList(parameterTypes));
            arrayList2.addAll(Arrays.asList(genericParameterTypes));
            Annotation[][] parameterAnnotations = constructor != null ? constructor.getParameterAnnotations() : method.getParameterAnnotations();
            num2 = null;
            int i = 0;
            while (i < parameterAnnotations.length) {
                Annotation[] annotationArr = parameterAnnotations[i];
                int length = annotationArr.length;
                int i2 = 0;
                while (true) {
                    num = num2;
                    if (i2 < length) {
                        Annotation annotation = annotationArr[i2];
                        if (annotation.annotationType().equals(BsonProperty.class)) {
                            this.properties.add((BsonProperty) annotation);
                            num = num2;
                            break;
                        } else if (annotation.annotationType().equals(BsonId.class)) {
                            this.properties.add(null);
                            num = Integer.valueOf(i);
                            break;
                        } else {
                            i2++;
                        }
                    }
                }
                i++;
                num2 = num;
            }
        }
        this.idPropertyIndex = num2;
    }

    public CreatorExecutable(Class<T> cls, Method method) {
        this(cls, null, method);
    }

    private void checkHasAnExecutable() {
        if (this.constructor == null && this.method == null) {
            throw new CodecConfigurationException(String.format("Cannot find a public constructor for '%s'.", this.clazz.getSimpleName()));
        }
    }

    private static CodecConfigurationException getError(Class<?> cls, boolean z, String str) {
        return new CodecConfigurationException(String.format("Invalid @BsonCreator %s in %s. %s", z ? "constructor" : FirebaseAnalytics.Param.METHOD, cls.getSimpleName(), str));
    }

    public CodecConfigurationException getError(Class<?> cls, String str) {
        return getError(cls, this.constructor != null, str);
    }

    public Integer getIdPropertyIndex() {
        return this.idPropertyIndex;
    }

    public T getInstance() {
        checkHasAnExecutable();
        try {
            Constructor<T> constructor = this.constructor;
            return constructor != null ? constructor.newInstance(new Object[0]) : (T) this.method.invoke(this.clazz, new Object[0]);
        } catch (Exception e) {
            throw new CodecConfigurationException(e.getMessage(), e);
        }
    }

    public T getInstance(Object[] objArr) {
        checkHasAnExecutable();
        try {
            Constructor<T> constructor = this.constructor;
            return constructor != null ? constructor.newInstance(objArr) : (T) this.method.invoke(this.clazz, objArr);
        } catch (Exception e) {
            throw new CodecConfigurationException(e.getMessage(), e);
        }
    }

    public List<Type> getParameterGenericTypes() {
        return this.parameterGenericTypes;
    }

    public List<Class<?>> getParameterTypes() {
        return this.parameterTypes;
    }

    public List<BsonProperty> getProperties() {
        return this.properties;
    }

    public Class<T> getType() {
        return this.clazz;
    }
}
