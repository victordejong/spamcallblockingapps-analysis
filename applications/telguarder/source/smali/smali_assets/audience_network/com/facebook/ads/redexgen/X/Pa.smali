.class public final Lcom/facebook/ads/redexgen/X/Pa;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/O7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/PZ;->A08(Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/Lc;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Oo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Oo;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/PZ;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/PZ;Lcom/facebook/ads/redexgen/X/Oo;)V
    .locals 0

    .line 48449
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Pa;->A01:Lcom/facebook/ads/redexgen/X/PZ;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Pa;->A00:Lcom/facebook/ads/redexgen/X/Oo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A9R()V
    .locals 1

    .line 48450
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pa;->A00:Lcom/facebook/ads/redexgen/X/Oo;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oo;->A02()I

    move-result v0

    if-nez v0, :cond_0

    .line 48451
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pa;->A01:Lcom/facebook/ads/redexgen/X/PZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/PZ;->A04(Lcom/facebook/ads/redexgen/X/PZ;)Lcom/facebook/ads/redexgen/X/Q9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0V()V

    .line 48452
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pa;->A01:Lcom/facebook/ads/redexgen/X/PZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/PZ;->A05(Lcom/facebook/ads/redexgen/X/PZ;)Lcom/facebook/ads/redexgen/X/Q9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0V()V

    .line 48453
    return-void
.end method
