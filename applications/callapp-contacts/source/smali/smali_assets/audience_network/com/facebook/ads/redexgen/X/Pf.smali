.class public final Lcom/facebook/ads/redexgen/X/Pf;
.super Lcom/facebook/ads/redexgen/X/48;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/48<",
        "Lcom/facebook/ads/redexgen/X/Pc;",
        ">;"
    }
.end annotation


# static fields
.field public static final A05:I


# instance fields
.field public A00:I

.field public A01:Z

.field public final A02:I

.field public final A03:Lcom/facebook/ads/redexgen/X/XJ;

.field public final A04:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 48390
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x437a0000    # 250.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Pf;->A05:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/XJ;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 48391
    .local p3, "screenshotUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/48;-><init>()V

    .line 48392
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Pf;->A00:I

    .line 48393
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Pf;->A01:Z

    .line 48394
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Pf;->A04:Ljava/util/List;

    .line 48395
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Pf;->A02:I

    .line 48396
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Pf;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    .line 48397
    return-void
.end method

.method private final A01(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/Pc;
    .locals 2

    .line 48398
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pf;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Pe;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/Pe;-><init>(Lcom/facebook/ads/redexgen/X/XJ;)V

    .line 48399
    .local p0, "view":Lcom/facebook/ads/redexgen/X/Pe;
    new-instance v0, Lcom/facebook/ads/redexgen/X/Pc;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Pc;-><init>(Lcom/facebook/ads/redexgen/X/Pe;)V

    return-object v0
.end method

.method private final A02(Lcom/facebook/ads/redexgen/X/Pc;I)V
    .locals 5

    .line 48400
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pf;->A04:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 48401
    .local p0, "url":Ljava/lang/String;
    const/4 v1, -0x2

    const/4 v0, -0x1

    new-instance v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 48402
    .local p1, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Pf;->A00:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Pf;->A01:Z

    if-eqz v0, :cond_2

    .line 48403
    sget v2, Lcom/facebook/ads/redexgen/X/Pf;->A05:I

    .line 48404
    .local p2, "startSpacing":I
    :goto_0
    if-nez p2, :cond_1

    .line 48405
    .local v0, "leftMargin":I
    :goto_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Pf;->A0E()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt p2, v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Pf;->A02:I

    mul-int/lit8 v1, v0, 0x4

    .line 48406
    .local v4, "rightMargin":I
    :goto_2
    const/4 v0, 0x0

    invoke-virtual {v3, v2, v0, v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 48407
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Pc;->A0m()Lcom/facebook/ads/redexgen/X/Pe;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Pe;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48408
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Pc;->A0m()Lcom/facebook/ads/redexgen/X/Pe;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Pe;->A00(Ljava/lang/String;)V

    .line 48409
    return-void

    .line 48410
    :cond_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Pf;->A02:I

    goto :goto_2

    .line 48411
    :cond_1
    iget v2, p0, Lcom/facebook/ads/redexgen/X/Pf;->A02:I

    goto :goto_1

    .line 48412
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Pf;->A02:I

    mul-int/lit8 v2, v0, 0x4

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic A07(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/4c;
    .locals 1

    .line 48413
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Pf;->A01(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/Pc;

    move-result-object v0

    return-object v0
.end method

.method public final A0E()I
    .locals 1

    .line 48414
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pf;->A04:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic A0F(Lcom/facebook/ads/redexgen/X/4c;I)V
    .locals 0

    .line 48415
    check-cast p1, Lcom/facebook/ads/redexgen/X/Pc;

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Pf;->A02(Lcom/facebook/ads/redexgen/X/Pc;I)V

    return-void
.end method

.method public final A0G(IZ)V
    .locals 0

    .line 48416
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Pf;->A00:I

    .line 48417
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/Pf;->A01:Z

    .line 48418
    return-void
.end method
