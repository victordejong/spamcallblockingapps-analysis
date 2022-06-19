.class public interface abstract Lio/bidmachine/AdFullScreenListener;
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
.method public abstract onAdClosed(Lio/bidmachine/IAd;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdType;Z)V"
        }
    .end annotation
.end method

.method public abstract onAdShowFailed(Lio/bidmachine/IAd;Lio/bidmachine/utils/BMError;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdType;",
            "Lio/bidmachine/utils/BMError;",
            ")V"
        }
    .end annotation
.end method
