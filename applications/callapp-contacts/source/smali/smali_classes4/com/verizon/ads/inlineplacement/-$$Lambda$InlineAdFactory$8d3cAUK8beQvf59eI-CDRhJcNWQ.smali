.class public final synthetic Lcom/verizon/ads/inlineplacement/-$$Lambda$InlineAdFactory$8d3cAUK8beQvf59eI-CDRhJcNWQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/verizon/ads/VASAds$AdRequestListener;


# instance fields
.field public final synthetic f$0:Lcom/verizon/ads/inlineplacement/InlineAdFactory;

.field public final synthetic f$1:Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/verizon/ads/inlineplacement/InlineAdFactory;Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/verizon/ads/inlineplacement/-$$Lambda$InlineAdFactory$8d3cAUK8beQvf59eI-CDRhJcNWQ;->f$0:Lcom/verizon/ads/inlineplacement/InlineAdFactory;

    iput-object p2, p0, Lcom/verizon/ads/inlineplacement/-$$Lambda$InlineAdFactory$8d3cAUK8beQvf59eI-CDRhJcNWQ;->f$1:Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;

    return-void
.end method


# virtual methods
.method public final onAdReceived(Lcom/verizon/ads/AdSession;Lcom/verizon/ads/ErrorInfo;Z)V
    .locals 2

    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/-$$Lambda$InlineAdFactory$8d3cAUK8beQvf59eI-CDRhJcNWQ;->f$0:Lcom/verizon/ads/inlineplacement/InlineAdFactory;

    iget-object v1, p0, Lcom/verizon/ads/inlineplacement/-$$Lambda$InlineAdFactory$8d3cAUK8beQvf59eI-CDRhJcNWQ;->f$1:Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->lambda$8d3cAUK8beQvf59eI-CDRhJcNWQ(Lcom/verizon/ads/inlineplacement/InlineAdFactory;Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;Lcom/verizon/ads/AdSession;Lcom/verizon/ads/ErrorInfo;Z)V

    return-void
.end method

.method public synthetic prepare(Lcom/verizon/ads/AdSession;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/verizon/ads/VASAds$AdRequestListener$-CC;->$default$prepare(Lcom/verizon/ads/VASAds$AdRequestListener;Lcom/verizon/ads/AdSession;)V

    return-void
.end method
