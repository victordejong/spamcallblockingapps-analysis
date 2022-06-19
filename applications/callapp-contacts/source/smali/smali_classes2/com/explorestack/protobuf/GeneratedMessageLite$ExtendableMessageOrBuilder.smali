.class public interface abstract Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ExtendableMessageOrBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableMessage<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/explorestack/protobuf/GeneratedMessageLite$ExtendableBuilder<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lcom/explorestack/protobuf/MessageLiteOrBuilder;"
    }
.end annotation


# virtual methods
.method public abstract getExtension(Lcom/explorestack/protobuf/ExtensionLite;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/ExtensionLite<",
            "TMessageType;TType;>;)TType;"
        }
    .end annotation
.end method

.method public abstract getExtension(Lcom/explorestack/protobuf/ExtensionLite;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/ExtensionLite<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;I)TType;"
        }
    .end annotation
.end method

.method public abstract getExtensionCount(Lcom/explorestack/protobuf/ExtensionLite;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/ExtensionLite<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;)I"
        }
    .end annotation
.end method

.method public abstract hasExtension(Lcom/explorestack/protobuf/ExtensionLite;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/ExtensionLite<",
            "TMessageType;TType;>;)Z"
        }
    .end annotation
.end method
