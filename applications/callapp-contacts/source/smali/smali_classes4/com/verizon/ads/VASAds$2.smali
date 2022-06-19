.class final Lcom/verizon/ads/VASAds$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/BidRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/VASAds;->requestBid(Landroid/content/Context;Lcom/verizon/ads/RequestMetadata;ILcom/verizon/ads/BidRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/verizon/ads/BidRequestListener;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/verizon/ads/BidRequestListener;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/verizon/ads/VASAds$2;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/verizon/ads/VASAds$2;->b:Lcom/verizon/ads/BidRequestListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/verizon/ads/Bid;Lcom/verizon/ads/ErrorInfo;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 318
    iget-object v0, p0, Lcom/verizon/ads/VASAds$2;->a:Ljava/lang/String;

    iput-object v0, p1, Lcom/verizon/ads/Bid;->a:Ljava/lang/String;

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/VASAds$2;->b:Lcom/verizon/ads/BidRequestListener;

    invoke-interface {v0, p1, p2}, Lcom/verizon/ads/BidRequestListener;->onComplete(Lcom/verizon/ads/Bid;Lcom/verizon/ads/ErrorInfo;)V

    return-void
.end method
