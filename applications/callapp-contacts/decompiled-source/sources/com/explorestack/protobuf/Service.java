package com.explorestack.protobuf;

import com.explorestack.protobuf.Descriptors;
/* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/Service.class */
public interface Service {
    void callMethod(Descriptors.MethodDescriptor methodDescriptor, RpcController rpcController, Message message, RpcCallback<Message> rpcCallback);

    Descriptors.ServiceDescriptor getDescriptorForType();

    Message getRequestPrototype(Descriptors.MethodDescriptor methodDescriptor);

    Message getResponsePrototype(Descriptors.MethodDescriptor methodDescriptor);
}
