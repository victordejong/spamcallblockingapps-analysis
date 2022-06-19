.class public interface abstract Lcom/explorestack/protobuf/Service;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract callMethod(Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;Lcom/explorestack/protobuf/RpcController;Lcom/explorestack/protobuf/Message;Lcom/explorestack/protobuf/RpcCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;",
            "Lcom/explorestack/protobuf/RpcController;",
            "Lcom/explorestack/protobuf/Message;",
            "Lcom/explorestack/protobuf/RpcCallback<",
            "Lcom/explorestack/protobuf/Message;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;
.end method

.method public abstract getRequestPrototype(Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;)Lcom/explorestack/protobuf/Message;
.end method

.method public abstract getResponsePrototype(Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;)Lcom/explorestack/protobuf/Message;
.end method
