package com.explorestack.protobuf;

import com.explorestack.protobuf.FieldSet;
import com.explorestack.protobuf.FieldSet.FieldDescriptorLite;
import java.io.IOException;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/ExtensionSchema.class */
public abstract class ExtensionSchema<T extends FieldSet.FieldDescriptorLite<T>> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int extensionNumber(Map.Entry<?, ?> entry);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract Object findExtensionByNumber(ExtensionRegistryLite extensionRegistryLite, MessageLite messageLite, int i);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract FieldSet<T> getExtensions(Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract FieldSet<T> getMutableExtensions(Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean hasExtensions(MessageLite messageLite);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void makeImmutable(Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract <UT, UB> UB parseExtension(Reader reader, Object obj, ExtensionRegistryLite extensionRegistryLite, FieldSet<T> fieldSet, UB ub, UnknownFieldSchema<UT, UB> unknownFieldSchema) throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void parseLengthPrefixedMessageSetItem(Reader reader, Object obj, ExtensionRegistryLite extensionRegistryLite, FieldSet<T> fieldSet) throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void parseMessageSetItem(ByteString byteString, Object obj, ExtensionRegistryLite extensionRegistryLite, FieldSet<T> fieldSet) throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void serializeExtension(Writer writer, Map.Entry<?, ?> entry) throws IOException;

    abstract void setExtensions(Object obj, FieldSet<T> fieldSet);
}
