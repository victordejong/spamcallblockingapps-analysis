.class final Landroidx/transition/an;
.super Landroidx/transition/am;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroidx/transition/am;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)F
    .locals 0

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getTransitionAlpha()F

    move-result p1

    return p1
.end method

.method public final a(Landroid/view/View;F)V
    .locals 0

    .line 31
    invoke-virtual {p1, p2}, Landroid/view/View;->setTransitionAlpha(F)V

    return-void
.end method

.method public final a(Landroid/view/View;I)V
    .locals 0

    .line 41
    invoke-virtual {p1, p2}, Landroid/view/View;->setTransitionVisibility(I)V

    return-void
.end method

.method public final a(Landroid/view/View;IIII)V
    .locals 0

    .line 46
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    return-void
.end method

.method public final a(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 0

    .line 51
    invoke-virtual {p1, p2}, Landroid/view/View;->transformMatrixToGlobal(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public final b(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 0

    .line 56
    invoke-virtual {p1, p2}, Landroid/view/View;->transformMatrixToLocal(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public final c(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 0

    .line 61
    invoke-virtual {p1, p2}, Landroid/view/View;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method
