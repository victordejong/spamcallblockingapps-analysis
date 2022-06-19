.class public final Lcom/facebook/ads/redexgen/X/bq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/1i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/bp;->A09(Lcom/facebook/ads/redexgen/X/Wm;Ljava/util/EnumSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/bp;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/bp;)V
    .locals 0

    .line 70410
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bq;->A00:Lcom/facebook/ads/redexgen/X/bp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AB5(Lcom/facebook/ads/AdError;)V
    .locals 2

    .line 70411
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bq;->A00:Lcom/facebook/ads/redexgen/X/bp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bp;->A03(Lcom/facebook/ads/redexgen/X/bp;)Lcom/facebook/ads/redexgen/X/1a;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/AdError;->CACHE_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/1a;->A9L(Lcom/facebook/ads/AdError;)V

    .line 70412
    return-void
.end method

.method public final AB6()V
    .locals 1

    .line 70413
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bq;->A00:Lcom/facebook/ads/redexgen/X/bp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bp;->A03(Lcom/facebook/ads/redexgen/X/bp;)Lcom/facebook/ads/redexgen/X/1a;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/1a;->A9M()V

    .line 70414
    return-void
.end method
