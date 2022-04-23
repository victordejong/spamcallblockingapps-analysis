package com.explorestack.protobuf;

import com.explorestack.protobuf.Descriptors;
/* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/RpcChannel.class */
public interface RpcChannel {
    void callMethod(Descriptors.MethodDescriptor methodDescriptor, RpcController rpcController, Message message, Message message2, RpcCallback<Message> rpcCallback);
}
