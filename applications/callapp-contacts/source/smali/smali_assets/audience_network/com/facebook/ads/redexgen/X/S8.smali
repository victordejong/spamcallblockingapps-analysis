.class public final Lcom/facebook/ads/redexgen/X/S8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/1i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/S9;->A09(Lcom/facebook/ads/redexgen/X/XJ;Ljava/util/EnumSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/S9;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/S9;)V
    .locals 0

    .line 51898
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/S8;->A00:Lcom/facebook/ads/redexgen/X/S9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AB5(Lcom/facebook/ads/AdError;)V
    .locals 2

    .line 51899
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S8;->A00:Lcom/facebook/ads/redexgen/X/S9;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/S9;->A03(Lcom/facebook/ads/redexgen/X/S9;)Lcom/facebook/ads/redexgen/X/1a;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/AdError;->CACHE_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/1a;->A9J(Lcom/facebook/ads/AdError;)V

    .line 51900
    return-void
.end method

.method public final AB6()V
    .locals 1

    .line 51901
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S8;->A00:Lcom/facebook/ads/redexgen/X/S9;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/S9;->A03(Lcom/facebook/ads/redexgen/X/S9;)Lcom/facebook/ads/redexgen/X/1a;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/1a;->A9K()V

    .line 51902
    return-void
.end method
