.class public interface abstract Lcom/explorestack/protobuf/Message;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/MessageLite;
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/Message$Builder;
    }
.end annotation


# virtual methods
.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract getParserForType()Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "+",
            "Lcom/explorestack/protobuf/Message;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hashCode()I
.end method

.method public abstract newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
.end method

.method public abstract toBuilder()Lcom/explorestack/protobuf/Message$Builder;
.end method

.method public abstract toString()Ljava/lang/String;
.end method
