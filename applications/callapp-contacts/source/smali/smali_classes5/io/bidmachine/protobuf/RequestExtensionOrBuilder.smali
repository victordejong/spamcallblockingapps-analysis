.class public interface abstract Lio/bidmachine/protobuf/RequestExtensionOrBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# virtual methods
.method public abstract containsSellerData(Ljava/lang/String;)Z
.end method

.method public abstract getBmIfv()Ljava/lang/String;
.end method

.method public abstract getBmIfvBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getHeaderBiddingType()Lio/bidmachine/protobuf/HeaderBiddingType;
.end method

.method public abstract getHeaderBiddingTypeValue()I
.end method

.method public abstract getIfv()Ljava/lang/String;
.end method

.method public abstract getIfvBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getSellerData()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getSellerDataCount()I
.end method

.method public abstract getSellerDataMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSellerDataOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getSellerDataOrThrow(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getSellerId()Ljava/lang/String;
.end method

.method public abstract getSellerIdBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getSessionId()Ljava/lang/String;
.end method

.method public abstract getSessionIdBytes()Lcom/explorestack/protobuf/ByteString;
.end method
