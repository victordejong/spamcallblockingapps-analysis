.class public abstract Lcom/verizon/ads/WaterfallProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/Component;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/WaterfallProvider$WaterfallListener;
    }
.end annotation


# instance fields
.field protected final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/verizon/ads/WaterfallProvider;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getBiddingToken(Lcom/verizon/ads/RequestMetadata;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract isSuperAuctionSupported()Z
.end method

.method public abstract load(Lcom/verizon/ads/Bid;ILcom/verizon/ads/WaterfallProvider$WaterfallListener;)V
.end method

.method public abstract load(Lcom/verizon/ads/RequestMetadata;ILcom/verizon/ads/WaterfallProvider$WaterfallListener;)V
.end method

.method public abstract requestBid(Lcom/verizon/ads/RequestMetadata;ILcom/verizon/ads/BidRequestListener;)V
.end method
