.class public interface abstract Lcom/explorestack/protobuf/openrtb/RequestOrBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# virtual methods
.method public abstract getAt()I
.end method

.method public abstract getCdata()Ljava/lang/String;
.end method

.method public abstract getCdataBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getContext()Lcom/explorestack/protobuf/Any;
.end method

.method public abstract getContextOrBuilder()Lcom/explorestack/protobuf/AnyOrBuilder;
.end method

.method public abstract getCur(I)Ljava/lang/String;
.end method

.method public abstract getCurBytes(I)Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getCurCount()I
.end method

.method public abstract getCurList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
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

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getIdBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getItem(I)Lcom/explorestack/protobuf/openrtb/Request$Item;
.end method

.method public abstract getItemCount()I
.end method

.method public abstract getItemList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/openrtb/Request$Item;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getItemOrBuilder(I)Lcom/explorestack/protobuf/openrtb/Request$ItemOrBuilder;
.end method

.method public abstract getItemOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/openrtb/Request$ItemOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPackage()I
.end method

.method public abstract getSeat(I)Ljava/lang/String;
.end method

.method public abstract getSeatBytes(I)Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getSeatCount()I
.end method

.method public abstract getSeatList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSource()Lcom/explorestack/protobuf/openrtb/Request$Source;
.end method

.method public abstract getSourceOrBuilder()Lcom/explorestack/protobuf/openrtb/Request$SourceOrBuilder;
.end method

.method public abstract getTest()Z
.end method

.method public abstract getTmax()I
.end method

.method public abstract getWseat()Z
.end method

.method public abstract hasContext()Z
.end method

.method public abstract hasExt()Z
.end method

.method public abstract hasSource()Z
.end method
