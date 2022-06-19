.class final Lcom/google/android/material/slider/BaseSlider$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/slider/BaseSlider;->a(Z)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/slider/BaseSlider;


# direct methods
.method constructor <init>(Lcom/google/android/material/slider/BaseSlider;)V
    .locals 0

    .line 1936
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider$2;->a:Lcom/google/android/material/slider/BaseSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1939
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1940
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider$2;->a:Lcom/google/android/material/slider/BaseSlider;

    invoke-static {v0}, Lcom/google/android/material/slider/BaseSlider;->a(Lcom/google/android/material/slider/BaseSlider;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/l/a;

    const v2, 0x3f99999a    # 1.2f

    .line 2359
    iput v2, v1, Lcom/google/android/material/l/a;->c:F

    .line 2360
    iput p1, v1, Lcom/google/android/material/l/a;->a:F

    .line 2361
    iput p1, v1, Lcom/google/android/material/l/a;->b:F

    .line 2362
    invoke-static {p1}, Lcom/google/android/material/a/a;->a(F)F

    move-result v2

    iput v2, v1, Lcom/google/android/material/l/a;->d:F

    .line 2363
    invoke-virtual {v1}, Lcom/google/android/material/l/a;->invalidateSelf()V

    goto :goto_0

    .line 1944
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider$2;->a:Lcom/google/android/material/slider/BaseSlider;

    invoke-static {p1}, Landroidx/core/view/v;->d(Landroid/view/View;)V

    return-void
.end method
