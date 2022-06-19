.class public final Lfa0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfa0;->a()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public a:Landroid/graphics/ColorMatrix;

.field public b:Landroid/graphics/ColorMatrix;

.field public final synthetic c:Lja0;

.field public final synthetic d:Landroid/view/animation/AccelerateDecelerateInterpolator;


# direct methods
.method public constructor <init>(Lja0;Landroid/view/animation/AccelerateDecelerateInterpolator;)V
    .locals 0

    iput-object p1, p0, Lfa0$a;->c:Lja0;

    iput-object p2, p0, Lfa0$a;->d:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/graphics/ColorMatrix;

    invoke-direct {p1}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object p1, p0, Lfa0$a;->a:Landroid/graphics/ColorMatrix;

    new-instance p1, Landroid/graphics/ColorMatrix;

    invoke-direct {p1}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object p1, p0, Lfa0$a;->b:Landroid/graphics/ColorMatrix;

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    iget-object p1, p0, Lfa0$a;->c:Lja0;

    invoke-virtual {p1}, Lja0;->b()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget-object v0, p0, Lfa0$a;->c:Lja0;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    iget-object v1, p0, Lfa0$a;->a:Landroid/graphics/ColorMatrix;

    iget-object v2, p0, Lfa0$a;->c:Lja0;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    iget-object v1, p0, Lfa0$a;->d:Landroid/view/animation/AccelerateDecelerateInterpolator;

    const/high16 v2, 0x40800000    # 4.0f

    mul-float v2, v2, v0

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;->getInterpolation(F)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    sub-float v1, v2, v1

    iget-object v4, p0, Lfa0$a;->b:Landroid/graphics/ColorMatrix;

    invoke-virtual {v4, v1, v1, v1, v3}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    iget-object v1, p0, Lfa0$a;->a:Landroid/graphics/ColorMatrix;

    iget-object v4, p0, Lfa0$a;->b:Landroid/graphics/ColorMatrix;

    invoke-virtual {v1, v4}, Landroid/graphics/ColorMatrix;->preConcat(Landroid/graphics/ColorMatrix;)V

    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v4, p0, Lfa0$a;->a:Landroid/graphics/ColorMatrix;

    invoke-direct {v1, v4}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v1, p0, Lfa0$a;->d:Landroid/view/animation/AccelerateDecelerateInterpolator;

    mul-float v0, v0, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method
