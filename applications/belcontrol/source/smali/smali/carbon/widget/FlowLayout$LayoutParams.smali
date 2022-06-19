.class public Lcarbon/widget/FlowLayout$LayoutParams;
.super Landroid/widget/FrameLayout$LayoutParams;
.source ""

# interfaces
.implements Lxc0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcarbon/widget/FlowLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public a:Lxc0$a;

.field public b:Ljava/lang/RuntimeException;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iget-object v0, p0, Lcarbon/widget/FlowLayout$LayoutParams;->b:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_3

    invoke-static {p1, p2}, Lxc0;->b(Landroid/content/Context;Landroid/util/AttributeSet;)Lxc0$a;

    move-result-object p1

    iput-object p1, p0, Lcarbon/widget/FlowLayout$LayoutParams;->a:Lxc0$a;

    iget p2, p1, Lxc0$a;->a:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v1, p2, v0

    if-eqz v1, :cond_0

    iget v1, p1, Lxc0$a;->b:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_1

    :cond_0
    iget v1, p1, Lxc0$a;->i:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_2

    :cond_1
    cmpl-float p2, p2, v0

    if-nez p2, :cond_3

    iget p1, p1, Lxc0$a;->b:F

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcarbon/widget/FlowLayout$LayoutParams;->b:Ljava/lang/RuntimeException;

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput p1, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return-void
.end method


# virtual methods
.method public a()Lxc0$a;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/FlowLayout$LayoutParams;->a:Lxc0$a;

    if-nez v0, :cond_0

    new-instance v0, Lxc0$a;

    invoke-direct {v0}, Lxc0$a;-><init>()V

    iput-object v0, p0, Lcarbon/widget/FlowLayout$LayoutParams;->a:Lxc0$a;

    :cond_0
    iget-object v0, p0, Lcarbon/widget/FlowLayout$LayoutParams;->a:Lxc0$a;

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

    iput-object p1, p0, Lcarbon/widget/FlowLayout$LayoutParams;->b:Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method
