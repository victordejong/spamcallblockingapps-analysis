.class public final synthetic Lcom/verizon/ads/inlineplacement/-$$Lambda$InlineAdFactory$ekdGBlnbW5yMdriLHFDJ20E6M-Y;
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

    iput-object p1, p0, Lcom/verizon/ads/inlineplacement/-$$Lambda$InlineAdFactory$ekdGBlnbW5yMdriLHFDJ20E6M-Y;->f$0:Lcom/verizon/ads/BidRequestListener;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/verizon/ads/Bid;Lcom/verizon/ads/ErrorInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/-$$Lambda$InlineAdFactory$ekdGBlnbW5yMdriLHFDJ20E6M-Y;->f$0:Lcom/verizon/ads/BidRequestListener;

    invoke-static {v0, p1, p2}, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->lambda$ekdGBlnbW5yMdriLHFDJ20E6M-Y(Lcom/verizon/ads/BidRequestListener;Lcom/verizon/ads/Bid;Lcom/verizon/ads/ErrorInfo;)V

    return-void
.end method
