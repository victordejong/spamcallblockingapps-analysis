.class final Lcom/google/android/material/slider/BaseSlider$b;
.super Landroidx/customview/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/slider/BaseSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field e:Landroid/graphics/Rect;

.field private final f:Lcom/google/android/material/slider/BaseSlider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/slider/BaseSlider<",
            "***>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/material/slider/BaseSlider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/slider/BaseSlider<",
            "***>;)V"
        }
    .end annotation

    .line 2479
    invoke-direct {p0, p1}, Landroidx/customview/a/a;-><init>(Landroid/view/View;)V

    .line 2476
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider$b;->e:Landroid/graphics/Rect;

    .line 2480
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider$b;->f:Lcom/google/android/material/slider/BaseSlider;

    return-void
.end method


# virtual methods
.method public final a(FF)I
    .locals 4

    const/4 v0, 0x0

    .line 2485
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider$b;->f:Lcom/google/android/material/slider/BaseSlider;

    invoke-virtual {v1}, Lcom/google/android/material/slider/BaseSlider;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2486
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider$b;->f:Lcom/google/android/material/slider/BaseSlider;

    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider$b;->e:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/material/slider/BaseSlider;->a(ILandroid/graphics/Rect;)V

    .line 2487
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider$b;->e:Landroid/graphics/Rect;

    float-to-int v2, p1

    float-to-int v3, p2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final a(ILandroidx/core/view/a/c;)V
    .locals 7

    .line 2506
    sget-object v0, Landroidx/core/view/a/c$a;->H:Landroidx/core/view/a/c$a;

    invoke-virtual {p2, v0}, Landroidx/core/view/a/c;->a(Landroidx/core/view/a/c$a;)V

    .line 2508
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider$b;->f:Lcom/google/android/material/slider/BaseSlider;

    invoke-virtual {v0}, Lcom/google/android/material/slider/BaseSlider;->c()Ljava/util/List;

    move-result-object v0

    .line 2509
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 2510
    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider$b;->f:Lcom/google/android/material/slider/BaseSlider;

    invoke-virtual {v2}, Lcom/google/android/material/slider/BaseSlider;->a()F

    move-result v2

    .line 2511
    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider$b;->f:Lcom/google/android/material/slider/BaseSlider;

    invoke-virtual {v3}, Lcom/google/android/material/slider/BaseSlider;->b()F

    move-result v3

    .line 2513
    iget-object v4, p0, Lcom/google/android/material/slider/BaseSlider$b;->f:Lcom/google/android/material/slider/BaseSlider;

    invoke-virtual {v4}, Lcom/google/android/material/slider/BaseSlider;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    cmpl-float v4, v1, v2

    if-lez v4, :cond_0

    const/16 v4, 0x2000

    .line 2515
    invoke-virtual {p2, v4}, Landroidx/core/view/a/c;->a(I)V

    :cond_0
    cmpg-float v4, v1, v3

    if-gez v4, :cond_1

    const/16 v4, 0x1000

    .line 2518
    invoke-virtual {p2, v4}, Landroidx/core/view/a/c;->a(I)V

    .line 2996
    :cond_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    const/4 v6, 0x1

    if-lt v4, v5, :cond_2

    .line 2997
    new-instance v4, Landroidx/core/view/a/c$d;

    .line 2998
    invoke-static {v6, v2, v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    move-result-object v2

    invoke-direct {v4, v2}, Landroidx/core/view/a/c$d;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 3000
    :cond_2
    new-instance v4, Landroidx/core/view/a/c$d;

    const/4 v2, 0x0

    invoke-direct {v4, v2}, Landroidx/core/view/a/c$d;-><init>(Ljava/lang/Object;)V

    .line 3960
    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v5, :cond_3

    .line 3961
    iget-object v2, p2, Landroidx/core/view/a/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v3, v4, Landroidx/core/view/a/c$d;->a:Ljava/lang/Object;

    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)V

    .line 2523
    :cond_3
    const-class v2, Landroid/widget/SeekBar;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroidx/core/view/a/c;->b(Ljava/lang/CharSequence;)V

    .line 2524
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2526
    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider$b;->f:Lcom/google/android/material/slider/BaseSlider;

    invoke-virtual {v3}, Lcom/google/android/material/slider/BaseSlider;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 2527
    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider$b;->f:Lcom/google/android/material/slider/BaseSlider;

    invoke-virtual {v3}, Lcom/google/android/material/slider/BaseSlider;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2530
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v6, :cond_7

    .line 4542
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider$b;->f:Lcom/google/android/material/slider/BaseSlider;

    invoke-virtual {v0}, Lcom/google/android/material/slider/BaseSlider;->c()Ljava/util/List;

    move-result-object v0

    .line 4543
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v6

    if-ne p1, v0, :cond_5

    .line 4544
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider$b;->f:Lcom/google/android/material/slider/BaseSlider;

    invoke-virtual {v0}, Lcom/google/android/material/slider/BaseSlider;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/google/android/material/a$j;->material_slider_range_end:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    if-nez p1, :cond_6

    .line 4548
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider$b;->f:Lcom/google/android/material/slider/BaseSlider;

    invoke-virtual {v0}, Lcom/google/android/material/slider/BaseSlider;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/google/android/material/a$j;->material_slider_range_start:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    const-string v0, ""

    .line 2531
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2532
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider$b;->f:Lcom/google/android/material/slider/BaseSlider;

    invoke-static {v0, v1}, Lcom/google/android/material/slider/BaseSlider;->a(Lcom/google/android/material/slider/BaseSlider;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2534
    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/a/c;->e(Ljava/lang/CharSequence;)V

    .line 2536
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider$b;->f:Lcom/google/android/material/slider/BaseSlider;

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider$b;->e:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/slider/BaseSlider;->a(ILandroid/graphics/Rect;)V

    .line 2537
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider$b;->e:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroidx/core/view/a/c;->b(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2497
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider$b;->f:Lcom/google/android/material/slider/BaseSlider;

    invoke-virtual {v1}, Lcom/google/android/material/slider/BaseSlider;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2498
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(IILandroid/os/Bundle;)Z
    .locals 4

    .line 2557
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider$b;->f:Lcom/google/android/material/slider/BaseSlider;

    invoke-virtual {v0}, Lcom/google/android/material/slider/BaseSlider;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x1000

    const/4 v2, 0x1

    const/16 v3, 0x2000

    if-eq p2, v0, :cond_4

    if-eq p2, v3, :cond_4

    const v0, 0x102003d

    if-eq p2, v0, :cond_1

    return v1

    :cond_1
    if-eqz p3, :cond_3

    const-string p2, "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

    .line 2565
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 2570
    :cond_2
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p2

    .line 2571
    iget-object p3, p0, Lcom/google/android/material/slider/BaseSlider$b;->f:Lcom/google/android/material/slider/BaseSlider;

    invoke-static {p3, p1, p2}, Lcom/google/android/material/slider/BaseSlider;->a(Lcom/google/android/material/slider/BaseSlider;IF)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 2572
    iget-object p2, p0, Lcom/google/android/material/slider/BaseSlider$b;->f:Lcom/google/android/material/slider/BaseSlider;

    invoke-static {p2}, Lcom/google/android/material/slider/BaseSlider;->c(Lcom/google/android/material/slider/BaseSlider;)V

    .line 2573
    iget-object p2, p0, Lcom/google/android/material/slider/BaseSlider$b;->f:Lcom/google/android/material/slider/BaseSlider;

    invoke-virtual {p2}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    .line 2574
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider$b;->a(I)V

    return v2

    :cond_3
    :goto_0
    return v1

    .line 2582
    :cond_4
    iget-object p3, p0, Lcom/google/android/material/slider/BaseSlider$b;->f:Lcom/google/android/material/slider/BaseSlider;

    invoke-static {p3}, Lcom/google/android/material/slider/BaseSlider;->d(Lcom/google/android/material/slider/BaseSlider;)F

    move-result p3

    if-ne p2, v3, :cond_5

    neg-float p3, p3

    .line 2588
    :cond_5
    iget-object p2, p0, Lcom/google/android/material/slider/BaseSlider$b;->f:Lcom/google/android/material/slider/BaseSlider;

    invoke-virtual {p2}, Lcom/google/android/material/slider/BaseSlider;->i()Z

    move-result p2

    if-eqz p2, :cond_6

    neg-float p3, p3

    .line 2592
    :cond_6
    iget-object p2, p0, Lcom/google/android/material/slider/BaseSlider$b;->f:Lcom/google/android/material/slider/BaseSlider;

    invoke-virtual {p2}, Lcom/google/android/material/slider/BaseSlider;->c()Ljava/util/List;

    move-result-object p2

    .line 2595
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    add-float/2addr p2, p3

    iget-object p3, p0, Lcom/google/android/material/slider/BaseSlider$b;->f:Lcom/google/android/material/slider/BaseSlider;

    .line 2596
    invoke-virtual {p3}, Lcom/google/android/material/slider/BaseSlider;->a()F

    move-result p3

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider$b;->f:Lcom/google/android/material/slider/BaseSlider;

    .line 2597
    invoke-virtual {v0}, Lcom/google/android/material/slider/BaseSlider;->b()F

    move-result v0

    .line 2594
    invoke-static {p2, p3, v0}, Landroidx/core/b/a;->a(FFF)F

    move-result p2

    .line 2598
    iget-object p3, p0, Lcom/google/android/material/slider/BaseSlider$b;->f:Lcom/google/android/material/slider/BaseSlider;

    invoke-static {p3, p1, p2}, Lcom/google/android/material/slider/BaseSlider;->a(Lcom/google/android/material/slider/BaseSlider;IF)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 2599
    iget-object p2, p0, Lcom/google/android/material/slider/BaseSlider$b;->f:Lcom/google/android/material/slider/BaseSlider;

    invoke-static {p2}, Lcom/google/android/material/slider/BaseSlider;->c(Lcom/google/android/material/slider/BaseSlider;)V

    .line 2600
    iget-object p2, p0, Lcom/google/android/material/slider/BaseSlider$b;->f:Lcom/google/android/material/slider/BaseSlider;

    invoke-virtual {p2}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    .line 2601
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider$b;->a(I)V

    return v2

    :cond_7
    return v1
.end method
