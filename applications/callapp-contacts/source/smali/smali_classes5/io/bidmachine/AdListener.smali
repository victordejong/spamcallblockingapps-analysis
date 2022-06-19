.class public interface abstract Lio/bidmachine/AdListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdType::",
        "Lio/bidmachine/IAd;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onAdClicked(Lio/bidmachine/IAd;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdType;)V"
        }
    .end annotation
.end method

.method public abstract onAdExpired(Lio/bidmachine/IAd;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdType;)V"
        }
    .end annotation
.end method

.method public abstract onAdImpression(Lio/bidmachine/IAd;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdType;)V"
        }
    .end annotation
.end method

.method public abstract onAdLoadFailed(Lio/bidmachine/IAd;Lio/bidmachine/utils/BMError;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdType;",
            "Lio/bidmachine/utils/BMError;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onAdLoaded(Lio/bidmachine/IAd;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdType;)V"
        }
    .end annotation
.end method

.method public abstract onAdShown(Lio/bidmachine/IAd;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdType;)V"
        }
    .end annotation
.end method
