.class public final Lcom/facebook/ads/redexgen/X/aW;
.super Lcom/facebook/ads/redexgen/X/KQ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/aV;->A0D()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/aV;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/aV;)V
    .locals 0

    .line 67379
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aW;->A00:Lcom/facebook/ads/redexgen/X/aV;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KQ;-><init>()V

    return-void
.end method


# virtual methods
.method public final A02()V
    .locals 2

    .line 67380
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aW;->A00:Lcom/facebook/ads/redexgen/X/aV;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aV;->A01(Lcom/facebook/ads/redexgen/X/aV;)Lcom/facebook/ads/redexgen/X/4v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A07()Lcom/facebook/ads/AdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67381
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aW;->A00:Lcom/facebook/ads/redexgen/X/aV;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aV;->A01(Lcom/facebook/ads/redexgen/X/aV;)Lcom/facebook/ads/redexgen/X/4v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A07()Lcom/facebook/ads/AdListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aW;->A00:Lcom/facebook/ads/redexgen/X/aV;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aV;->A01(Lcom/facebook/ads/redexgen/X/aV;)Lcom/facebook/ads/redexgen/X/4v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A08()Lcom/facebook/ads/AdView;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/AdListener;->onLoggingImpression(Lcom/facebook/ads/Ad;)V

    .line 67382
    :cond_0
    return-void
.end method
