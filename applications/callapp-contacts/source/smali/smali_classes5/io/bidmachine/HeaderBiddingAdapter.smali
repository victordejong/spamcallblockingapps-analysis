.class public interface abstract Lio/bidmachine/HeaderBiddingAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract collectHeaderBiddingParams(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/HeaderBiddingAdRequestParams;Lio/bidmachine/HeaderBiddingCollectParamsCallback;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/ContextProvider;",
            "Lio/bidmachine/unified/UnifiedAdRequestParams;",
            "Lio/bidmachine/HeaderBiddingAdRequestParams;",
            "Lio/bidmachine/HeaderBiddingCollectParamsCallback;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getKey()Ljava/lang/String;
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method
