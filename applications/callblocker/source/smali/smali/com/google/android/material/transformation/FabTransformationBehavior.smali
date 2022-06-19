.class public abstract Lcom/google/android/material/transformation/FabTransformationBehavior;
.super Lcom/google/android/material/transformation/ExpandableTransformationBehavior;
.source "FabTransformationBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/transformation/FabTransformationBehavior$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/Rect;

.field private final b:Landroid/graphics/RectF;

.field private final c:Landroid/graphics/RectF;

.field private final d:[I

.field private e:F

.field private f:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>()V

    .line 75
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->a:Landroid/graphics/Rect;

    .line 76
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->b:Landroid/graphics/RectF;

    .line 77
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->c:Landroid/graphics/RectF;

    .line 78
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->d:[I

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->a:Landroid/graphics/Rect;

    .line 76
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->b:Landroid/graphics/RectF;

    .line 77
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->c:Landroid/graphics/RectF;

    .line 78
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->d:[I

    .line 89
    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/a/j;)F
    .locals 4

    .prologue
    .line 557
    iget-object v1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->b:Landroid/graphics/RectF;

    .line 558
    iget-object v2, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->c:Landroid/graphics/RectF;

    .line 560
    invoke-direct {p0, p1, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->b(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 561
    invoke-direct {p0, p2, v2}, Lcom/google/android/material/transformation/FabTransformationBehavior;->a(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 563
    const/4 v0, 0x0

    .line 564
    iget v3, p3, Lcom/google/android/material/a/j;->a:I

    and-int/lit8 v3, v3, 0x7

    packed-switch v3, :pswitch_data_0

    .line 577
    :goto_0
    :pswitch_0
    iget v1, p3, Lcom/google/android/material/a/j;->b:F

    add-float/2addr v0, v1

    .line 578
    return v0

    .line 566
    :pswitch_1
    iget v0, v2, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    .line 567
    goto :goto_0

    .line 569
    :pswitch_2
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 570
    goto :goto_0

    .line 572
    :pswitch_3
    iget v0, v2, Landroid/graphics/RectF;->right:F

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    .line 573
    goto :goto_0

    .line 564
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private a(Lcom/google/android/material/transformation/FabTransformationBehavior$a;Lcom/google/android/material/a/i;FF)F
    .locals 8

    .prologue
    .line 686
    invoke-virtual {p2}, Lcom/google/android/material/a/i;->a()J

    move-result-wide v0

    .line 687
    invoke-virtual {p2}, Lcom/google/android/material/a/i;->b()J

    move-result-wide v2

    .line 690
    iget-object v4, p1, Lcom/google/android/material/transformation/FabTransformationBehavior$a;->a:Lcom/google/android/material/a/h;

    const-string/jumbo v5, "expansion"

    invoke-virtual {v4, v5}, Lcom/google/android/material/a/h;->b(Ljava/lang/String;)Lcom/google/android/material/a/i;

    move-result-object v4

    .line 691
    invoke-virtual {v4}, Lcom/google/android/material/a/i;->a()J

    move-result-wide v6

    invoke-virtual {v4}, Lcom/google/android/material/a/i;->b()J

    move-result-wide v4

    add-long/2addr v4, v6

    .line 694
    const-wide/16 v6, 0x11

    add-long/2addr v4, v6

    .line 695
    sub-long v0, v4, v0

    long-to-float v0, v0

    long-to-float v1, v2

    div-float/2addr v0, v1

    .line 698
    invoke-virtual {p2}, Lcom/google/android/material/a/i;->c()Landroid/animation/TimeInterpolator;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    .line 699
    invoke-static {p3, p4, v0}, Lcom/google/android/material/a/a;->a(FFF)F

    move-result v0

    return v0
.end method

.method private a(FFZLcom/google/android/material/transformation/FabTransformationBehavior$a;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$a;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/material/a/i;",
            "Lcom/google/android/material/a/i;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 538
    cmpl-float v0, p1, v1

    if-eqz v0, :cond_0

    cmpl-float v0, p2, v1

    if-nez v0, :cond_1

    .line 540
    :cond_0
    iget-object v0, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$a;->a:Lcom/google/android/material/a/h;

    const-string/jumbo v1, "translationXLinear"

    invoke-virtual {v0, v1}, Lcom/google/android/material/a/h;->b(Ljava/lang/String;)Lcom/google/android/material/a/i;

    move-result-object v1

    .line 541
    iget-object v0, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$a;->a:Lcom/google/android/material/a/h;

    const-string/jumbo v2, "translationYLinear"

    invoke-virtual {v0, v2}, Lcom/google/android/material/a/h;->b(Ljava/lang/String;)Lcom/google/android/material/a/i;

    move-result-object v0

    .line 552
    :goto_0
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 542
    :cond_1
    if-eqz p3, :cond_2

    cmpg-float v0, p2, v1

    if-ltz v0, :cond_3

    :cond_2
    if-nez p3, :cond_4

    cmpl-float v0, p2, v1

    if-lez v0, :cond_4

    .line 544
    :cond_3
    iget-object v0, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$a;->a:Lcom/google/android/material/a/h;

    const-string/jumbo v1, "translationXCurveUpwards"

    invoke-virtual {v0, v1}, Lcom/google/android/material/a/h;->b(Ljava/lang/String;)Lcom/google/android/material/a/i;

    move-result-object v1

    .line 545
    iget-object v0, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$a;->a:Lcom/google/android/material/a/h;

    const-string/jumbo v2, "translationYCurveUpwards"

    invoke-virtual {v0, v2}, Lcom/google/android/material/a/h;->b(Ljava/lang/String;)Lcom/google/android/material/a/i;

    move-result-object v0

    goto :goto_0

    .line 548
    :cond_4
    iget-object v0, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$a;->a:Lcom/google/android/material/a/h;

    const-string/jumbo v1, "translationXCurveDownwards"

    invoke-virtual {v0, v1}, Lcom/google/android/material/a/h;->b(Ljava/lang/String;)Lcom/google/android/material/a/i;

    move-result-object v1

    .line 549
    iget-object v0, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$a;->a:Lcom/google/android/material/a/h;

    const-string/jumbo v2, "translationYCurveDownwards"

    invoke-virtual {v0, v2}, Lcom/google/android/material/a/h;->b(Ljava/lang/String;)Lcom/google/android/material/a/i;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 706
    sget v0, Lcom/google/android/material/a$f;->mtrl_child_content_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 707
    if-eqz v0, :cond_0

    .line 708
    invoke-direct {p0, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->b(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 718
    :goto_0
    return-object v0

    .line 712
    :cond_0
    instance-of v0, p1, Lcom/google/android/material/transformation/b;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/google/android/material/transformation/a;

    if-eqz v0, :cond_2

    .line 713
    :cond_1
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 714
    invoke-direct {p0, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->b(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    goto :goto_0

    .line 718
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->b(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Landroid/view/View;JIIFLjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "JIIF",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 747
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 749
    cmp-long v0, p2, v2

    if-lez v0, :cond_0

    .line 751
    invoke-static {p1, p4, p5, p6, p6}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 753
    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 754
    invoke-virtual {v0, p2, p3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 755
    invoke-interface {p7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 758
    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;JJJIIFLjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "JJJIIF",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 770
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 772
    add-long v0, p2, p4

    cmp-long v0, v0, p6

    if-gez v0, :cond_0

    .line 774
    invoke-static {p1, p8, p9, p10, p10}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 776
    add-long v2, p2, p4

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 777
    add-long v2, p2, p4

    sub-long v2, p6, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 778
    invoke-interface {p11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 781
    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 608
    .line 609
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 611
    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->d:[I

    .line 612
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 614
    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-float v1, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    int-to-float v0, v0

    invoke-virtual {p2, v1, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 618
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    neg-float v0, v0

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    neg-float v1, v1

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 619
    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/View;ZLcom/google/android/material/transformation/FabTransformationBehavior$a;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Z",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$a;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 226
    iget-object v0, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$a;->b:Lcom/google/android/material/a/j;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->a(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/a/j;)F

    move-result v2

    .line 227
    iget-object v0, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$a;->b:Lcom/google/android/material/a/j;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->b(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/a/j;)F

    move-result v3

    .line 233
    invoke-direct {p0, v2, v3, p3, p4}, Lcom/google/android/material/transformation/FabTransformationBehavior;->a(FFZLcom/google/android/material/transformation/FabTransformationBehavior$a;)Landroid/util/Pair;

    move-result-object v1

    .line 234
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/a/i;

    .line 235
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/material/a/i;

    .line 237
    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v5, v6, [F

    if-eqz p3, :cond_0

    :goto_0
    aput v2, v5, v7

    .line 238
    invoke-static {p1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 242
    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v6, v6, [F

    if-eqz p3, :cond_1

    move v2, v3

    :goto_1
    aput v2, v6, v7

    .line 243
    invoke-static {p1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 248
    invoke-virtual {v0, v4}, Lcom/google/android/material/a/i;->a(Landroid/animation/Animator;)V

    .line 249
    invoke-virtual {v1, v2}, Lcom/google/android/material/a/i;->a(Landroid/animation/Animator;)V

    .line 250
    invoke-interface {p5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    invoke-interface {p5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    return-void

    .line 237
    :cond_0
    iget v2, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->e:F

    goto :goto_0

    .line 242
    :cond_1
    iget v2, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->f:F

    goto :goto_1
.end method

.method private a(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$a;FFLjava/util/List;Ljava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$a;",
            "FF",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 373
    move-object/from16 v0, p2

    instance-of v4, v0, Lcom/google/android/material/f/d;

    if-nez v4, :cond_0

    .line 448
    :goto_0
    return-void

    :cond_0
    move-object/from16 v16, p2

    .line 376
    check-cast v16, Lcom/google/android/material/f/d;

    .line 378
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/google/android/material/transformation/FabTransformationBehavior$a;->b:Lcom/google/android/material/a/j;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v4}, Lcom/google/android/material/transformation/FabTransformationBehavior;->c(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/a/j;)F

    move-result v4

    .line 379
    move-object/from16 v0, p5

    iget-object v5, v0, Lcom/google/android/material/transformation/FabTransformationBehavior$a;->b:Lcom/google/android/material/a/j;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v5}, Lcom/google/android/material/transformation/FabTransformationBehavior;->d(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/a/j;)F

    move-result v5

    .line 380
    check-cast p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->a:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->a(Landroid/graphics/Rect;)Z

    .line 381
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->a:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float v14, v6, v7

    .line 384
    move-object/from16 v0, p5

    iget-object v6, v0, Lcom/google/android/material/transformation/FabTransformationBehavior$a;->a:Lcom/google/android/material/a/h;

    const-string/jumbo v7, "expansion"

    invoke-virtual {v6, v7}, Lcom/google/android/material/a/h;->b(Ljava/lang/String;)Lcom/google/android/material/a/i;

    move-result-object v18

    .line 386
    if-eqz p3, :cond_3

    .line 387
    if-nez p4, :cond_1

    .line 388
    new-instance v6, Lcom/google/android/material/f/d$d;

    invoke-direct {v6, v4, v5, v14}, Lcom/google/android/material/f/d$d;-><init>(FFF)V

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Lcom/google/android/material/f/d;->setRevealInfo(Lcom/google/android/material/f/d$d;)V

    .line 391
    :cond_1
    if-eqz p4, :cond_2

    .line 392
    invoke-interface/range {v16 .. v16}, Lcom/google/android/material/f/d;->getRevealInfo()Lcom/google/android/material/f/d$d;

    move-result-object v6

    iget v10, v6, Lcom/google/android/material/f/d$d;->c:F

    .line 393
    :goto_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v8, p6

    move/from16 v9, p7

    .line 394
    invoke-static/range {v4 .. v9}, Lcom/google/android/material/l/a;->a(FFFFFF)F

    move-result v6

    .line 398
    move-object/from16 v0, v16

    invoke-static {v0, v4, v5, v6}, Lcom/google/android/material/f/a;->a(Lcom/google/android/material/f/d;FFF)Landroid/animation/Animator;

    move-result-object v12

    .line 400
    new-instance v6, Lcom/google/android/material/transformation/FabTransformationBehavior$4;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v6, v0, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior$4;-><init>(Lcom/google/android/material/transformation/FabTransformationBehavior;Lcom/google/android/material/f/d;)V

    invoke-virtual {v12, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 414
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/material/a/i;->a()J

    move-result-wide v6

    float-to-int v8, v4

    float-to-int v9, v5

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v11, p8

    .line 412
    invoke-direct/range {v4 .. v11}, Lcom/google/android/material/transformation/FabTransformationBehavior;->a(Landroid/view/View;JIIFLjava/util/List;)V

    move-object v4, v12

    .line 445
    :goto_2
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/google/android/material/a/i;->a(Landroid/animation/Animator;)V

    .line 446
    move-object/from16 v0, p8

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    invoke-static/range {v16 .. v16}, Lcom/google/android/material/f/a;->a(Lcom/google/android/material/f/d;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v4

    move-object/from16 v0, p9

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2
    move v10, v14

    .line 392
    goto :goto_1

    .line 421
    :cond_3
    invoke-interface/range {v16 .. v16}, Lcom/google/android/material/f/d;->getRevealInfo()Lcom/google/android/material/f/d$d;

    move-result-object v6

    iget v12, v6, Lcom/google/android/material/f/d$d;->c:F

    .line 424
    move-object/from16 v0, v16

    invoke-static {v0, v4, v5, v14}, Lcom/google/android/material/f/a;->a(Lcom/google/android/material/f/d;FFF)Landroid/animation/Animator;

    move-result-object v17

    .line 429
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/material/a/i;->a()J

    move-result-wide v8

    float-to-int v10, v4

    float-to-int v11, v5

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v13, p8

    .line 427
    invoke-direct/range {v6 .. v13}, Lcom/google/android/material/transformation/FabTransformationBehavior;->a(Landroid/view/View;JIIFLjava/util/List;)V

    .line 436
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/material/a/i;->a()J

    move-result-wide v6

    .line 437
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/material/a/i;->b()J

    move-result-wide v8

    move-object/from16 v0, p5

    iget-object v10, v0, Lcom/google/android/material/transformation/FabTransformationBehavior$a;->a:Lcom/google/android/material/a/h;

    .line 438
    invoke-virtual {v10}, Lcom/google/android/material/a/h;->a()J

    move-result-wide v10

    float-to-int v12, v4

    float-to-int v13, v5

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v15, p8

    .line 434
    invoke-direct/range {v4 .. v15}, Lcom/google/android/material/transformation/FabTransformationBehavior;->a(Landroid/view/View;JJJIIFLjava/util/List;)V

    move-object/from16 v4, v17

    goto :goto_2
.end method

.method private a(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$a;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$a;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 203
    invoke-static {p2}, Landroidx/core/h/u;->n(Landroid/view/View;)F

    move-result v0

    invoke-static {p1}, Landroidx/core/h/u;->n(Landroid/view/View;)F

    move-result v1

    sub-float/2addr v0, v1

    .line 206
    if-eqz p3, :cond_1

    .line 207
    if-nez p4, :cond_0

    .line 208
    neg-float v0, v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationZ(F)V

    .line 210
    :cond_0
    sget-object v0, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v1, v2, [F

    const/4 v2, 0x0

    aput v2, v1, v3

    invoke-static {p2, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 215
    :goto_0
    iget-object v1, p5, Lcom/google/android/material/transformation/FabTransformationBehavior$a;->a:Lcom/google/android/material/a/h;

    const-string/jumbo v2, "elevation"

    invoke-virtual {v1, v2}, Lcom/google/android/material/a/h;->b(Ljava/lang/String;)Lcom/google/android/material/a/i;

    move-result-object v1

    .line 216
    invoke-virtual {v1, v0}, Lcom/google/android/material/a/i;->a(Landroid/animation/Animator;)V

    .line 217
    invoke-interface {p6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    return-void

    .line 212
    :cond_1
    sget-object v1, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v2, v2, [F

    neg-float v0, v0

    aput v0, v2, v3

    invoke-static {p2, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$a;Ljava/util/List;Ljava/util/List;Landroid/graphics/RectF;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$a;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;",
            "Landroid/graphics/RectF;",
            ")V"
        }
    .end annotation

    .prologue
    .line 263
    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/google/android/material/transformation/FabTransformationBehavior$a;->b:Lcom/google/android/material/a/j;

    move-object/from16 v0, p2

    invoke-direct {p0, p1, v0, v2}, Lcom/google/android/material/transformation/FabTransformationBehavior;->a(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/a/j;)F

    move-result v2

    .line 264
    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/google/android/material/transformation/FabTransformationBehavior$a;->b:Lcom/google/android/material/a/j;

    move-object/from16 v0, p2

    invoke-direct {p0, p1, v0, v3}, Lcom/google/android/material/transformation/FabTransformationBehavior;->b(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/a/j;)F

    move-result v4

    .line 270
    move/from16 v0, p3

    move-object/from16 v1, p5

    invoke-direct {p0, v2, v4, v0, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->a(FFZLcom/google/android/material/transformation/FabTransformationBehavior$a;)Landroid/util/Pair;

    move-result-object v3

    .line 271
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/material/a/i;

    .line 272
    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/material/a/i;

    .line 274
    if-eqz p3, :cond_1

    .line 275
    if-nez p4, :cond_0

    .line 276
    neg-float v3, v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 277
    neg-float v3, v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 279
    :cond_0
    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v7, v8

    move-object/from16 v0, p2

    invoke-static {v0, v3, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 280
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v7, v8

    move-object/from16 v0, p2

    invoke-static {v0, v3, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 282
    neg-float v7, v2

    neg-float v8, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    move-object/from16 v11, p8

    invoke-direct/range {v2 .. v11}, Lcom/google/android/material/transformation/FabTransformationBehavior;->a(Landroid/view/View;Lcom/google/android/material/transformation/FabTransformationBehavior$a;Lcom/google/android/material/a/i;Lcom/google/android/material/a/i;FFFFLandroid/graphics/RectF;)V

    move-object v2, v12

    move-object v3, v13

    .line 297
    :goto_0
    invoke-virtual {v5, v3}, Lcom/google/android/material/a/i;->a(Landroid/animation/Animator;)V

    .line 298
    invoke-virtual {v6, v2}, Lcom/google/android/material/a/i;->a(Landroid/animation/Animator;)V

    .line 299
    move-object/from16 v0, p6

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    return-void

    .line 293
    :cond_1
    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    neg-float v2, v2

    aput v2, v7, v8

    move-object/from16 v0, p2

    invoke-static {v0, v3, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 294
    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    neg-float v4, v4

    aput v4, v7, v8

    move-object/from16 v0, p2

    invoke-static {v0, v2, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    goto :goto_0
.end method

.method private a(Landroid/view/View;Lcom/google/android/material/transformation/FabTransformationBehavior$a;Lcom/google/android/material/a/i;Lcom/google/android/material/a/i;FFFFLandroid/graphics/RectF;)V
    .locals 4

    .prologue
    .line 664
    .line 665
    invoke-direct {p0, p2, p3, p5, p7}, Lcom/google/android/material/transformation/FabTransformationBehavior;->a(Lcom/google/android/material/transformation/FabTransformationBehavior$a;Lcom/google/android/material/a/i;FF)F

    move-result v0

    .line 667
    invoke-direct {p0, p2, p4, p6, p8}, Lcom/google/android/material/transformation/FabTransformationBehavior;->a(Lcom/google/android/material/transformation/FabTransformationBehavior$a;Lcom/google/android/material/a/i;FF)F

    move-result v1

    .line 670
    iget-object v2, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->a:Landroid/graphics/Rect;

    .line 671
    invoke-virtual {p1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 672
    iget-object v3, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->b:Landroid/graphics/RectF;

    .line 673
    invoke-virtual {v3, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 676
    iget-object v2, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->c:Landroid/graphics/RectF;

    .line 677
    invoke-direct {p0, p1, v2}, Lcom/google/android/material/transformation/FabTransformationBehavior;->a(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 678
    invoke-virtual {v2, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 679
    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 681
    invoke-virtual {p9, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 682
    return-void
.end method

.method private b(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/a/j;)F
    .locals 4

    .prologue
    .line 583
    iget-object v1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->b:Landroid/graphics/RectF;

    .line 584
    iget-object v2, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->c:Landroid/graphics/RectF;

    .line 586
    invoke-direct {p0, p1, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->b(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 587
    invoke-direct {p0, p2, v2}, Lcom/google/android/material/transformation/FabTransformationBehavior;->a(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 589
    const/4 v0, 0x0

    .line 590
    iget v3, p3, Lcom/google/android/material/a/j;->a:I

    and-int/lit8 v3, v3, 0x70

    sparse-switch v3, :sswitch_data_0

    .line 603
    :goto_0
    iget v1, p3, Lcom/google/android/material/a/j;->c:F

    add-float/2addr v0, v1

    .line 604
    return v0

    .line 592
    :sswitch_0
    iget v0, v2, Landroid/graphics/RectF;->top:F

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    .line 593
    goto :goto_0

    .line 595
    :sswitch_1
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    sub-float/2addr v0, v1

    .line 596
    goto :goto_0

    .line 598
    :sswitch_2
    iget v0, v2, Landroid/graphics/RectF;->bottom:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    .line 599
    goto :goto_0

    .line 590
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method private b(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 723
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 724
    check-cast p1, Landroid/view/ViewGroup;

    .line 726
    :goto_0
    return-object p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private b(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 2

    .prologue
    .line 622
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/transformation/FabTransformationBehavior;->a(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 623
    iget v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->e:F

    iget v1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->f:F

    invoke-virtual {p2, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 624
    return-void
.end method

.method private b(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$a;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$a;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v5, 0xff

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 311
    instance-of v0, p2, Lcom/google/android/material/f/d;

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 361
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p2

    .line 315
    check-cast v0, Lcom/google/android/material/f/d;

    .line 316
    check-cast p1, Landroid/widget/ImageView;

    .line 317
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 319
    if-eqz v2, :cond_0

    .line 322
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 326
    if-eqz p3, :cond_3

    .line 327
    if-nez p4, :cond_2

    .line 328
    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 330
    :cond_2
    sget-object v1, Lcom/google/android/material/a/e;->a:Landroid/util/Property;

    new-array v3, v3, [I

    aput v4, v3, v4

    invoke-static {v2, v1, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 337
    :goto_1
    new-instance v3, Lcom/google/android/material/transformation/FabTransformationBehavior$2;

    invoke-direct {v3, p0, p2}, Lcom/google/android/material/transformation/FabTransformationBehavior$2;-><init>(Lcom/google/android/material/transformation/FabTransformationBehavior;Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 345
    iget-object v3, p5, Lcom/google/android/material/transformation/FabTransformationBehavior$a;->a:Lcom/google/android/material/a/h;

    const-string/jumbo v4, "iconFade"

    invoke-virtual {v3, v4}, Lcom/google/android/material/a/h;->b(Ljava/lang/String;)Lcom/google/android/material/a/i;

    move-result-object v3

    .line 346
    invoke-virtual {v3, v1}, Lcom/google/android/material/a/i;->a(Landroid/animation/Animator;)V

    .line 347
    invoke-interface {p6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    new-instance v1, Lcom/google/android/material/transformation/FabTransformationBehavior$3;

    invoke-direct {v1, p0, v0, v2}, Lcom/google/android/material/transformation/FabTransformationBehavior$3;-><init>(Lcom/google/android/material/transformation/FabTransformationBehavior;Lcom/google/android/material/f/d;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {p7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 332
    :cond_3
    sget-object v1, Lcom/google/android/material/a/e;->a:Landroid/util/Property;

    new-array v3, v3, [I

    aput v5, v3, v4

    invoke-static {v2, v1, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto :goto_1
.end method

.method private c(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/a/j;)F
    .locals 4

    .prologue
    .line 628
    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->b:Landroid/graphics/RectF;

    .line 629
    iget-object v1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->c:Landroid/graphics/RectF;

    .line 631
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->b(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 632
    invoke-direct {p0, p2, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->a(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 634
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/transformation/FabTransformationBehavior;->a(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/a/j;)F

    move-result v2

    .line 635
    neg-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 637
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    return v0
.end method

.method private c(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 731
    invoke-static {p1}, Landroidx/core/h/u;->u(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 732
    if-eqz v0, :cond_0

    .line 733
    invoke-virtual {p1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 735
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$a;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$a;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 458
    instance-of v0, p2, Lcom/google/android/material/f/d;

    if-nez v0, :cond_0

    .line 488
    :goto_0
    return-void

    .line 461
    :cond_0
    check-cast p2, Lcom/google/android/material/f/d;

    .line 463
    invoke-direct {p0, p1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->c(Landroid/view/View;)I

    move-result v0

    .line 464
    const v1, 0xffffff

    and-int/2addr v1, v0

    .line 467
    if-eqz p3, :cond_2

    .line 468
    if-nez p4, :cond_1

    .line 469
    invoke-interface {p2, v0}, Lcom/google/android/material/f/d;->setCircularRevealScrimColor(I)V

    .line 471
    :cond_1
    sget-object v0, Lcom/google/android/material/f/d$c;->a:Landroid/util/Property;

    new-array v2, v2, [I

    aput v1, v2, v3

    .line 472
    invoke-static {p2, v0, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 484
    :goto_1
    invoke-static {}, Lcom/google/android/material/a/c;->a()Lcom/google/android/material/a/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 485
    iget-object v1, p5, Lcom/google/android/material/transformation/FabTransformationBehavior$a;->a:Lcom/google/android/material/a/h;

    const-string/jumbo v2, "color"

    invoke-virtual {v1, v2}, Lcom/google/android/material/a/h;->b(Ljava/lang/String;)Lcom/google/android/material/a/i;

    move-result-object v1

    .line 486
    invoke-virtual {v1, v0}, Lcom/google/android/material/a/i;->a(Landroid/animation/Animator;)V

    .line 487
    invoke-interface {p6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 477
    :cond_2
    sget-object v1, Lcom/google/android/material/f/d$c;->a:Landroid/util/Property;

    new-array v2, v2, [I

    aput v0, v2, v3

    .line 478
    invoke-static {p2, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_1
.end method

.method private d(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/a/j;)F
    .locals 4

    .prologue
    .line 642
    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->b:Landroid/graphics/RectF;

    .line 643
    iget-object v1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->c:Landroid/graphics/RectF;

    .line 645
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->b(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 646
    invoke-direct {p0, p2, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->a(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 648
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/transformation/FabTransformationBehavior;->b(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/a/j;)F

    move-result v2

    .line 649
    const/4 v3, 0x0

    neg-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 651
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    return v0
.end method

.method private d(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$a;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$a;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 498
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 501
    :cond_1
    instance-of v0, p2, Lcom/google/android/material/f/d;

    if-eqz v0, :cond_2

    sget v0, Lcom/google/android/material/f/c;->a:I

    if-eqz v0, :cond_0

    .line 507
    :cond_2
    invoke-direct {p0, p2}, Lcom/google/android/material/transformation/FabTransformationBehavior;->a(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 508
    if-eqz v0, :cond_0

    .line 514
    if-eqz p3, :cond_4

    .line 515
    if-nez p4, :cond_3

    .line 516
    sget-object v1, Lcom/google/android/material/a/d;->a:Landroid/util/Property;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 518
    :cond_3
    sget-object v1, Lcom/google/android/material/a/d;->a:Landroid/util/Property;

    new-array v2, v5, [F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v4

    .line 519
    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 525
    :goto_1
    iget-object v1, p5, Lcom/google/android/material/transformation/FabTransformationBehavior$a;->a:Lcom/google/android/material/a/h;

    const-string/jumbo v2, "contentFade"

    invoke-virtual {v1, v2}, Lcom/google/android/material/a/h;->b(Ljava/lang/String;)Lcom/google/android/material/a/i;

    move-result-object v1

    .line 526
    invoke-virtual {v1, v0}, Lcom/google/android/material/a/i;->a(Landroid/animation/Animator;)V

    .line 527
    invoke-interface {p6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 521
    :cond_4
    sget-object v1, Lcom/google/android/material/a/d;->a:Landroid/util/Property;

    new-array v2, v5, [F

    aput v3, v2, v4

    .line 522
    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;Z)Lcom/google/android/material/transformation/FabTransformationBehavior$a;
.end method

.method public a(Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;)V
    .locals 1

    .prologue
    .line 111
    iget v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->h:I

    if-nez v0, :cond_0

    .line 114
    const/16 v0, 0x50

    iput v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->h:I

    .line 116
    :cond_0
    return-void
.end method

.method public a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 95
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 96
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    instance-of v1, p3, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz v1, :cond_2

    .line 101
    check-cast p3, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 102
    invoke-virtual {p3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getExpandedComponentIdHint()I

    move-result v1

    .line 103
    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v1, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 105
    :cond_2
    return v0
.end method

.method protected b(Landroid/view/View;Landroid/view/View;ZZ)Landroid/animation/AnimatorSet;
    .locals 22

    .prologue
    .line 125
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->a(Landroid/content/Context;Z)Lcom/google/android/material/transformation/FabTransformationBehavior$a;

    move-result-object v9

    .line 127
    if-eqz p3, :cond_0

    .line 128
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationX()F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->e:F

    .line 129
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationY()F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->f:F

    .line 132
    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 133
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 135
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    .line 136
    invoke-direct/range {v4 .. v11}, Lcom/google/android/material/transformation/FabTransformationBehavior;->a(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$a;Ljava/util/List;Ljava/util/List;)V

    .line 140
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->b:Landroid/graphics/RectF;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    .line 141
    invoke-direct/range {v4 .. v12}, Lcom/google/android/material/transformation/FabTransformationBehavior;->a(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$a;Ljava/util/List;Ljava/util/List;Landroid/graphics/RectF;)V

    .line 143
    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v18

    .line 144
    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v19

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    .line 146
    invoke-direct/range {v5 .. v10}, Lcom/google/android/material/transformation/FabTransformationBehavior;->a(Landroid/view/View;Landroid/view/View;ZLcom/google/android/material/transformation/FabTransformationBehavior$a;Ljava/util/List;)V

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    .line 147
    invoke-direct/range {v4 .. v11}, Lcom/google/android/material/transformation/FabTransformationBehavior;->b(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$a;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move/from16 v15, p3

    move/from16 v16, p4

    move-object/from16 v17, v9

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    .line 148
    invoke-direct/range {v12 .. v21}, Lcom/google/android/material/transformation/FabTransformationBehavior;->a(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$a;FFLjava/util/List;Ljava/util/List;)V

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    .line 158
    invoke-direct/range {v4 .. v11}, Lcom/google/android/material/transformation/FabTransformationBehavior;->c(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$a;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    .line 159
    invoke-direct/range {v4 .. v11}, Lcom/google/android/material/transformation/FabTransformationBehavior;->d(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$a;Ljava/util/List;Ljava/util/List;)V

    .line 162
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 163
    invoke-static {v6, v10}, Lcom/google/android/material/a/b;->a(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    .line 164
    new-instance v4, Lcom/google/android/material/transformation/FabTransformationBehavior$1;

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/material/transformation/FabTransformationBehavior$1;-><init>(Lcom/google/android/material/transformation/FabTransformationBehavior;ZLandroid/view/View;Landroid/view/View;)V

    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 186
    const/4 v4, 0x0

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v7

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_2

    .line 187
    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 186
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    .line 189
    :cond_2
    return-object v6
.end method
