package org.bson.json;
/* loaded from: classes3-dex2jar.jar:org/bson/json/Converter.class */
public interface Converter<T> {
    void convert(T t, StrictJsonWriter strictJsonWriter);
}
