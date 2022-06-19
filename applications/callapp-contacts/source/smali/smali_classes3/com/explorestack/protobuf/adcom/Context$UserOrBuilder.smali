.class public interface abstract Lcom/explorestack/protobuf/adcom/Context$UserOrBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/Context;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UserOrBuilder"
.end annotation


# virtual methods
.method public abstract getBuyeruid()Ljava/lang/String;
.end method

.method public abstract getBuyeruidBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getConsent()Ljava/lang/String;
.end method

.method public abstract getConsentBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getData(I)Lcom/explorestack/protobuf/adcom/Context$Data;
.end method

.method public abstract getDataCount()I
.end method

.method public abstract getDataList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/Context$Data;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDataOrBuilder(I)Lcom/explorestack/protobuf/adcom/Context$DataOrBuilder;
.end method

.method public abstract getDataOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/adcom/Context$DataOrBuilder;",
            ">;"
        }
    .end annotation
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

.method public abstract getGender()Ljava/lang/String;
.end method

.method public abstract getGenderBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;
.end method

.method public abstract getGeoOrBuilder()Lcom/explorestack/protobuf/adcom/Context$GeoOrBuilder;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getIdBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getKeywords()Ljava/lang/String;
.end method

.method public abstract getKeywordsBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getYob()I
.end method

.method public abstract hasExt()Z
.end method

.method public abstract hasGeo()Z
.end method
