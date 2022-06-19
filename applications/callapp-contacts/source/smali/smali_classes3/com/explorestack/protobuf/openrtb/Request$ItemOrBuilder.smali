.class public interface abstract Lcom/explorestack/protobuf/openrtb/Request$ItemOrBuilder;
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
    name = "ItemOrBuilder"
.end annotation


# virtual methods
.method public abstract getDeal(I)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;
.end method

.method public abstract getDealCount()I
.end method

.method public abstract getDealList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDealOrBuilder(I)Lcom/explorestack/protobuf/openrtb/Request$Item$DealOrBuilder;
.end method

.method public abstract getDealOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$DealOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDlvy()I
.end method

.method public abstract getDt()Ljava/lang/String;
.end method

.method public abstract getDtBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getExp()I
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

.method public abstract getFlr()D
.end method

.method public abstract getFlrcur()Ljava/lang/String;
.end method

.method public abstract getFlrcurBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getIdBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getMetric(I)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;
.end method

.method public abstract getMetricCount()I
.end method

.method public abstract getMetricList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMetricOrBuilder(I)Lcom/explorestack/protobuf/openrtb/Request$Item$MetricOrBuilder;
.end method

.method public abstract getMetricOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$MetricOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPrivate()Z
.end method

.method public abstract getQty()I
.end method

.method public abstract getSeq()I
.end method

.method public abstract getSpec()Lcom/explorestack/protobuf/Any;
.end method

.method public abstract getSpecOrBuilder()Lcom/explorestack/protobuf/AnyOrBuilder;
.end method

.method public abstract hasExt()Z
.end method

.method public abstract hasSpec()Z
.end method
