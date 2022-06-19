.class public interface abstract Lnet/pubnative/lite/sdk/auction/AdSource$Listener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/lite/sdk/auction/AdSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onAdFetched(Lnet/pubnative/lite/sdk/models/Ad;)V
.end method

.method public abstract onError(Lnet/pubnative/lite/sdk/auction/AuctionError;)V
.end method
