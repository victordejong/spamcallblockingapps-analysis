package com.google.common.reflect;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import p1727n3.p1789g0.C26232y;
/* loaded from: classes3-dex2jar.jar:com/google/common/reflect/TypeCapture.class */
public abstract class TypeCapture<T> {
    public final Type capture() {
        Type genericSuperclass = getClass().getGenericSuperclass();
        C26232y.checkArgument(genericSuperclass instanceof ParameterizedType, "%s isn't parameterized", genericSuperclass);
        return ((ParameterizedType) genericSuperclass).getActualTypeArguments()[0];
    }
}
