.class public interface abstract Lcom/explorestack/protobuf/openrtb/ResponseOrBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# virtual methods
.method public abstract getBidid()Ljava/lang/String;
.end method

.method public abstract getBididBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getCdata()Ljava/lang/String;
.end method

.method public abstract getCdataBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getCur()Ljava/lang/String;
.end method

.method public abstract getCurBytes()Lcom/explorestack/protobuf/ByteString;
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

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getIdBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getNbr()Lcom/explorestack/protobuf/openrtb/NoBidReason;
.end method

.method public abstract getNbrValue()I
.end method

.method public abstract getSeatbid(I)Lcom/explorestack/protobuf/openrtb/Response$Seatbid;
.end method

.method public abstract getSeatbidCount()I
.end method

.method public abstract getSeatbidList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSeatbidOrBuilder(I)Lcom/explorestack/protobuf/openrtb/Response$SeatbidOrBuilder;
.end method

.method public abstract getSeatbidOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/openrtb/Response$SeatbidOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasExt()Z
.end method
