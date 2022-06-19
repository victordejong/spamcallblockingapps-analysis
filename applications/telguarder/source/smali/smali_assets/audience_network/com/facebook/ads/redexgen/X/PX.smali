.class public final Lcom/facebook/ads/redexgen/X/PX;
.super Lcom/facebook/ads/redexgen/X/48;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/48<",
        "Lcom/facebook/ads/redexgen/X/PR;",
        ">;"
    }
.end annotation


# instance fields
.field public A00:I

.field public final A01:I

.field public final A02:Lcom/facebook/ads/redexgen/X/Wm;

.field public final A03:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Wm;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 48368
    .local p3, "screenshotUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/48;-><init>()V

    .line 48369
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/PX;->A00:I

    .line 48370
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/PX;->A03:Ljava/util/List;

    .line 48371
    iput p3, p0, Lcom/facebook/ads/redexgen/X/PX;->A01:I

    .line 48372
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/PX;->A02:Lcom/facebook/ads/redexgen/X/Wm;

    .line 48373
    return-void
.end method

.method private final A01(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/PR;
    .locals 2

    .line 48374
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PX;->A02:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v1, Lcom/facebook/ads/redexgen/X/PS;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/PS;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 48375
    .local p0, "view":Lcom/facebook/ads/redexgen/X/PS;
    new-instance v0, Lcom/facebook/ads/redexgen/X/PR;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/PR;-><init>(Lcom/facebook/ads/redexgen/X/PS;)V

    return-object v0
.end method

.method private final A02(Lcom/facebook/ads/redexgen/X/PR;I)V
    .locals 5

    .line 48376
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PX;->A03:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 48377
    .local p0, "url":Ljava/lang/String;
    const/4 v1, -0x2

    const/4 v0, -0x1

    new-instance v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 48378
    .local p1, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v2, p0, Lcom/facebook/ads/redexgen/X/PX;->A01:I

    mul-int/lit8 v0, v2, 0x4

    .line 48379
    .local v0, "startSpacing":I
    if-nez p2, :cond_0

    move v2, v0

    .line 48380
    .local p2, "leftMargin":I
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PX;->A0E()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt p2, v0, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/PX;->A01:I

    mul-int/lit8 v1, v0, 0x4

    .line 48381
    .local v4, "rightMargin":I
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {v3, v2, v0, v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 48382
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/PR;->A0m()Lcom/facebook/ads/redexgen/X/PS;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/PS;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48383
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/PR;->A0m()Lcom/facebook/ads/redexgen/X/PS;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/PS;->A00(Ljava/lang/String;)V

    .line 48384
    return-void

    .line 48385
    :cond_1
    iget v1, p0, Lcom/facebook/ads/redexgen/X/PX;->A01:I

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic A07(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/4c;
    .locals 1

    .line 48386
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/PX;->A01(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/PR;

    move-result-object v0

    return-object v0
.end method

.method public final A0E()I
    .locals 1

    .line 48387
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PX;->A03:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic A0F(Lcom/facebook/ads/redexgen/X/4c;I)V
    .locals 0

    .line 48388
    check-cast p1, Lcom/facebook/ads/redexgen/X/PR;

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/PX;->A02(Lcom/facebook/ads/redexgen/X/PR;I)V

    return-void
.end method
