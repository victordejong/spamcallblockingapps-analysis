.class public interface abstract Lcom/verizon/ads/Waterfall;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/Waterfall$WaterfallItem;
    }
.end annotation


# virtual methods
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

.method public abstract getWaterfallItems()[Lcom/verizon/ads/Waterfall$WaterfallItem;
.end method
