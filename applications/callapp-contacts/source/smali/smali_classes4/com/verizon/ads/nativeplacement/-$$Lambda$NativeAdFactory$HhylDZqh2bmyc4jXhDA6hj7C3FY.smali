.class public final synthetic Lcom/verizon/ads/nativeplacement/-$$Lambda$NativeAdFactory$HhylDZqh2bmyc4jXhDA6hj7C3FY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/verizon/ads/BidRequestListener;


# instance fields
.field public final synthetic f$0:Lcom/verizon/ads/BidRequestListener;


# direct methods
.method public synthetic constructor <init>(Lcom/verizon/ads/BidRequestListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/verizon/ads/nativeplacement/-$$Lambda$NativeAdFactory$HhylDZqh2bmyc4jXhDA6hj7C3FY;->f$0:Lcom/verizon/ads/BidRequestListener;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/verizon/ads/Bid;Lcom/verizon/ads/ErrorInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/verizon/ads/nativeplacement/-$$Lambda$NativeAdFactory$HhylDZqh2bmyc4jXhDA6hj7C3FY;->f$0:Lcom/verizon/ads/BidRequestListener;

    invoke-static {v0, p1, p2}, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->lambda$HhylDZqh2bmyc4jXhDA6hj7C3FY(Lcom/verizon/ads/BidRequestListener;Lcom/verizon/ads/Bid;Lcom/verizon/ads/ErrorInfo;)V

    return-void
.end method
