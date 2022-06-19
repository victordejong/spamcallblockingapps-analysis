.class public interface abstract Lcom/explorestack/protobuf/MessageOrBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/MessageLiteOrBuilder;


# virtual methods
.method public abstract findInitializationErrors()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllFields()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
.end method

.method public abstract getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
.end method

.method public abstract getField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
.end method

.method public abstract getInitializationErrorString()Ljava/lang/String;
.end method

.method public abstract getOneofFieldDescriptor(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;
.end method

.method public abstract getRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/Object;
.end method

.method public abstract getRepeatedFieldCount(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)I
.end method

.method public abstract getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
.end method

.method public abstract hasField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Z
.end method

.method public abstract hasOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Z
.end method
