package com.explorestack.protobuf;

import com.explorestack.protobuf.FieldSet;
import com.explorestack.protobuf.FieldSet.FieldDescriptorLite;
import java.io.IOException;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/ExtensionSchema.class */
public abstract class ExtensionSchema<T extends FieldSet.FieldDescriptorLite<T>> {
    public abstract int extensionNumber(Map.Entry<?, ?> entry);

    public abstract Object findExtensionByNumber(ExtensionRegistryLite extensionRegistryLite, MessageLite messageLite, int i);

    public abstract FieldSet<T> getExtensions(Object obj);

    public abstract FieldSet<T> getMutableExtensions(Object obj);

    public abstract boolean hasExtensions(MessageLite messageLite);

    public abstract void makeImmutable(Object obj);

    public abstract <UT, UB> UB parseExtension(Reader reader, Object obj, ExtensionRegistryLite extensionRegistryLite, FieldSet<T> fieldSet, UB ub, UnknownFieldSchema<UT, UB> unknownFieldSchema) throws IOException;

    public abstract void parseLengthPrefixedMessageSetItem(Reader reader, Object obj, ExtensionRegistryLite extensionRegistryLite, FieldSet<T> fieldSet) throws IOException;

    public abstract void parseMessageSetItem(ByteString byteString, Object obj, ExtensionRegistryLite extensionRegistryLite, FieldSet<T> fieldSet) throws IOException;

    public abstract void serializeExtension(Writer writer, Map.Entry<?, ?> entry) throws IOException;

    abstract void setExtensions(Object obj, FieldSet<T> fieldSet);
}
