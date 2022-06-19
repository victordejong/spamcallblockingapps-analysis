package com.explorestack.protobuf;

import com.explorestack.protobuf.Descriptors;
/* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/BlockingRpcChannel.class */
public interface BlockingRpcChannel {
    Message callBlockingMethod(Descriptors.MethodDescriptor methodDescriptor, RpcController rpcController, Message message, Message message2) throws ServiceException;
}
