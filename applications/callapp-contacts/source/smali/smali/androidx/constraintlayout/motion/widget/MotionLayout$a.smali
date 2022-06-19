.class final Landroidx/constraintlayout/motion/widget/MotionLayout$a;
.super Landroidx/constraintlayout/motion/widget/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/MotionLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:F

.field b:F

.field c:F

.field final synthetic d:Landroidx/constraintlayout/motion/widget/MotionLayout;


# direct methods
.method constructor <init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
    .locals 0

    .line 1695
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$a;->d:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/n;-><init>()V

    const/4 p1, 0x0

    .line 1696
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$a;->a:F

    .line 1697
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$a;->b:F

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    .line 1728
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$a;->d:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:F

    return v0
.end method

.method public final a(FFF)V
    .locals 0

    .line 1701
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$a;->a:F

    .line 1702
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$a;->b:F

    .line 1703
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$a;->c:F

    return-void
.end method

.method public final getInterpolation(F)F
    .locals 4

    .line 1708
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$a;->a:F

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    .line 1709
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$a;->c:F

    div-float v3, v0, v2

    cmpg-float v3, v3, p1

    if-gez v3, :cond_0

    div-float p1, v0, v2

    .line 1712
    :cond_0
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$a;->d:Landroidx/constraintlayout/motion/widget/MotionLayout;

    mul-float v2, v2, p1

    sub-float/2addr v0, v2

    iput v0, v3, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:F

    .line 1713
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$a;->a:F

    mul-float v0, v0, p1

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$a;->c:F

    mul-float v2, v2, p1

    mul-float v2, v2, p1

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    .line 1714
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$a;->b:F

    :goto_0
    add-float/2addr v0, p1

    return v0

    :cond_1
    neg-float v2, v0

    .line 1717
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$a;->c:F

    div-float/2addr v2, v3

    cmpg-float v2, v2, p1

    if-gez v2, :cond_2

    neg-float p1, v0

    div-float/2addr p1, v3

    .line 1720
    :cond_2
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$a;->d:Landroidx/constraintlayout/motion/widget/MotionLayout;

    mul-float v3, v3, p1

    add-float/2addr v0, v3

    iput v0, v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:F

    .line 1721
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$a;->a:F

    mul-float v0, v0, p1

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$a;->c:F

    mul-float v2, v2, p1

    mul-float v2, v2, p1

    div-float/2addr v2, v1

    add-float/2addr v0, v2

    .line 1722
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$a;->b:F

    goto :goto_0
.end method
