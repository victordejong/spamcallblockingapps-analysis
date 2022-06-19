.class public interface abstract Lcom/verizon/ads/Waterfall$WaterfallItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/Waterfall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WaterfallItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/Waterfall$WaterfallItem$FetchResult;
    }
.end annotation


# virtual methods
.method public abstract fetch(Lcom/verizon/ads/AdSession;)Lcom/verizon/ads/Waterfall$WaterfallItem$FetchResult;
.end method

.method public abstract getMetadata()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method
