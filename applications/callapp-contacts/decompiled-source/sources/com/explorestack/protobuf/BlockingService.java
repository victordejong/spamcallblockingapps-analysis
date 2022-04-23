package com.explorestack.protobuf;

import com.explorestack.protobuf.Descriptors;
/* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/BlockingService.class */
public interface BlockingService {
    Message callBlockingMethod(Descriptors.MethodDescriptor methodDescriptor, RpcController rpcController, Message message) throws ServiceException;

    Descriptors.ServiceDescriptor getDescriptorForType();

    Message getRequestPrototype(Descriptors.MethodDescriptor methodDescriptor);

    Message getResponsePrototype(Descriptors.MethodDescriptor methodDescriptor);
}
