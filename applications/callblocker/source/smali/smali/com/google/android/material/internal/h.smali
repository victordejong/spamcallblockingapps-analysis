.class public Lcom/google/android/material/internal/h;
.super Landroidx/j/m;
.source "TextScale.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroidx/j/m;-><init>()V

    return-void
.end method

.method private d(Landroidx/j/s;)V
    .locals 3

    .prologue
    .line 48
    iget-object v0, p1, Landroidx/j/s;->b:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p1, Landroidx/j/s;->b:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    .line 50
    iget-object v1, p1, Landroidx/j/s;->a:Ljava/util/Map;

    const-string/jumbo v2, "android:textscale:scale"

    invoke-virtual {v0}, Landroid/widget/TextView;->getScaleX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroidx/j/s;Landroidx/j/s;)Landroid/animation/Animator;
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 59
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p2, Landroidx/j/s;->b:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p3, Landroidx/j/s;->b:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v4

    .line 87
    :goto_0
    return-object v0

    .line 65
    :cond_1
    iget-object v0, p3, Landroidx/j/s;->b:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    .line 66
    iget-object v1, p2, Landroidx/j/s;->a:Ljava/util/Map;

    .line 67
    iget-object v5, p3, Landroidx/j/s;->a:Ljava/util/Map;

    .line 68
    const-string/jumbo v2, "android:textscale:scale"

    .line 69
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "android:textscale:scale"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    move v2, v1

    .line 70
    :goto_1
    const-string/jumbo v1, "android:textscale:scale"

    .line 71
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "android:textscale:scale"

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 72
    :cond_2
    cmpl-float v1, v2, v3

    if-nez v1, :cond_4

    move-object v0, v4

    .line 73
    goto :goto_0

    :cond_3
    move v2, v3

    .line 69
    goto :goto_1

    .line 76
    :cond_4
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v4, 0x0

    aput v2, v1, v4

    const/4 v2, 0x1

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 78
    new-instance v2, Lcom/google/android/material/internal/h$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/material/internal/h$1;-><init>(Lcom/google/android/material/internal/h;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object v0, v1

    .line 87
    goto :goto_0
.end method

.method public a(Landroidx/j/s;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/h;->d(Landroidx/j/s;)V

    .line 40
    return-void
.end method

.method public b(Landroidx/j/s;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/h;->d(Landroidx/j/s;)V

    .line 45
    return-void
.end method
