.class public final Lcom/facebook/ads/redexgen/X/Tl;
.super Lcom/facebook/ads/redexgen/X/KO;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/To;->AA7(Lcom/facebook/ads/redexgen/X/Jl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/To;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Jl;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/To;Lcom/facebook/ads/redexgen/X/Jl;)V
    .locals 0

    .line 55487
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Tl;->A00:Lcom/facebook/ads/redexgen/X/To;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Tl;->A01:Lcom/facebook/ads/redexgen/X/Jl;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KO;-><init>()V

    return-void
.end method


# virtual methods
.method public final A01()V
    .locals 2

    .line 55488
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tl;->A00:Lcom/facebook/ads/redexgen/X/To;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/To;->A00(Lcom/facebook/ads/redexgen/X/To;)Lcom/facebook/ads/redexgen/X/5G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5G;->A02()Lcom/facebook/ads/NativeAdsManager$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55489
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tl;->A00:Lcom/facebook/ads/redexgen/X/To;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/To;->A00(Lcom/facebook/ads/redexgen/X/To;)Lcom/facebook/ads/redexgen/X/5G;

    move-result-object v0

    .line 55490
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5G;->A02()Lcom/facebook/ads/NativeAdsManager$Listener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tl;->A01:Lcom/facebook/ads/redexgen/X/Jl;

    .line 55491
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jl;->A00(Lcom/facebook/ads/redexgen/X/Jl;)Lcom/facebook/ads/AdError;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/NativeAdsManager$Listener;->onAdError(Lcom/facebook/ads/AdError;)V

    .line 55492
    :cond_0
    return-void
.end method
