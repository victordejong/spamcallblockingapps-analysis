package com.explorestack.protobuf;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/SchemaFactory.class */
public interface SchemaFactory {
    <T> Schema<T> createSchema(Class<T> cls);
}
