package com.explorestack.protobuf;

import com.explorestack.protobuf.Descriptors;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/MessageOrBuilder.class */
public interface MessageOrBuilder extends MessageLiteOrBuilder {
    List<String> findInitializationErrors();

    Map<Descriptors.FieldDescriptor, Object> getAllFields();

    @Override // 
    Message getDefaultInstanceForType();

    Descriptors.Descriptor getDescriptorForType();

    Object getField(Descriptors.FieldDescriptor fieldDescriptor);

    String getInitializationErrorString();

    Descriptors.FieldDescriptor getOneofFieldDescriptor(Descriptors.OneofDescriptor oneofDescriptor);

    Object getRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i);

    int getRepeatedFieldCount(Descriptors.FieldDescriptor fieldDescriptor);

    UnknownFieldSet getUnknownFields();

    boolean hasField(Descriptors.FieldDescriptor fieldDescriptor);

    boolean hasOneof(Descriptors.OneofDescriptor oneofDescriptor);
}
