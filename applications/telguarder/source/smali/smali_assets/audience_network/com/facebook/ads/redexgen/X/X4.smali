.class public final Lcom/facebook/ads/redexgen/X/X4;
.super Lcom/facebook/ads/redexgen/X/6V;
.source ""


# instance fields
.field public final A00:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5v;)V
    .locals 0

    .line 64918
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/6V;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5v;)V

    .line 64919
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/X4;->A00:Landroid/content/Context;

    .line 64920
    return-void
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/X4;)Landroid/content/Context;
    .locals 0

    .line 64921
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/X4;->A00:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final A0H()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 64922
    new-instance v0, Lcom/facebook/ads/redexgen/X/X5;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/X5;-><init>(Lcom/facebook/ads/redexgen/X/X4;)V

    .line 64923
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method
