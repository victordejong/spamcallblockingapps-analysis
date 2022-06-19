.class public interface abstract Lcom/verizon/ads/WaterfallProvider$WaterfallListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/WaterfallProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WaterfallListener"
.end annotation


# virtual methods
.method public abstract onAdSessionsReceived(Ljava/util/List;Lcom/verizon/ads/ErrorInfo;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/verizon/ads/AdSession;",
            ">;",
            "Lcom/verizon/ads/ErrorInfo;",
            ")V"
        }
    .end annotation
.end method
