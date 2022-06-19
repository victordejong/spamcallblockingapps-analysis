.class public final Lcom/facebook/ads/redexgen/X/5F;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/NativeAdViewTypeApi;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Jd;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 13323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13324
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Jd;->A00(I)Lcom/facebook/ads/redexgen/X/Jd;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A00:Lcom/facebook/ads/redexgen/X/Jd;

    .line 13325
    return-void
.end method


# virtual methods
.method public final getHeight()I
    .locals 1

    .line 13326
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A00:Lcom/facebook/ads/redexgen/X/Jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jd;->A03()I

    move-result v0

    return v0
.end method

.method public final getValue()I
    .locals 1

    .line 13327
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A00:Lcom/facebook/ads/redexgen/X/Jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jd;->A04()I

    move-result v0

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .line 13328
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A00:Lcom/facebook/ads/redexgen/X/Jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jd;->A05()I

    move-result v0

    return v0
.end method
