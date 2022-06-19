package com.google.protobuf;
/* loaded from: classes3-dex2jar.jar:com/google/protobuf/SchemaFactory.class */
public interface SchemaFactory {
    <T> Schema<T> createSchema(Class<T> cls);
}
