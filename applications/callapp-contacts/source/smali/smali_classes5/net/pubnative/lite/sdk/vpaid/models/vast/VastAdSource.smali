.class public interface abstract Lnet/pubnative/lite/sdk/vpaid/models/vast/VastAdSource;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getAdSystem()Lnet/pubnative/lite/sdk/vpaid/models/vast/AdSystem;
.end method

.method public abstract getCreatives()Lnet/pubnative/lite/sdk/vpaid/models/vast/Creatives;
.end method

.method public abstract getError()Lnet/pubnative/lite/sdk/vpaid/models/vast/Error;
.end method

.method public abstract getExtensions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/pubnative/lite/sdk/vpaid/models/vast/Extension;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getImpressionList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/pubnative/lite/sdk/vpaid/models/vast/Impression;",
            ">;"
        }
    .end annotation
.end method
