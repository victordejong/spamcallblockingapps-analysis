.class public interface abstract Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProtoOrBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ServiceDescriptorProtoOrBuilder"
.end annotation


# virtual methods
.method public abstract getMethod(I)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;
.end method

.method public abstract getMethodCount()I
.end method

.method public abstract getMethodList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMethodOrBuilder(I)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProtoOrBuilder;
.end method

.method public abstract getMethodOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProtoOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNameBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getOptions()Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;
.end method

.method public abstract getOptionsOrBuilder()Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptionsOrBuilder;
.end method

.method public abstract hasName()Z
.end method

.method public abstract hasOptions()Z
.end method
