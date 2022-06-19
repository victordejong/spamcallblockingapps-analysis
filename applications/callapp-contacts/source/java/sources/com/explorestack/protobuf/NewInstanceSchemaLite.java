package com.explorestack.protobuf;

import com.explorestack.protobuf.GeneratedMessageLite;
/* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/NewInstanceSchemaLite.class */
final class NewInstanceSchemaLite implements NewInstanceSchema {
    @Override // com.explorestack.protobuf.NewInstanceSchema
    public final Object newInstance(Object obj) {
        return ((GeneratedMessageLite) obj).dynamicMethod(GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE);
    }
}
