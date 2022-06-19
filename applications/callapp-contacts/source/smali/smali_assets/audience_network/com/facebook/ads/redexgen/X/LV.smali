.class public final Lcom/facebook/ads/redexgen/X/LV;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/LU;
    }
.end annotation


# instance fields
.field public A00:I

.field public A01:Landroid/view/Window;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Lcom/facebook/ads/redexgen/X/LU;

.field public final A03:Landroid/view/View;

.field public final A04:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 42701
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42702
    sget-object v0, Lcom/facebook/ads/redexgen/X/LU;->A03:Lcom/facebook/ads/redexgen/X/LU;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A02:Lcom/facebook/ads/redexgen/X/LU;

    .line 42703
    new-instance v0, Lcom/facebook/ads/redexgen/X/cb;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/cb;-><init>(Lcom/facebook/ads/redexgen/X/LV;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A04:Ljava/lang/Runnable;

    .line 42704
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/LV;->A03:Landroid/view/View;

    .line 42705
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A03:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 42706
    return-void
.end method

.method private A00(IZ)V
    .locals 3

    .line 42707
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A01:Landroid/view/Window;

    if-nez v0, :cond_0

    .line 42708
    return-void

    .line 42709
    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 42710
    .local p0, "windowsParams":Landroid/view/WindowManager$LayoutParams;
    if-eqz p2, :cond_1

    .line 42711
    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v0, p1

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 42712
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A01:Landroid/view/Window;

    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 42713
    return-void

    .line 42714
    :cond_1
    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    xor-int/lit8 v0, p1, -0x1

    and-int/2addr v1, v0

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/LV;Z)V
    .locals 0

    .line 42715
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/LV;->A02(Z)V

    return-void
.end method

.method private A02(Z)V
    .locals 5

    .line 42716
    sget-object v1, Lcom/facebook/ads/redexgen/X/LU;->A03:Lcom/facebook/ads/redexgen/X/LU;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A02:Lcom/facebook/ads/redexgen/X/LU;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/LU;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42717
    return-void

    .line 42718
    :cond_0
    const/16 v4, 0xf00

    .line 42719
    .local p0, "newVisibilityFlags":I
    if-nez p1, :cond_1

    .line 42720
    or-int/lit8 v4, v4, 0x7

    .line 42721
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A03:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 42722
    .local p1, "handler":Landroid/os/Handler;
    if-eqz v3, :cond_2

    if-eqz p1, :cond_2

    .line 42723
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A04:Ljava/lang/Runnable;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 42724
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/LV;->A04:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7d0

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 42725
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A03:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 42726
    return-void
.end method


# virtual methods
.method public final A03()V
    .locals 1

    .line 42727
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A01:Landroid/view/Window;

    .line 42728
    return-void
.end method

.method public final A04(Landroid/view/Window;)V
    .locals 0

    .line 42729
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/LV;->A01:Landroid/view/Window;

    .line 42730
    return-void
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/LU;)V
    .locals 5

    .line 42731
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/LV;->A02:Lcom/facebook/ads/redexgen/X/LU;

    .line 42732
    sget-object v1, Lcom/facebook/ads/redexgen/X/LT;->A00:[I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A02:Lcom/facebook/ads/redexgen/X/LU;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LU;->ordinal()I

    move-result v0

    aget v4, v1, v0

    const/high16 v3, 0x8000000

    const/high16 v2, 0x4000000

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq v4, v0, :cond_0

    .line 42733
    invoke-direct {p0, v2, v1}, Lcom/facebook/ads/redexgen/X/LV;->A00(IZ)V

    .line 42734
    invoke-direct {p0, v3, v1}, Lcom/facebook/ads/redexgen/X/LV;->A00(IZ)V

    .line 42735
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A03:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 42736
    :goto_0
    return-void

    .line 42737
    :cond_0
    invoke-direct {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/LV;->A00(IZ)V

    .line 42738
    invoke-direct {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/LV;->A00(IZ)V

    .line 42739
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/LV;->A02(Z)V

    .line 42740
    goto :goto_0
.end method

.method public final onSystemUiVisibilityChange(I)V
    .locals 1

    .line 42741
    iget v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A00:I

    xor-int/2addr v0, p1

    .line 42742
    .local p0, "diff":I
    iput p1, p0, Lcom/facebook/ads/redexgen/X/LV;->A00:I

    .line 42743
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    .line 42744
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/LV;->A02(Z)V

    .line 42745
    :cond_0
    return-void
.end method
