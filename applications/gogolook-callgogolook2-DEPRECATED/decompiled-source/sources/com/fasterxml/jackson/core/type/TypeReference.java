package com.fasterxml.jackson.core.type;

import java.lang.reflect.Type;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/core/type/TypeReference.class */
public abstract class TypeReference<T> implements Comparable<TypeReference<T>> {
    public abstract Type getType();
}
