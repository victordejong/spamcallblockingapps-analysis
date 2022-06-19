.class public interface abstract Lnet/pubnative/lite/sdk/auction/Auction$Listener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/lite/sdk/auction/Auction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onAuctionFailure(Ljava/lang/Throwable;)V
.end method

.method public abstract onAuctionSuccess(Ljava/util/PriorityQueue;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/PriorityQueue<",
            "Lnet/pubnative/lite/sdk/models/Ad;",
            ">;)V"
        }
    .end annotation
.end method
