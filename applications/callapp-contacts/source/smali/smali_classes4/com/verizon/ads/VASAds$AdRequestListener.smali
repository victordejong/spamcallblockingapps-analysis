.class public interface abstract Lcom/verizon/ads/VASAds$AdRequestListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/VASAds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AdRequestListener"
.end annotation


# virtual methods
.method public abstract onAdReceived(Lcom/verizon/ads/AdSession;Lcom/verizon/ads/ErrorInfo;Z)V
.end method

.method public abstract prepare(Lcom/verizon/ads/AdSession;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
