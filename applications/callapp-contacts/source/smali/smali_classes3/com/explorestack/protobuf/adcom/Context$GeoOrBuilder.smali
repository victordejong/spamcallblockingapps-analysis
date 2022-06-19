.class public interface abstract Lcom/explorestack/protobuf/adcom/Context$GeoOrBuilder;
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
    name = "GeoOrBuilder"
.end annotation


# virtual methods
.method public abstract getAccur()I
.end method

.method public abstract getCity()Ljava/lang/String;
.end method

.method public abstract getCityBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getCountry()Ljava/lang/String;
.end method

.method public abstract getCountryBytes()Lcom/explorestack/protobuf/ByteString;
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

.method public abstract getIpserv()Lcom/explorestack/protobuf/adcom/IpLocationService;
.end method

.method public abstract getIpservValue()I
.end method

.method public abstract getLastfix()J
.end method

.method public abstract getLat()F
.end method

.method public abstract getLon()F
.end method

.method public abstract getMetro()Ljava/lang/String;
.end method

.method public abstract getMetroBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getRegion()Ljava/lang/String;
.end method

.method public abstract getRegionBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getType()Lcom/explorestack/protobuf/adcom/LocationType;
.end method

.method public abstract getTypeValue()I
.end method

.method public abstract getUtcoffset()I
.end method

.method public abstract getZip()Ljava/lang/String;
.end method

.method public abstract getZipBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract hasExt()Z
.end method
