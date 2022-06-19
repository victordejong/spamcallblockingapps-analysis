.class public interface abstract Lcom/explorestack/protobuf/BlockingService;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract callBlockingMethod(Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;Lcom/explorestack/protobuf/RpcController;Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/ServiceException;
        }
    .end annotation
.end method

.method public abstract getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$ServiceDescriptor;
.end method

.method public abstract getRequestPrototype(Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;)Lcom/explorestack/protobuf/Message;
.end method

.method public abstract getResponsePrototype(Lcom/explorestack/protobuf/Descriptors$MethodDescriptor;)Lcom/explorestack/protobuf/Message;
.end method
