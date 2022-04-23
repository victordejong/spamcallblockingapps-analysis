package com.explorestack.protobuf;

import com.explorestack.protobuf.GeneratedMessageV3;
/* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/NewInstanceSchemaFull.class */
final class NewInstanceSchemaFull implements NewInstanceSchema {
    NewInstanceSchemaFull() {
    }

    @Override // com.explorestack.protobuf.NewInstanceSchema
    public final Object newInstance(Object obj) {
        return ((GeneratedMessageV3) obj).newInstance(GeneratedMessageV3.UnusedPrivateParameter.INSTANCE);
    }
}
