.class public interface abstract Lcom/explorestack/protobuf/openrtb/Request$SourceOrBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/openrtb/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SourceOrBuilder"
.end annotation


# virtual methods
.method public abstract getCert()Ljava/lang/String;
.end method

.method public abstract getCertBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getDigest()Ljava/lang/String;
.end method

.method public abstract getDigestBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getDs()Ljava/lang/String;
.end method

.method public abstract getDsBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getDsgver()I
.end method

.method public abstract getExt()Lcom/explorestack/protobuf/Struct;
.end method

.method public abstract getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
.end method

.method public abstract getExtProto(I)Lcom/explorestack/protobuf/Any;
.end method

.method public abstract getExtProtoCount()I
.end method

.method public abstract getExtProtoList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Any;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
.end method

.method public abstract getExtProtoOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/AnyOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPchain()Ljava/lang/String;
.end method

.method public abstract getPchainBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getTid()Ljava/lang/String;
.end method

.method public abstract getTidBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract hasExt()Z
.end method
