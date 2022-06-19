.class public Landroidx/appcompat/widget/ActionMenuView;
.super Landroidx/appcompat/widget/LinearLayoutCompat;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/g$b;
.implements Landroidx/appcompat/view/menu/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ActionMenuView$LayoutParams;,
        Landroidx/appcompat/widget/ActionMenuView$a;,
        Landroidx/appcompat/widget/ActionMenuView$b;,
        Landroidx/appcompat/widget/ActionMenuView$c;,
        Landroidx/appcompat/widget/ActionMenuView$d;
    }
.end annotation


# instance fields
.field a:Landroidx/appcompat/view/menu/g;

.field b:Z

.field c:Landroidx/appcompat/widget/ActionMenuPresenter;

.field d:Landroidx/appcompat/view/menu/g$a;

.field e:Landroidx/appcompat/widget/ActionMenuView$d;

.field private f:Landroid/content/Context;

.field private g:I

.field private h:Landroidx/appcompat/view/menu/m$a;

.field private i:Z

.field private j:I

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 81
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 82
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/ActionMenuView;->setBaselineAligned(Z)V

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42600000    # 56.0f

    mul-float v1, v1, v0

    float-to-int v1, v1

    .line 84
    iput v1, p0, Landroidx/appcompat/widget/ActionMenuView;->k:I

    const/high16 v1, 0x40800000    # 4.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 85
    iput v0, p0, Landroidx/appcompat/widget/ActionMenuView;->l:I

    .line 86
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->f:Landroid/content/Context;

    .line 87
    iput p2, p0, Landroidx/appcompat/widget/ActionMenuView;->g:I

    return-void
.end method

.method static a(Landroid/view/View;IIII)I
    .locals 5

    .line 405
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 407
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    sub-int/2addr v1, p4

    .line 409
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p3

    .line 410
    invoke-static {v1, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 412
    instance-of p4, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;

    if-eqz p4, :cond_0

    .line 413
    move-object p4, p0

    check-cast p4, Landroidx/appcompat/view/menu/ActionMenuItemView;

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_1

    .line 414
    invoke-virtual {p4}, Landroidx/appcompat/view/menu/ActionMenuItemView;->c()Z

    move-result p4

    if-eqz p4, :cond_1

    const/4 p4, 0x1

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    :goto_1
    const/4 v3, 0x2

    if-lez p2, :cond_5

    if-eqz p4, :cond_2

    if-lt p2, v3, :cond_5

    :cond_2
    mul-int p2, p2, p1

    const/high16 v4, -0x80000000

    .line 418
    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 420
    invoke-virtual {p0, p2, p3}, Landroid/view/View;->measure(II)V

    .line 422
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    .line 423
    div-int v4, p2, p1

    .line 424
    rem-int/2addr p2, p1

    if-eqz p2, :cond_3

    add-int/lit8 v4, v4, 0x1

    :cond_3
    if-eqz p4, :cond_4

    if-ge v4, v3, :cond_4

    goto :goto_2

    :cond_4
    move v3, v4

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    .line 428
    :goto_2
    iget-boolean p2, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->a:Z

    if-nez p2, :cond_6

    if-eqz p4, :cond_6

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    .line 429
    :goto_3
    iput-boolean v1, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->d:Z

    .line 431
    iput v3, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->b:I

    mul-int p1, p1, v3

    const/high16 p2, 0x40000000    # 2.0f

    .line 433
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0, p1, p3}, Landroid/view/View;->measure(II)V

    return v3
.end method

.method public static a()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .locals 2

    .line 614
    invoke-static {}, Landroidx/appcompat/widget/ActionMenuView;->h()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    .line 615
    iput-boolean v1, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->a:Z

    return-object v0
.end method

.method protected static a(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .locals 1

    if-eqz p0, :cond_2

    .line 595
    instance-of v0, p0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_0

    .line 596
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    check-cast p0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;-><init>(Landroidx/appcompat/widget/ActionMenuView$LayoutParams;)V

    goto :goto_0

    .line 597
    :cond_0
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 598
    :goto_0
    iget p0, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->h:I

    if-gtz p0, :cond_1

    const/16 p0, 0x10

    .line 599
    iput p0, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->h:I

    :cond_1
    return-object v0

    .line 603
    :cond_2
    invoke-static {}, Landroidx/appcompat/widget/ActionMenuView;->h()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method private b(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .locals 2

    .line 589
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method private b(I)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, p1, -0x1

    .line 734
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 735
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 737
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_1

    instance-of v3, v1, Landroidx/appcompat/widget/ActionMenuView$a;

    if-eqz v3, :cond_1

    .line 738
    check-cast v1, Landroidx/appcompat/widget/ActionMenuView$a;

    invoke-interface {v1}, Landroidx/appcompat/widget/ActionMenuView$a;->e()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    if-lez p1, :cond_2

    .line 740
    instance-of p1, v2, Landroidx/appcompat/widget/ActionMenuView$a;

    if-eqz p1, :cond_2

    .line 741
    check-cast v2, Landroidx/appcompat/widget/ActionMenuView$a;

    invoke-interface {v2}, Landroidx/appcompat/widget/ActionMenuView$a;->d()Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    return v0
.end method

.method private static h()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .locals 2

    .line 581
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;-><init>(II)V

    const/16 v1, 0x10

    .line 583
    iput v1, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->h:I

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->b(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroidx/appcompat/view/menu/g;)V
    .locals 0

    .line 637
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->a:Landroidx/appcompat/view/menu/g;

    return-void
.end method

.method public final a(Landroidx/appcompat/view/menu/i;)Z
    .locals 3

    .line 623
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->a:Landroidx/appcompat/view/menu/g;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2975
    invoke-virtual {v0, p1, v1, v2}, Landroidx/appcompat/view/menu/g;->a(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/m;I)Z

    move-result p1

    return p1
.end method

.method public final b()Landroid/view/Menu;
    .locals 3

    .line 649
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->a:Landroidx/appcompat/view/menu/g;

    if-nez v0, :cond_1

    .line 650
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 651
    new-instance v1, Landroidx/appcompat/view/menu/g;

    invoke-direct {v1, v0}, Landroidx/appcompat/view/menu/g;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->a:Landroidx/appcompat/view/menu/g;

    .line 652
    new-instance v2, Landroidx/appcompat/widget/ActionMenuView$c;

    invoke-direct {v2, p0}, Landroidx/appcompat/widget/ActionMenuView$c;-><init>(Landroidx/appcompat/widget/ActionMenuView;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/g;->a(Landroidx/appcompat/view/menu/g$a;)V

    .line 653
    new-instance v1, Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 654
    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionMenuPresenter;->d()V

    .line 655
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroidx/appcompat/widget/ActionMenuPresenter;

    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->h:Landroidx/appcompat/view/menu/m$a;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 656
    :cond_0
    new-instance v1, Landroidx/appcompat/widget/ActionMenuView$b;

    invoke-direct {v1}, Landroidx/appcompat/widget/ActionMenuView$b;-><init>()V

    .line 3154
    :goto_0
    iput-object v1, v0, Landroidx/appcompat/view/menu/b;->f:Landroidx/appcompat/view/menu/m$a;

    .line 657
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->a:Landroidx/appcompat/view/menu/g;

    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroidx/appcompat/widget/ActionMenuPresenter;

    iget-object v2, p0, Landroidx/appcompat/widget/ActionMenuView;->f:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/g;->a(Landroidx/appcompat/view/menu/m;Landroid/content/Context;)V

    .line 658
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->a(Landroidx/appcompat/widget/ActionMenuView;)V

    .line 661
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->a:Landroidx/appcompat/view/menu/g;

    return-object v0
.end method

.method protected final synthetic b(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 0

    .line 49
    invoke-static {p1}, Landroidx/appcompat/widget/ActionMenuView;->a(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public final c()V
    .locals 1

    .line 721
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 722
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->h()Z

    :cond_0
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 608
    instance-of p1, p1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    return p1
.end method

.method protected final synthetic d()Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 1

    .line 49
    invoke-static {}, Landroidx/appcompat/widget/ActionMenuView;->h()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 49
    invoke-static {}, Landroidx/appcompat/widget/ActionMenuView;->h()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->b(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 49
    invoke-static {p1}, Landroidx/appcompat/widget/ActionMenuView;->a(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 129
    invoke-super {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 131
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 132
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->a(Z)V

    .line 134
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 135
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->g()Z

    .line 136
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->e()Z

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 542
    invoke-super {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->onDetachedFromWindow()V

    .line 543
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->c()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 17

    move-object/from16 v0, p0

    .line 440
    iget-boolean v1, v0, Landroidx/appcompat/widget/ActionMenuView;->i:Z

    if-nez v1, :cond_0

    .line 441
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/LinearLayoutCompat;->onLayout(ZIIII)V

    return-void

    .line 445
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v1

    sub-int v2, p5, p3

    .line 446
    div-int/lit8 v2, v2, 0x2

    .line 447
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->f()I

    move-result v3

    sub-int v4, p4, p2

    .line 450
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingRight()I

    move-result v5

    sub-int v5, v4, v5

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    .line 452
    invoke-static/range {p0 .. p0}, Landroidx/appcompat/widget/ah;->a(Landroid/view/View;)Z

    move-result v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    const/16 v11, 0x8

    const/4 v12, 0x1

    if-ge v8, v1, :cond_5

    .line 454
    invoke-virtual {v0, v8}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 455
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-eq v14, v11, :cond_4

    .line 459
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 460
    iget-boolean v14, v11, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->a:Z

    if-eqz v14, :cond_3

    .line 461
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 462
    invoke-direct {v0, v8}, Landroidx/appcompat/widget/ActionMenuView;->b(I)Z

    move-result v14

    if-eqz v14, :cond_1

    add-int/2addr v9, v3

    .line 465
    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    if-eqz v6, :cond_2

    .line 469
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingLeft()I

    move-result v15

    iget v11, v11, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v15, v11

    add-int v11, v15, v9

    goto :goto_1

    .line 472
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getWidth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingRight()I

    move-result v16

    sub-int v15, v15, v16

    iget v11, v11, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    sub-int v11, v15, v11

    sub-int v15, v11, v9

    .line 475
    :goto_1
    div-int/lit8 v16, v14, 0x2

    sub-int v7, v2, v16

    add-int/2addr v14, v7

    .line 477
    invoke-virtual {v13, v15, v7, v11, v14}, Landroid/view/View;->layout(IIII)V

    sub-int/2addr v5, v9

    const/4 v9, 0x1

    goto :goto_2

    .line 482
    :cond_3
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iget v12, v11, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v7, v12

    iget v11, v11, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    add-int/2addr v7, v11

    sub-int/2addr v5, v7

    .line 484
    invoke-direct {v0, v8}, Landroidx/appcompat/widget/ActionMenuView;->b(I)Z

    add-int/lit8 v10, v10, 0x1

    :cond_4
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_5
    if-ne v1, v12, :cond_6

    if-nez v9, :cond_6

    const/4 v3, 0x0

    .line 492
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 493
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 494
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 495
    div-int/lit8 v4, v4, 0x2

    .line 496
    div-int/lit8 v6, v3, 0x2

    sub-int/2addr v4, v6

    .line 497
    div-int/lit8 v6, v5, 0x2

    sub-int/2addr v2, v6

    add-int/2addr v3, v4

    add-int/2addr v5, v2

    .line 498
    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_6
    xor-int/lit8 v3, v9, 0x1

    sub-int/2addr v10, v3

    if-lez v10, :cond_7

    .line 503
    div-int v3, v5, v10

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-eqz v6, :cond_a

    .line 506
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v1, :cond_9

    .line 508
    invoke-virtual {v0, v7}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 509
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 510
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v11, :cond_8

    iget-boolean v8, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->a:Z

    if-nez v8, :cond_8

    .line 514
    iget v8, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    sub-int/2addr v5, v8

    .line 515
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 516
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 517
    div-int/lit8 v10, v9, 0x2

    sub-int v10, v2, v10

    sub-int v12, v5, v8

    add-int/2addr v9, v10

    .line 518
    invoke-virtual {v4, v12, v10, v5, v9}, Landroid/view/View;->layout(IIII)V

    .line 519
    iget v4, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v8, v4

    add-int/2addr v8, v3

    sub-int/2addr v5, v8

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_9
    return-void

    .line 522
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingLeft()I

    move-result v5

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v1, :cond_c

    .line 524
    invoke-virtual {v0, v7}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 525
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 526
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v11, :cond_b

    iget-boolean v8, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->a:Z

    if-nez v8, :cond_b

    .line 530
    iget v8, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v5, v8

    .line 531
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 532
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 533
    div-int/lit8 v10, v9, 0x2

    sub-int v10, v2, v10

    add-int v12, v5, v8

    add-int/2addr v9, v10

    .line 534
    invoke-virtual {v4, v5, v10, v12, v9}, Landroid/view/View;->layout(IIII)V

    .line 535
    iget v4, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    add-int/2addr v8, v4

    add-int/2addr v8, v3

    add-int/2addr v5, v8

    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_c
    return-void
.end method

.method protected onMeasure(II)V
    .locals 29

    move-object/from16 v0, p0

    .line 148
    iget-boolean v1, v0, Landroidx/appcompat/widget/ActionMenuView;->i:Z

    .line 149
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Landroidx/appcompat/widget/ActionMenuView;->i:Z

    if-eq v1, v2, :cond_1

    .line 152
    iput v4, v0, Landroidx/appcompat/widget/ActionMenuView;->j:I

    .line 157
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 158
    iget-boolean v2, v0, Landroidx/appcompat/widget/ActionMenuView;->i:Z

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroidx/appcompat/widget/ActionMenuView;->a:Landroidx/appcompat/view/menu/g;

    if-eqz v2, :cond_2

    iget v6, v0, Landroidx/appcompat/widget/ActionMenuView;->j:I

    if-eq v1, v6, :cond_2

    .line 159
    iput v1, v0, Landroidx/appcompat/widget/ActionMenuView;->j:I

    .line 160
    invoke-virtual {v2, v5}, Landroidx/appcompat/view/menu/g;->b(Z)V

    .line 163
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v1

    .line 164
    iget-boolean v2, v0, Landroidx/appcompat/widget/ActionMenuView;->i:Z

    if-eqz v2, :cond_25

    if-lez v1, :cond_25

    .line 1179
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1180
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1181
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 1183
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingLeft()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    .line 1184
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingTop()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    const/4 v9, -0x2

    move/from16 v10, p2

    .line 1186
    invoke-static {v10, v8, v9}, Landroidx/appcompat/widget/ActionMenuView;->getChildMeasureSpec(III)I

    move-result v9

    sub-int/2addr v2, v7

    .line 1192
    iget v7, v0, Landroidx/appcompat/widget/ActionMenuView;->k:I

    div-int v10, v2, v7

    .line 1193
    rem-int v11, v2, v7

    if-nez v10, :cond_3

    .line 1197
    invoke-virtual {v0, v2, v4}, Landroidx/appcompat/widget/ActionMenuView;->setMeasuredDimension(II)V

    return-void

    .line 1201
    :cond_3
    div-int/2addr v11, v10

    add-int/2addr v7, v11

    .line 1213
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v11

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    :goto_1
    if-ge v14, v11, :cond_b

    .line 1215
    invoke-virtual {v0, v14}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move/from16 v18, v6

    .line 1216
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    move/from16 v19, v2

    const/16 v2, 0x8

    if-eq v6, v2, :cond_a

    .line 1218
    instance-of v2, v4, Landroidx/appcompat/view/menu/ActionMenuItemView;

    add-int/lit8 v3, v3, 0x1

    if-eqz v2, :cond_4

    .line 1224
    iget v6, v0, Landroidx/appcompat/widget/ActionMenuView;->l:I

    move/from16 v20, v3

    const/4 v3, 0x0

    invoke-virtual {v4, v6, v3, v6, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2

    :cond_4
    move/from16 v20, v3

    const/4 v3, 0x0

    .line 1227
    :goto_2
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 1228
    iput-boolean v3, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->f:Z

    .line 1229
    iput v3, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->c:I

    .line 1230
    iput v3, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->b:I

    .line 1231
    iput-boolean v3, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->d:Z

    .line 1232
    iput v3, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 1233
    iput v3, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    if-eqz v2, :cond_5

    .line 1234
    move-object v2, v4

    check-cast v2, Landroidx/appcompat/view/menu/ActionMenuItemView;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/ActionMenuItemView;->c()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    iput-boolean v2, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->e:Z

    .line 1237
    iget-boolean v2, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->a:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    goto :goto_4

    :cond_6
    move v2, v10

    .line 1239
    :goto_4
    invoke-static {v4, v7, v2, v9, v8}, Landroidx/appcompat/widget/ActionMenuView;->a(Landroid/view/View;IIII)I

    move-result v2

    .line 1242
    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1243
    iget-boolean v3, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->d:Z

    if-eqz v3, :cond_7

    add-int/lit8 v13, v13, 0x1

    .line 1244
    :cond_7
    iget-boolean v3, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->a:Z

    if-eqz v3, :cond_8

    const/4 v15, 0x1

    :cond_8
    sub-int/2addr v10, v2

    .line 1247
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    shl-int v2, v3, v14

    int-to-long v2, v2

    or-long v2, v16, v2

    move-wide/from16 v16, v2

    :cond_9
    move/from16 v3, v20

    :cond_a
    add-int/lit8 v14, v14, 0x1

    move/from16 v6, v18

    move/from16 v2, v19

    const/4 v4, 0x0

    goto :goto_1

    :cond_b
    move/from16 v19, v2

    move/from16 v18, v6

    const/4 v2, 0x2

    if-eqz v15, :cond_c

    if-ne v3, v2, :cond_c

    const/4 v4, 0x1

    goto :goto_5

    :cond_c
    const/4 v4, 0x0

    :goto_5
    const/4 v6, 0x0

    :goto_6
    const-wide/16 v20, 0x1

    if-lez v13, :cond_14

    if-lez v10, :cond_14

    const v8, 0x7fffffff

    const/4 v2, 0x0

    const/4 v14, 0x0

    const-wide/16 v22, 0x0

    :goto_7
    if-ge v2, v11, :cond_f

    .line 1264
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    .line 1265
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    move/from16 v25, v5

    move-object/from16 v5, v24

    check-cast v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move/from16 v24, v6

    .line 1268
    iget-boolean v6, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->d:Z

    if-eqz v6, :cond_e

    .line 1271
    iget v6, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->b:I

    if-ge v6, v8, :cond_d

    .line 1272
    iget v5, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->b:I

    shl-long v22, v20, v2

    move v8, v5

    const/4 v14, 0x1

    goto :goto_8

    .line 1275
    :cond_d
    iget v5, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->b:I

    if-ne v5, v8, :cond_e

    shl-long v5, v20, v2

    or-long v5, v22, v5

    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v22, v5

    :cond_e
    :goto_8
    add-int/lit8 v2, v2, 0x1

    move/from16 v6, v24

    move/from16 v5, v25

    goto :goto_7

    :cond_f
    move/from16 v25, v5

    move/from16 v24, v6

    or-long v16, v16, v22

    if-gt v14, v10, :cond_15

    add-int/lit8 v8, v8, 0x1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v11, :cond_13

    .line 1290
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1291
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move/from16 v26, v13

    const/4 v14, 0x1

    shl-int v13, v14, v2

    int-to-long v13, v13

    and-long v20, v22, v13

    const-wide/16 v27, 0x0

    cmp-long v24, v20, v27

    if-nez v24, :cond_11

    .line 1294
    iget v5, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->b:I

    if-ne v5, v8, :cond_10

    or-long v16, v16, v13

    :cond_10
    move/from16 v27, v4

    goto :goto_b

    :cond_11
    if-eqz v4, :cond_12

    .line 1298
    iget-boolean v13, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->e:Z

    if-eqz v13, :cond_12

    const/4 v13, 0x1

    if-ne v10, v13, :cond_12

    .line 1300
    iget v14, v0, Landroidx/appcompat/widget/ActionMenuView;->l:I

    add-int v13, v14, v7

    move/from16 v27, v4

    const/4 v4, 0x0

    invoke-virtual {v5, v13, v4, v14, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_a

    :cond_12
    move/from16 v27, v4

    .line 1302
    :goto_a
    iget v4, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->b:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->b:I

    .line 1303
    iput-boolean v5, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->f:Z

    add-int/lit8 v10, v10, -0x1

    :goto_b
    add-int/lit8 v2, v2, 0x1

    move/from16 v13, v26

    move/from16 v4, v27

    goto :goto_9

    :cond_13
    move/from16 v5, v25

    const/4 v2, 0x2

    const/4 v6, 0x1

    goto/16 :goto_6

    :cond_14
    move/from16 v25, v5

    move/from16 v24, v6

    :cond_15
    const/4 v2, 0x1

    if-nez v15, :cond_16

    if-ne v3, v2, :cond_16

    const/4 v4, 0x1

    goto :goto_c

    :cond_16
    const/4 v4, 0x0

    :goto_c
    if-lez v10, :cond_21

    const-wide/16 v5, 0x0

    cmp-long v8, v16, v5

    if-eqz v8, :cond_21

    sub-int/2addr v3, v2

    if-lt v10, v3, :cond_17

    if-nez v4, :cond_17

    if-le v12, v2, :cond_21

    .line 1316
    :cond_17
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->bitCount(J)I

    move-result v2

    int-to-float v2, v2

    if-nez v4, :cond_19

    and-long v3, v16, v20

    const/high16 v5, 0x3f000000    # 0.5f

    const-wide/16 v12, 0x0

    cmp-long v6, v3, v12

    if-eqz v6, :cond_18

    const/4 v3, 0x0

    .line 1321
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 1322
    iget-boolean v3, v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->e:Z

    if-nez v3, :cond_18

    sub-float/2addr v2, v5

    :cond_18
    add-int/lit8 v3, v11, -0x1

    const/4 v4, 0x1

    shl-int v6, v4, v3

    int-to-long v12, v6

    and-long v12, v16, v12

    const-wide/16 v14, 0x0

    cmp-long v4, v12, v14

    if-eqz v4, :cond_19

    .line 1325
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 1326
    iget-boolean v3, v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->e:Z

    if-nez v3, :cond_19

    sub-float/2addr v2, v5

    :cond_19
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1a

    mul-int v10, v10, v7

    int-to-float v3, v10

    div-float/2addr v3, v2

    float-to-int v3, v3

    goto :goto_d

    :cond_1a
    const/4 v3, 0x0

    :goto_d
    const/4 v2, 0x0

    :goto_e
    if-ge v2, v11, :cond_21

    const/4 v4, 0x1

    shl-int v5, v4, v2

    int-to-long v5, v5

    and-long v5, v16, v5

    const-wide/16 v12, 0x0

    cmp-long v8, v5, v12

    if-eqz v8, :cond_1f

    .line 1336
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1337
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 1338
    instance-of v5, v5, Landroidx/appcompat/view/menu/ActionMenuItemView;

    if-eqz v5, :cond_1c

    .line 1340
    iput v3, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->c:I

    .line 1341
    iput-boolean v4, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->f:Z

    if-nez v2, :cond_1b

    .line 1342
    iget-boolean v4, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->e:Z

    if-nez v4, :cond_1b

    neg-int v4, v3

    const/4 v5, 0x2

    .line 1345
    div-int/2addr v4, v5

    iput v4, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    goto :goto_f

    :cond_1b
    const/4 v5, 0x2

    :goto_f
    const/4 v4, 0x1

    goto :goto_10

    :cond_1c
    const/4 v5, 0x2

    .line 1348
    iget-boolean v4, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->a:Z

    if-eqz v4, :cond_1d

    .line 1349
    iput v3, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->c:I

    const/4 v4, 0x1

    .line 1350
    iput-boolean v4, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->f:Z

    neg-int v8, v3

    .line 1351
    div-int/2addr v8, v5

    iput v8, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    :goto_10
    const/16 v24, 0x1

    goto :goto_11

    :cond_1d
    const/4 v4, 0x1

    if-eqz v2, :cond_1e

    .line 1358
    div-int/lit8 v8, v3, 0x2

    iput v8, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    :cond_1e
    add-int/lit8 v8, v11, -0x1

    if-eq v2, v8, :cond_20

    .line 1361
    div-int/lit8 v8, v3, 0x2

    iput v8, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    goto :goto_11

    :cond_1f
    const/4 v5, 0x2

    :cond_20
    :goto_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_21
    move/from16 v6, v24

    if-eqz v6, :cond_23

    const/4 v4, 0x0

    :goto_12
    if-ge v4, v11, :cond_23

    .line 1372
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1373
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 1375
    iget-boolean v5, v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->f:Z

    if-eqz v5, :cond_22

    .line 1377
    iget v5, v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->b:I

    mul-int v5, v5, v7

    iget v3, v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->c:I

    add-int/2addr v5, v3

    const/high16 v3, 0x40000000    # 2.0f

    .line 1378
    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v2, v5, v9}, Landroid/view/View;->measure(II)V

    goto :goto_13

    :cond_22
    const/high16 v3, 0x40000000    # 2.0f

    :goto_13
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_23
    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v3, :cond_24

    move/from16 v2, v19

    move/from16 v6, v25

    goto :goto_14

    :cond_24
    move/from16 v6, v18

    move/from16 v2, v19

    .line 1387
    :goto_14
    invoke-virtual {v0, v2, v6}, Landroidx/appcompat/widget/ActionMenuView;->setMeasuredDimension(II)V

    return-void

    :cond_25
    move/from16 v10, p2

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v1, :cond_26

    .line 169
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 170
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    const/4 v4, 0x0

    .line 171
    iput v4, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    iput v4, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 173
    :cond_26
    invoke-super/range {p0 .. p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->onMeasure(II)V

    return-void
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 1

    .line 754
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 3158
    iput-boolean p1, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->l:Z

    return-void
.end method

.method public setMenuCallbacks(Landroidx/appcompat/view/menu/m$a;Landroidx/appcompat/view/menu/g$a;)V
    .locals 0

    .line 670
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->h:Landroidx/appcompat/view/menu/m$a;

    .line 671
    iput-object p2, p0, Landroidx/appcompat/widget/ActionMenuView;->d:Landroidx/appcompat/view/menu/g$a;

    return-void
.end method

.method public setOnMenuItemClickListener(Landroidx/appcompat/widget/ActionMenuView$d;)V
    .locals 0

    .line 142
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->e:Landroidx/appcompat/widget/ActionMenuView$d;

    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 552
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->b()Landroid/view/Menu;

    .line 553
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 2162
    iget-object v1, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->i:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    if-eqz v1, :cond_0

    .line 2163
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->i:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionMenuPresenter$d;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 2165
    iput-boolean v1, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->k:Z

    .line 2166
    iput-object p1, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->j:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 0

    .line 576
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuView;->b:Z

    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2

    .line 98
    iget v0, p0, Landroidx/appcompat/widget/ActionMenuView;->g:I

    if-eq v0, p1, :cond_1

    .line 99
    iput p1, p0, Landroidx/appcompat/widget/ActionMenuView;->g:I

    if-nez p1, :cond_0

    .line 101
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->f:Landroid/content/Context;

    return-void

    .line 103
    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->f:Landroid/content/Context;

    :cond_1
    return-void
.end method

.method public setPresenter(Landroidx/appcompat/widget/ActionMenuPresenter;)V
    .locals 0

    .line 123
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 124
    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->a(Landroidx/appcompat/widget/ActionMenuView;)V

    return-void
.end method
