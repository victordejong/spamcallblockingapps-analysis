package com.explorestack.protobuf;

import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.MessageLite;
/* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/Extension.class */
public abstract class Extension<ContainingType extends MessageLite, Type> extends ExtensionLite<ContainingType, Type> {

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/Extension$ExtensionType.class */
    public enum ExtensionType {
        IMMUTABLE,
        MUTABLE,
        PROTO1
    }

    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/Extension$MessageType.class */
    public enum MessageType {
        PROTO1,
        PROTO2
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract Object fromReflectionType(Object obj);

    public abstract Descriptors.FieldDescriptor getDescriptor();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract ExtensionType getExtensionType();

    @Override // com.explorestack.protobuf.ExtensionLite
    public abstract Message getMessageDefaultInstance();

    public MessageType getMessageType() {
        return MessageType.PROTO2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.ExtensionLite
    public final boolean isLite() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract Object singularFromReflectionType(Object obj);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract Object singularToReflectionType(Object obj);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract Object toReflectionType(Object obj);
}
