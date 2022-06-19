.class public interface abstract Lio/bidmachine/AdRequest$AdRequestListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/AdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AdRequestListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdRequestType:",
        "Lio/bidmachine/AdRequest;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onRequestExpired(Lio/bidmachine/AdRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;)V"
        }
    .end annotation
.end method

.method public abstract onRequestFailed(Lio/bidmachine/AdRequest;Lio/bidmachine/utils/BMError;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;",
            "Lio/bidmachine/utils/BMError;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onRequestSuccess(Lio/bidmachine/AdRequest;Lio/bidmachine/models/AuctionResult;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;",
            "Lio/bidmachine/models/AuctionResult;",
            ")V"
        }
    .end annotation
.end method
