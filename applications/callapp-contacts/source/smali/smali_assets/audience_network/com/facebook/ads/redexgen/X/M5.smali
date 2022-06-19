.class public final Lcom/facebook/ads/redexgen/X/M5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/cj;-><init>(Lcom/facebook/ads/redexgen/X/XJ;ILcom/facebook/ads/redexgen/X/1I;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M9;Lcom/facebook/ads/redexgen/X/QE;Lcom/facebook/ads/redexgen/X/La;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/cj;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/cj;)V
    .locals 0

    .line 43525
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/M5;->A00:Lcom/facebook/ads/redexgen/X/cj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSystemUiVisibilityChange(I)V
    .locals 6

    .line 43526
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M5;->A00:Lcom/facebook/ads/redexgen/X/cj;

    .line 43527
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cj;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    const/4 v5, 0x0

    if-ne v0, v1, :cond_8

    const/4 v4, 0x1

    .line 43528
    .local p0, "isPortrait":Z
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M5;->A00:Lcom/facebook/ads/redexgen/X/cj;

    if-eqz v4, :cond_7

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cj;->A02(Lcom/facebook/ads/redexgen/X/cj;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v3

    .line 43529
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_1
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_3

    .line 43530
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M5;->A00:Lcom/facebook/ads/redexgen/X/cj;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/cj;->A0A(Lcom/facebook/ads/redexgen/X/cj;Z)Z

    .line 43531
    if-eqz v4, :cond_2

    invoke-static {}, Lcom/facebook/ads/redexgen/X/cj;->A00()I

    move-result v2

    .line 43532
    :goto_2
    if-eqz v4, :cond_1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/cj;->A00()I

    move-result v1

    .line 43533
    :goto_3
    if-eqz v4, :cond_0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/cj;->A00()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    .line 43534
    :goto_4
    invoke-virtual {v3, v2, v5, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 43535
    :goto_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M5;->A00:Lcom/facebook/ads/redexgen/X/cj;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/cj;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43536
    return-void

    .line 43537
    :cond_0
    const/4 v0, 0x0

    goto :goto_4

    .line 43538
    :cond_1
    const/4 v1, 0x0

    goto :goto_3

    .line 43539
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 43540
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M5;->A00:Lcom/facebook/ads/redexgen/X/cj;

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/cj;->A0A(Lcom/facebook/ads/redexgen/X/cj;Z)Z

    .line 43541
    if-eqz v4, :cond_6

    invoke-static {}, Lcom/facebook/ads/redexgen/X/cj;->A00()I

    move-result v2

    .line 43542
    :goto_6
    if-eqz v4, :cond_5

    invoke-static {}, Lcom/facebook/ads/redexgen/X/cj;->A00()I

    move-result v1

    .line 43543
    :goto_7
    if-eqz v4, :cond_4

    invoke-static {}, Lcom/facebook/ads/redexgen/X/cj;->A00()I

    move-result v0

    .line 43544
    :goto_8
    invoke-virtual {v3, v2, v5, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_5

    .line 43545
    :cond_4
    const/4 v0, 0x0

    goto :goto_8

    .line 43546
    :cond_5
    const/4 v1, 0x0

    goto :goto_7

    .line 43547
    :cond_6
    const/4 v2, 0x0

    goto :goto_6

    .line 43548
    :cond_7
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cj;->A03(Lcom/facebook/ads/redexgen/X/cj;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v3

    goto :goto_1

    .line 43549
    :cond_8
    const/4 v4, 0x0

    goto :goto_0
.end method
