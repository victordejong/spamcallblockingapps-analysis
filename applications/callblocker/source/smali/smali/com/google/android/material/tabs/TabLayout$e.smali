.class Lcom/google/android/material/tabs/TabLayout$e;
.super Landroid/widget/LinearLayout;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/tabs/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field a:I

.field b:F

.field final synthetic c:Lcom/google/android/material/tabs/TabLayout;

.field private d:I

.field private final e:Landroid/graphics/Paint;

.field private final f:Landroid/graphics/drawable/GradientDrawable;

.field private g:I

.field private h:I

.field private i:I

.field private j:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(Lcom/google/android/material/tabs/TabLayout;Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 2769
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$e;->c:Lcom/google/android/material/tabs/TabLayout;

    .line 2770
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2759
    iput v0, p0, Lcom/google/android/material/tabs/TabLayout$e;->a:I

    .line 2762
    iput v0, p0, Lcom/google/android/material/tabs/TabLayout$e;->g:I

    .line 2764
    iput v0, p0, Lcom/google/android/material/tabs/TabLayout$e;->h:I

    .line 2765
    iput v0, p0, Lcom/google/android/material/tabs/TabLayout$e;->i:I

    .line 2771
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout$e;->setWillNotDraw(Z)V

    .line 2772
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout$e;->e:Landroid/graphics/Paint;

    .line 2773
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout$e;->f:Landroid/graphics/drawable/GradientDrawable;

    .line 2774
    return-void
.end method

.method private a(Lcom/google/android/material/tabs/TabLayout$h;Landroid/graphics/RectF;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3021
    invoke-static {p1}, Lcom/google/android/material/tabs/TabLayout$h;->c(Lcom/google/android/material/tabs/TabLayout$h;)I

    move-result v1

    .line 3022
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$e;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v2, 0x18

    invoke-static {v0, v2}, Lcom/google/android/material/internal/j;->a(Landroid/content/Context;I)F

    move-result v0

    float-to-int v0, v0

    .line 3024
    if-ge v1, v0, :cond_0

    .line 3028
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$h;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$h;->getRight()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 3029
    div-int/lit8 v2, v0, 0x2

    sub-int v2, v1, v2

    .line 3030
    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    .line 3032
    int-to-float v1, v2

    int-to-float v0, v0

    invoke-virtual {p2, v1, v3, v0, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3033
    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private b()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 2907
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout$e;->a:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout$e;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2911
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_2

    .line 2912
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 2913
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    .line 2915
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout$e;->c:Lcom/google/android/material/tabs/TabLayout;

    iget-boolean v3, v3, Lcom/google/android/material/tabs/TabLayout;->t:Z

    if-nez v3, :cond_0

    instance-of v3, v0, Lcom/google/android/material/tabs/TabLayout$h;

    if-eqz v3, :cond_0

    .line 2916
    check-cast v0, Lcom/google/android/material/tabs/TabLayout$h;

    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$e;->c:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {v1}, Lcom/google/android/material/tabs/TabLayout;->a(Lcom/google/android/material/tabs/TabLayout;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/tabs/TabLayout$e;->a(Lcom/google/android/material/tabs/TabLayout$h;Landroid/graphics/RectF;)V

    .line 2917
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$e;->c:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {v0}, Lcom/google/android/material/tabs/TabLayout;->a(Lcom/google/android/material/tabs/TabLayout;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v2, v0

    .line 2918
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$e;->c:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {v0}, Lcom/google/android/material/tabs/TabLayout;->a(Lcom/google/android/material/tabs/TabLayout;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-int v0, v0

    move v1, v0

    .line 2921
    :cond_0
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout$e;->b:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    iget v0, p0, Lcom/google/android/material/tabs/TabLayout$e;->a:I

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$e;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_1

    .line 2923
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout$e;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout$e;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2924
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 2925
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    .line 2927
    iget-object v5, p0, Lcom/google/android/material/tabs/TabLayout$e;->c:Lcom/google/android/material/tabs/TabLayout;

    iget-boolean v5, v5, Lcom/google/android/material/tabs/TabLayout;->t:Z

    if-nez v5, :cond_3

    instance-of v5, v0, Lcom/google/android/material/tabs/TabLayout$h;

    if-eqz v5, :cond_3

    .line 2928
    check-cast v0, Lcom/google/android/material/tabs/TabLayout$h;

    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout$e;->c:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {v3}, Lcom/google/android/material/tabs/TabLayout;->a(Lcom/google/android/material/tabs/TabLayout;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/google/android/material/tabs/TabLayout$e;->a(Lcom/google/android/material/tabs/TabLayout$h;Landroid/graphics/RectF;)V

    .line 2929
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$e;->c:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {v0}, Lcom/google/android/material/tabs/TabLayout;->a(Lcom/google/android/material/tabs/TabLayout;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v3, v0

    .line 2930
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$e;->c:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {v0}, Lcom/google/android/material/tabs/TabLayout;->a(Lcom/google/android/material/tabs/TabLayout;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-int v0, v0

    move v4, v3

    .line 2933
    :goto_0
    iget v3, p0, Lcom/google/android/material/tabs/TabLayout$e;->b:F

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/google/android/material/tabs/TabLayout$e;->b:F

    sub-float v4, v6, v4

    int-to-float v2, v2

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 2934
    iget v3, p0, Lcom/google/android/material/tabs/TabLayout$e;->b:F

    int-to-float v0, v0

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/google/android/material/tabs/TabLayout$e;->b:F

    sub-float v3, v6, v3

    int-to-float v1, v1

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    float-to-int v1, v0

    .line 2941
    :cond_1
    :goto_1
    invoke-virtual {p0, v2, v1}, Lcom/google/android/material/tabs/TabLayout$e;->a(II)V

    .line 2942
    return-void

    .line 2938
    :cond_2
    const/4 v0, -0x1

    move v1, v0

    move v2, v0

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_0
.end method


# virtual methods
.method a(I)V
    .locals 1

    .prologue
    .line 2777
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$e;->e:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 2778
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$e;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2779
    invoke-static {p0}, Landroidx/core/h/u;->e(Landroid/view/View;)V

    .line 2781
    :cond_0
    return-void
.end method

.method a(IF)V
    .locals 1

    .prologue
    .line 2801
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$e;->j:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$e;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2802
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$e;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2805
    :cond_0
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout$e;->a:I

    .line 2806
    iput p2, p0, Lcom/google/android/material/tabs/TabLayout$e;->b:F

    .line 2807
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout$e;->b()V

    .line 2808
    return-void
.end method

.method a(II)V
    .locals 1

    .prologue
    .line 2945
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout$e;->h:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/material/tabs/TabLayout$e;->i:I

    if-eq p2, v0, :cond_1

    .line 2947
    :cond_0
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout$e;->h:I

    .line 2948
    iput p2, p0, Lcom/google/android/material/tabs/TabLayout$e;->i:I

    .line 2949
    invoke-static {p0}, Landroidx/core/h/u;->e(Landroid/view/View;)V

    .line 2951
    :cond_1
    return-void
.end method

.method a()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2791
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$e;->getChildCount()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 2792
    invoke-virtual {p0, v1}, Lcom/google/android/material/tabs/TabLayout$e;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2793
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    if-gtz v3, :cond_1

    .line 2794
    const/4 v0, 0x1

    .line 2797
    :cond_0
    return v0

    .line 2791
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method b(I)V
    .locals 1

    .prologue
    .line 2784
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout$e;->d:I

    if-eq v0, p1, :cond_0

    .line 2785
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout$e;->d:I

    .line 2786
    invoke-static {p0}, Landroidx/core/h/u;->e(Landroid/view/View;)V

    .line 2788
    :cond_0
    return-void
.end method

.method b(II)V
    .locals 7

    .prologue
    .line 2954
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$e;->j:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$e;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2955
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$e;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2958
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout$e;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2959
    if-nez v0, :cond_2

    .line 2961
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout$e;->b()V

    .line 3005
    :cond_1
    :goto_0
    return-void

    .line 2965
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 2966
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    .line 2968
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$e;->c:Lcom/google/android/material/tabs/TabLayout;

    iget-boolean v1, v1, Lcom/google/android/material/tabs/TabLayout;->t:Z

    if-nez v1, :cond_3

    instance-of v1, v0, Lcom/google/android/material/tabs/TabLayout$h;

    if-eqz v1, :cond_3

    .line 2969
    check-cast v0, Lcom/google/android/material/tabs/TabLayout$h;

    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$e;->c:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {v1}, Lcom/google/android/material/tabs/TabLayout;->a(Lcom/google/android/material/tabs/TabLayout;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/tabs/TabLayout$e;->a(Lcom/google/android/material/tabs/TabLayout$h;Landroid/graphics/RectF;)V

    .line 2970
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$e;->c:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {v0}, Lcom/google/android/material/tabs/TabLayout;->a(Lcom/google/android/material/tabs/TabLayout;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v3, v0

    .line 2971
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$e;->c:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {v0}, Lcom/google/android/material/tabs/TabLayout;->a(Lcom/google/android/material/tabs/TabLayout;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-int v5, v0

    .line 2977
    :cond_3
    iget v2, p0, Lcom/google/android/material/tabs/TabLayout$e;->h:I

    .line 2978
    iget v4, p0, Lcom/google/android/material/tabs/TabLayout$e;->i:I

    .line 2980
    if-ne v2, v3, :cond_4

    if-eq v4, v5, :cond_1

    .line 2981
    :cond_4
    new-instance v6, Landroid/animation/ValueAnimator;

    invoke-direct {v6}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v6, p0, Lcom/google/android/material/tabs/TabLayout$e;->j:Landroid/animation/ValueAnimator;

    .line 2982
    sget-object v0, Lcom/google/android/material/a/a;->b:Landroid/animation/TimeInterpolator;

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2983
    int-to-long v0, p2

    invoke-virtual {v6, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2984
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 2985
    new-instance v0, Lcom/google/android/material/tabs/TabLayout$e$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/tabs/TabLayout$e$1;-><init>(Lcom/google/android/material/tabs/TabLayout$e;IIII)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2995
    new-instance v0, Lcom/google/android/material/tabs/TabLayout$e$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/tabs/TabLayout$e$2;-><init>(Lcom/google/android/material/tabs/TabLayout$e;I)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3003
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 2984
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3037
    .line 3038
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$e;->c:Lcom/google/android/material/tabs/TabLayout;

    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 3039
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$e;->c:Lcom/google/android/material/tabs/TabLayout;

    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 3041
    :goto_0
    iget v2, p0, Lcom/google/android/material/tabs/TabLayout$e;->d:I

    if-ltz v2, :cond_0

    .line 3042
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout$e;->d:I

    .line 3048
    :cond_0
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$e;->c:Lcom/google/android/material/tabs/TabLayout;

    iget v2, v2, Lcom/google/android/material/tabs/TabLayout;->q:I

    packed-switch v2, :pswitch_data_0

    move v0, v1

    move v2, v1

    .line 3070
    :goto_1
    iget v1, p0, Lcom/google/android/material/tabs/TabLayout$e;->h:I

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/google/android/material/tabs/TabLayout$e;->i:I

    iget v3, p0, Lcom/google/android/material/tabs/TabLayout$e;->h:I

    if-le v1, v3, :cond_2

    .line 3072
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$e;->c:Lcom/google/android/material/tabs/TabLayout;

    iget-object v1, v1, Lcom/google/android/material/tabs/TabLayout;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$e;->c:Lcom/google/android/material/tabs/TabLayout;

    iget-object v1, v1, Lcom/google/android/material/tabs/TabLayout;->i:Landroid/graphics/drawable/Drawable;

    .line 3073
    :goto_2
    invoke-static {v1}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3075
    iget v3, p0, Lcom/google/android/material/tabs/TabLayout$e;->h:I

    iget v4, p0, Lcom/google/android/material/tabs/TabLayout$e;->i:I

    invoke-virtual {v1, v3, v2, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3076
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$e;->e:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    .line 3077
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ne v0, v2, :cond_4

    .line 3079
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$e;->e:Landroid/graphics/Paint;

    .line 3080
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 3079
    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 3085
    :cond_1
    :goto_3
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3089
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 3090
    return-void

    .line 3050
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$e;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    .line 3051
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$e;->getHeight()I

    move-result v0

    move v2, v1

    .line 3052
    goto :goto_1

    .line 3054
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$e;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    .line 3055
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$e;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    move v2, v1

    .line 3056
    goto :goto_1

    :pswitch_2
    move v2, v1

    .line 3060
    goto :goto_1

    .line 3063
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$e;->getHeight()I

    move-result v0

    move v2, v1

    .line 3064
    goto :goto_1

    .line 3072
    :cond_3
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$e;->f:Landroid/graphics/drawable/GradientDrawable;

    goto :goto_2

    .line 3082
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$e;->e:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-static {v1, v0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_0

    .line 3048
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .prologue
    .line 2890
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 2892
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$e;->j:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$e;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2895
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$e;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2896
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$e;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    .line 2897
    iget v2, p0, Lcom/google/android/material/tabs/TabLayout$e;->a:I

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v4, p0, Lcom/google/android/material/tabs/TabLayout$e;->j:Landroid/animation/ValueAnimator;

    .line 2899
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v4

    sub-float/2addr v3, v4

    long-to-float v0, v0

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 2897
    invoke-virtual {p0, v2, v0}, Lcom/google/android/material/tabs/TabLayout$e;->b(II)V

    .line 2904
    :goto_0
    return-void

    .line 2902
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout$e;->b()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 2830
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2832
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_1

    .line 2886
    :cond_0
    :goto_0
    return-void

    .line 2841
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$e;->c:Lcom/google/android/material/tabs/TabLayout;

    iget v0, v0, Lcom/google/android/material/tabs/TabLayout;->o:I

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$e;->c:Lcom/google/android/material/tabs/TabLayout;

    iget v0, v0, Lcom/google/android/material/tabs/TabLayout;->r:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2842
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$e;->getChildCount()I

    move-result v6

    move v2, v5

    move v1, v5

    .line 2846
    :goto_1
    if-ge v2, v6, :cond_3

    .line 2847
    invoke-virtual {p0, v2}, Lcom/google/android/material/tabs/TabLayout$e;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2848
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_8

    .line 2849
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2846
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_1

    .line 2853
    :cond_3
    if-lez v1, :cond_0

    .line 2858
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$e;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v2, 0x10

    invoke-static {v0, v2}, Lcom/google/android/material/internal/j;->a(Landroid/content/Context;I)F

    move-result v0

    float-to-int v0, v0

    .line 2861
    mul-int v2, v1, v6

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$e;->getMeasuredWidth()I

    move-result v4

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v4, v0

    if-gt v2, v0, :cond_5

    move v4, v5

    move v2, v5

    .line 2864
    :goto_3
    if-ge v4, v6, :cond_6

    .line 2865
    invoke-virtual {p0, v4}, Lcom/google/android/material/tabs/TabLayout$e;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2866
    iget v5, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-ne v5, v1, :cond_4

    iget v5, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v5, v5, v7

    if-eqz v5, :cond_7

    .line 2867
    :cond_4
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 2868
    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v0, v3

    .line 2864
    :goto_4
    add-int/lit8 v4, v4, 0x1

    move v2, v0

    goto :goto_3

    .line 2876
    :cond_5
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$e;->c:Lcom/google/android/material/tabs/TabLayout;

    iput v5, v0, Lcom/google/android/material/tabs/TabLayout;->o:I

    .line 2877
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$e;->c:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, v5}, Lcom/google/android/material/tabs/TabLayout;->a(Z)V

    move v2, v3

    .line 2881
    :cond_6
    if-eqz v2, :cond_0

    .line 2883
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_0

    :cond_7
    move v0, v2

    goto :goto_4

    :cond_8
    move v0, v1

    goto :goto_2
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2

    .prologue
    .line 2816
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    .line 2820
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 2821
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout$e;->g:I

    if-eq v0, p1, :cond_0

    .line 2822
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$e;->requestLayout()V

    .line 2823
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout$e;->g:I

    .line 2826
    :cond_0
    return-void
.end method
