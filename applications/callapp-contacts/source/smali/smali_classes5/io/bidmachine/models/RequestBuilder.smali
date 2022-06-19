.class public interface abstract Lio/bidmachine/models/RequestBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SelfType::",
        "Lio/bidmachine/models/RequestBuilder;",
        "ReturnType:",
        "Lio/bidmachine/AdRequest;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract build()Lio/bidmachine/AdRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TReturnType;"
        }
    .end annotation
.end method

.method public abstract disableHeaderBidding()Lio/bidmachine/models/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TSelfType;"
        }
    .end annotation
.end method

.method public abstract enableHeaderBidding()Lio/bidmachine/models/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TSelfType;"
        }
    .end annotation
.end method

.method public abstract setListener(Lio/bidmachine/AdRequest$AdRequestListener;)Lio/bidmachine/models/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdRequest$AdRequestListener<",
            "TReturnType;>;)TSelfType;"
        }
    .end annotation
.end method

.method public abstract setLoadingTimeOut(I)Lio/bidmachine/models/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TSelfType;"
        }
    .end annotation
.end method

.method public abstract setNetworks(Ljava/lang/String;)Lio/bidmachine/models/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TSelfType;"
        }
    .end annotation
.end method

.method public abstract setNetworks(Ljava/util/List;)Lio/bidmachine/models/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/NetworkConfig;",
            ">;)TSelfType;"
        }
    .end annotation
.end method

.method public abstract setPriceFloorParams(Lio/bidmachine/PriceFloorParams;)Lio/bidmachine/models/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/PriceFloorParams;",
            ")TSelfType;"
        }
    .end annotation
.end method

.method public abstract setSessionAdParams(Lio/bidmachine/SessionAdParams;)Lio/bidmachine/models/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/SessionAdParams;",
            ")TSelfType;"
        }
    .end annotation
.end method

.method public abstract setTargetingParams(Lio/bidmachine/TargetingParams;)Lio/bidmachine/models/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/TargetingParams;",
            ")TSelfType;"
        }
    .end annotation
.end method
