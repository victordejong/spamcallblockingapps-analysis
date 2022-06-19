.class public Lcom/callapp/contacts/widget/viewpagertransformer/DepthPageTransformer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;F)V
    .locals 4

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    cmpg-float v2, p2, v2

    if-ltz v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v3, p2, v1

    if-gtz v3, :cond_0

    .line 18
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 19
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 20
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 21
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    return-void

    :cond_0
    cmpg-float v3, p2, v2

    if-gtz v3, :cond_1

    sub-float v1, v2, p2

    .line 25
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    int-to-float v0, v0

    neg-float v1, p2

    mul-float v0, v0, v1

    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    const/high16 v0, 0x3f400000    # 0.75f

    const/high16 v1, 0x3e800000    # 0.25f

    .line 32
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    sub-float/2addr v2, p2

    mul-float v2, v2, v1

    add-float/2addr v2, v0

    .line 33
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 34
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    return-void

    .line 38
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
