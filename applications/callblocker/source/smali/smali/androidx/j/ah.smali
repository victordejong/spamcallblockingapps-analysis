.class Landroidx/j/ah;
.super Landroidx/j/ag;
.source "ViewUtilsApi29.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroidx/j/ag;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getTransitionAlpha()F

    move-result v0

    return v0
.end method

.method public a(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 31
    invoke-virtual {p1, p2}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 32
    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 41
    invoke-virtual {p1, p2}, Landroid/view/View;->setTransitionVisibility(I)V

    .line 42
    return-void
.end method

.method public a(Landroid/view/View;IIII)V
    .locals 0

    .prologue
    .line 46
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    .line 47
    return-void
.end method

.method public a(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 0

    .prologue
    .line 51
    invoke-virtual {p1, p2}, Landroid/view/View;->transformMatrixToGlobal(Landroid/graphics/Matrix;)V

    .line 52
    return-void
.end method

.method public b(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 0

    .prologue
    .line 56
    invoke-virtual {p1, p2}, Landroid/view/View;->transformMatrixToLocal(Landroid/graphics/Matrix;)V

    .line 57
    return-void
.end method
