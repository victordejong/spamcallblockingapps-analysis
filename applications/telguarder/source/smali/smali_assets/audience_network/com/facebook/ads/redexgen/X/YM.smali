.class public final Lcom/facebook/ads/redexgen/X/YM;
.super Lcom/facebook/ads/redexgen/X/6V;
.source ""


# instance fields
.field public A00:Landroid/content/ContentResolver;

.field public A01:Landroid/util/DisplayMetrics;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5v;)V
    .locals 1

    .line 65803
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/6V;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5v;)V

    .line 65804
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YM;->A01:Landroid/util/DisplayMetrics;

    .line 65805
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YM;->A00:Landroid/content/ContentResolver;

    .line 65806
    return-void
.end method


# virtual methods
.method public final A0H()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 65807
    new-instance v0, Lcom/facebook/ads/redexgen/X/YN;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/YN;-><init>(Lcom/facebook/ads/redexgen/X/YM;)V

    return-object v0
.end method

.method public final A0I()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 65808
    new-instance v0, Lcom/facebook/ads/redexgen/X/YQ;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/YQ;-><init>(Lcom/facebook/ads/redexgen/X/YM;)V

    return-object v0
.end method

.method public final A0J()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 65809
    new-instance v0, Lcom/facebook/ads/redexgen/X/YP;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/YP;-><init>(Lcom/facebook/ads/redexgen/X/YM;)V

    return-object v0
.end method

.method public final A0K()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 65810
    new-instance v0, Lcom/facebook/ads/redexgen/X/YR;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/YR;-><init>(Lcom/facebook/ads/redexgen/X/YM;)V

    return-object v0
.end method

.method public final A0L()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 65811
    new-instance v0, Lcom/facebook/ads/redexgen/X/YO;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/YO;-><init>(Lcom/facebook/ads/redexgen/X/YM;)V

    return-object v0
.end method
