package com.explorestack.protobuf;

import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/StructOrBuilder.class */
public interface StructOrBuilder extends MessageOrBuilder {
    boolean containsFields(String str);

    @Deprecated
    Map<String, Value> getFields();

    int getFieldsCount();

    Map<String, Value> getFieldsMap();

    Value getFieldsOrDefault(String str, Value value);

    Value getFieldsOrThrow(String str);
}
