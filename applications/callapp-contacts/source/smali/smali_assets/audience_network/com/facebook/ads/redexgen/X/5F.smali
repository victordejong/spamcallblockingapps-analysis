.class public final Lcom/facebook/ads/redexgen/X/5F;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/NativeAdViewTypeApi;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Jb;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 13231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13232
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Jb;->A00(I)Lcom/facebook/ads/redexgen/X/Jb;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A00:Lcom/facebook/ads/redexgen/X/Jb;

    .line 13233
    return-void
.end method


# virtual methods
.method public final getHeight()I
    .locals 1

    .line 13234
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A00:Lcom/facebook/ads/redexgen/X/Jb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jb;->A03()I

    move-result v0

    return v0
.end method

.method public final getValue()I
    .locals 1

    .line 13235
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A00:Lcom/facebook/ads/redexgen/X/Jb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jb;->A04()I

    move-result v0

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .line 13236
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A00:Lcom/facebook/ads/redexgen/X/Jb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jb;->A05()I

    move-result v0

    return v0
.end method
