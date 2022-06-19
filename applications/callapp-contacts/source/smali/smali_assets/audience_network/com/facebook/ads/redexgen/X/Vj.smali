.class public final Lcom/facebook/ads/redexgen/X/Vj;
.super Lcom/facebook/ads/redexgen/X/6V;
.source ""


# instance fields
.field public A00:Landroid/content/ContentResolver;

.field public A01:Landroid/util/DisplayMetrics;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5v;)V
    .locals 1

    .line 56549
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/6V;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5v;)V

    .line 56550
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vj;->A01:Landroid/util/DisplayMetrics;

    .line 56551
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vj;->A00:Landroid/content/ContentResolver;

    .line 56552
    return-void
.end method


# virtual methods
.method public final A0H()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 56553
    new-instance v0, Lcom/facebook/ads/redexgen/X/Vi;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Vi;-><init>(Lcom/facebook/ads/redexgen/X/Vj;)V

    return-object v0
.end method

.method public final A0I()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 56554
    new-instance v0, Lcom/facebook/ads/redexgen/X/Vf;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Vf;-><init>(Lcom/facebook/ads/redexgen/X/Vj;)V

    return-object v0
.end method

.method public final A0J()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 56555
    new-instance v0, Lcom/facebook/ads/redexgen/X/Vg;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Vg;-><init>(Lcom/facebook/ads/redexgen/X/Vj;)V

    return-object v0
.end method

.method public final A0K()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 56556
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ve;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ve;-><init>(Lcom/facebook/ads/redexgen/X/Vj;)V

    return-object v0
.end method

.method public final A0L()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 56557
    new-instance v0, Lcom/facebook/ads/redexgen/X/Vh;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Vh;-><init>(Lcom/facebook/ads/redexgen/X/Vj;)V

    return-object v0
.end method
