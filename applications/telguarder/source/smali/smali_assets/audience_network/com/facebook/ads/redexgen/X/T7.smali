.class public final Lcom/facebook/ads/redexgen/X/T7;
.super Lcom/facebook/ads/redexgen/X/0q;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/T6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NativeAdImpressionHelper"
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/T6;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/T6;)V
    .locals 0

    .line 53652
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/T7;->A00:Lcom/facebook/ads/redexgen/X/T6;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0q;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/T6;Lcom/facebook/ads/redexgen/X/TG;)V
    .locals 0

    .line 53653
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/T7;-><init>(Lcom/facebook/ads/redexgen/X/T6;)V

    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 1

    .line 53654
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A00:Lcom/facebook/ads/redexgen/X/T6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0L(Lcom/facebook/ads/redexgen/X/T6;)Lcom/facebook/ads/redexgen/X/T5;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53655
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A00:Lcom/facebook/ads/redexgen/X/T6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0L(Lcom/facebook/ads/redexgen/X/T6;)Lcom/facebook/ads/redexgen/X/T5;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/JQ;->AAj()V

    .line 53656
    :cond_0
    return-void
.end method
