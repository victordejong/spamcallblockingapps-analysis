.class public interface abstract Lio/bidmachine/protobuf/AdNetworkOrBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# virtual methods
.method public abstract containsCustomParams(Ljava/lang/String;)Z
.end method

.method public abstract getAdUnits(I)Lio/bidmachine/protobuf/AdNetwork$AdUnit;
.end method

.method public abstract getAdUnitsCount()I
.end method

.method public abstract getAdUnitsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/AdNetwork$AdUnit;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAdUnitsOrBuilder(I)Lio/bidmachine/protobuf/AdNetwork$AdUnitOrBuilder;
.end method

.method public abstract getAdUnitsOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/AdNetwork$AdUnitOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getClassName()Ljava/lang/String;
.end method

.method public abstract getClassNameBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getCustomParams()Ljava/util/Map;
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

.method public abstract getCustomParamsCount()I
.end method

.method public abstract getCustomParamsMap()Ljava/util/Map;
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

.method public abstract getCustomParamsOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getCustomParamsOrThrow(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNameBytes()Lcom/explorestack/protobuf/ByteString;
.end method
