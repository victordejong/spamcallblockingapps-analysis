.class public interface abstract Lio/bidmachine/IAd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SelfType::",
        "Lio/bidmachine/IAd;",
        "AdRequestType:",
        "Lio/bidmachine/AdRequest;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract canShow()Z
.end method

.method public abstract destroy()V
.end method

.method public abstract getAuctionResult()Lio/bidmachine/models/AuctionResult;
.end method

.method public abstract isDestroyed()Z
.end method

.method public abstract isExpired()Z
.end method

.method public abstract isLoaded()Z
.end method

.method public abstract isLoading()Z
.end method

.method public abstract load(Lio/bidmachine/AdRequest;)Lio/bidmachine/IAd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;)TSelfType;"
        }
    .end annotation
.end method
