package com.explorestack.protobuf;
/* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/SchemaFactory.class */
public interface SchemaFactory {
    <T> Schema<T> createSchema(Class<T> cls);
}
