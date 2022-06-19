.class public Lcarbon/widget/FrameLayout$LayoutParams;
.super Landroid/widget/FrameLayout$LayoutParams;
.source ""

# interfaces
.implements Lxc0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcarbon/widget/FrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public a:Lxc0$a;

.field public b:I

.field public c:I

.field public d:Ljava/lang/RuntimeException;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iget v0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-gtz v0, :cond_0

    const v0, 0x800033

    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_0
    sget-object v0, Lp80;->FrameLayout_Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lp80;->FrameLayout_Layout_carbon_anchor:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcarbon/widget/FrameLayout$LayoutParams;->b:I

    sget v1, Lp80;->FrameLayout_Layout_carbon_anchorGravity:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcarbon/widget/FrameLayout$LayoutParams;->c:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v0, p0, Lcarbon/widget/FrameLayout$LayoutParams;->d:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_4

    invoke-static {p1, p2}, Lxc0;->b(Landroid/content/Context;Landroid/util/AttributeSet;)Lxc0$a;

    move-result-object p1

    iput-object p1, p0, Lcarbon/widget/FrameLayout$LayoutParams;->a:Lxc0$a;

    iget p2, p1, Lxc0$a;->a:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v1, p2, v0

    if-eqz v1, :cond_1

    iget v1, p1, Lxc0$a;->b:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_2

    :cond_1
    iget v1, p1, Lxc0$a;->i:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_3

    :cond_2
    cmpl-float p2, p2, v0

    if-nez p2, :cond_4

    iget p1, p1, Lxc0$a;->b:F

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcarbon/widget/FrameLayout$LayoutParams;->d:Ljava/lang/RuntimeException;

    throw p1

    :cond_4
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iget p1, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-nez p1, :cond_0

    const p1, 0x800033

    iput p1, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput p1, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-nez p1, :cond_0

    const p1, 0x800033

    iput p1, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcarbon/widget/FrameLayout$LayoutParams;)I
    .locals 0

    iget p0, p0, Lcarbon/widget/FrameLayout$LayoutParams;->b:I

    return p0
.end method

.method public static synthetic c(Lcarbon/widget/FrameLayout$LayoutParams;)I
    .locals 0

    iget p0, p0, Lcarbon/widget/FrameLayout$LayoutParams;->c:I

    return p0
.end method


# virtual methods
.method public a()Lxc0$a;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/FrameLayout$LayoutParams;->a:Lxc0$a;

    if-nez v0, :cond_0

    new-instance v0, Lxc0$a;

    invoke-direct {v0}, Lxc0$a;-><init>()V

    iput-object v0, p0, Lcarbon/widget/FrameLayout$LayoutParams;->a:Lxc0$a;

    :cond_0
    iget-object v0, p0, Lcarbon/widget/FrameLayout$LayoutParams;->a:Lxc0$a;

    return-object v0
.end method

.method public setBaseAttributes(Landroid/content/res/TypedArray;II)V
    .locals 0

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout$LayoutParams;->setBaseAttributes(Landroid/content/res/TypedArray;II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iput-object p1, p0, Lcarbon/widget/FrameLayout$LayoutParams;->d:Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method
