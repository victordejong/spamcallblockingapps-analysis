.class Landroidx/appcompat/widget/z;
.super Landroid/widget/ListView;
.source "DropDownListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/z$b;,
        Landroidx/appcompat/widget/z$a;
    }
.end annotation


# instance fields
.field a:Landroidx/appcompat/widget/z$b;

.field private final b:Landroid/graphics/Rect;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Ljava/lang/reflect/Field;

.field private i:Landroidx/appcompat/widget/z$a;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Landroidx/core/h/y;

.field private n:Landroidx/core/widget/f;


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 118
    const/4 v0, 0x0

    sget v1, Landroidx/appcompat/a$a;->dropDownListViewStyle:I

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/z;->b:Landroid/graphics/Rect;

    .line 51
    iput v2, p0, Landroidx/appcompat/widget/z;->c:I

    .line 52
    iput v2, p0, Landroidx/appcompat/widget/z;->d:I

    .line 53
    iput v2, p0, Landroidx/appcompat/widget/z;->e:I

    .line 54
    iput v2, p0, Landroidx/appcompat/widget/z;->f:I

    .line 119
    iput-boolean p2, p0, Landroidx/appcompat/widget/z;->k:Z

    .line 120
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/z;->setCacheColorHint(I)V

    .line 123
    :try_start_0
    const-class v0, Landroid/widget/AbsListView;

    const-string/jumbo v1, "mIsChildViewEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/z;->h:Ljava/lang/reflect/Field;

    .line 124
    iget-object v0, p0, Landroidx/appcompat/widget/z;->h:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 558
    invoke-virtual {p0}, Landroidx/appcompat/widget/z;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 559
    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/appcompat/widget/z;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/z;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 560
    invoke-virtual {p0}, Landroidx/appcompat/widget/z;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 562
    :cond_0
    return-void
.end method

.method private a(ILandroid/view/View;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 586
    invoke-virtual {p0}, Landroidx/appcompat/widget/z;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 587
    if-eqz v3, :cond_2

    const/4 v2, -0x1

    if-eq p1, v2, :cond_2

    move v2, v0

    .line 588
    :goto_0
    if-eqz v2, :cond_0

    .line 589
    invoke-virtual {v3, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 592
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/z;->b(ILandroid/view/View;)V

    .line 594
    if-eqz v2, :cond_1

    .line 595
    iget-object v2, p0, Landroidx/appcompat/widget/z;->b:Landroid/graphics/Rect;

    .line 596
    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v4

    .line 597
    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    .line 598
    invoke-virtual {p0}, Landroidx/appcompat/widget/z;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3

    :goto_1
    invoke-virtual {v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 599
    invoke-static {v3, v4, v2}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;FF)V

    .line 601
    :cond_1
    return-void

    :cond_2
    move v2, v1

    .line 587
    goto :goto_0

    :cond_3
    move v0, v1

    .line 598
    goto :goto_1
.end method

.method private a(ILandroid/view/View;FF)V
    .locals 2

    .prologue
    .line 575
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/z;->a(ILandroid/view/View;)V

    .line 577
    invoke-virtual {p0}, Landroidx/appcompat/widget/z;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 578
    if-eqz v0, :cond_0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 579
    invoke-static {v0, p3, p4}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;FF)V

    .line 581
    :cond_0
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 565
    iget-object v0, p0, Landroidx/appcompat/widget/z;->b:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 566
    invoke-virtual {p0}, Landroidx/appcompat/widget/z;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 567
    if-eqz v0, :cond_0

    .line 568
    iget-object v1, p0, Landroidx/appcompat/widget/z;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 569
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 572
    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 542
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/z;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 543
    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/appcompat/widget/z;->performItemClick(Landroid/view/View;IJ)Z

    .line 544
    return-void
.end method

.method private a(Landroid/view/View;IFF)V
    .locals 6

    .prologue
    const/16 v5, 0x15

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 646
    iput-boolean v3, p0, Landroidx/appcompat/widget/z;->l:Z

    .line 649
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_0

    .line 650
    invoke-virtual {p0, p3, p4}, Landroidx/appcompat/widget/z;->drawableHotspotChanged(FF)V

    .line 652
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/z;->isPressed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 653
    invoke-virtual {p0, v3}, Landroidx/appcompat/widget/z;->setPressed(Z)V

    .line 657
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/z;->layoutChildren()V

    .line 661
    iget v0, p0, Landroidx/appcompat/widget/z;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 662
    iget v0, p0, Landroidx/appcompat/widget/z;->g:I

    invoke-virtual {p0}, Landroidx/appcompat/widget/z;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/z;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 663
    if-eqz v0, :cond_2

    if-eq v0, p1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 664
    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 667
    :cond_2
    iput p2, p0, Landroidx/appcompat/widget/z;->g:I

    .line 670
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p3, v0

    .line 671
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p4, v1

    .line 672
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v5, :cond_3

    .line 673
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 675
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 676
    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 680
    :cond_4
    invoke-direct {p0, p2, p1, p3, p4}, Landroidx/appcompat/widget/z;->a(ILandroid/view/View;FF)V

    .line 685
    invoke-direct {p0, v4}, Landroidx/appcompat/widget/z;->setSelectorEnabled(Z)V

    .line 689
    invoke-virtual {p0}, Landroidx/appcompat/widget/z;->refreshDrawableState()V

    .line 690
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 629
    iput-boolean v2, p0, Landroidx/appcompat/widget/z;->l:Z

    .line 630
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/z;->setPressed(Z)V

    .line 632
    invoke-virtual {p0}, Landroidx/appcompat/widget/z;->drawableStateChanged()V

    .line 634
    iget v0, p0, Landroidx/appcompat/widget/z;->g:I

    invoke-virtual {p0}, Landroidx/appcompat/widget/z;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/z;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 635
    if-eqz v0, :cond_0

    .line 636
    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 639
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/z;->m:Landroidx/core/h/y;

    if-eqz v0, :cond_1

    .line 640
    iget-object v0, p0, Landroidx/appcompat/widget/z;->m:Landroidx/core/h/y;

    invoke-virtual {v0}, Landroidx/core/h/y;->b()V

    .line 641
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/widget/z;->m:Landroidx/core/h/y;

    .line 643
    :cond_1
    return-void
.end method

.method private b(ILandroid/view/View;)V
    .locals 5

    .prologue
    .line 604
    iget-object v0, p0, Landroidx/appcompat/widget/z;->b:Landroid/graphics/Rect;

    .line 605
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 608
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroidx/appcompat/widget/z;->c:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 609
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroidx/appcompat/widget/z;->d:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 610
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroidx/appcompat/widget/z;->e:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 611
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroidx/appcompat/widget/z;->f:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 616
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/z;->h:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0

    .line 617
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 618
    iget-object v1, p0, Landroidx/appcompat/widget/z;->h:Ljava/lang/reflect/Field;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 619
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 620
    invoke-virtual {p0}, Landroidx/appcompat/widget/z;->refreshDrawableState()V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    :cond_0
    :goto_1
    return-void

    .line 618
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 623
    :catch_0
    move-exception v0

    .line 624
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 693
    iget-boolean v0, p0, Landroidx/appcompat/widget/z;->l:Z

    return v0
.end method

.method private setSelectorEnabled(Z)V
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Landroidx/appcompat/widget/z;->i:Landroidx/appcompat/widget/z$a;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Landroidx/appcompat/widget/z;->i:Landroidx/appcompat/widget/z$a;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/z$a;->a(Z)V

    .line 376
    :cond_0
    return-void
.end method


# virtual methods
.method public a(IIIII)I
    .locals 10

    .prologue
    .line 290
    invoke-virtual {p0}, Landroidx/appcompat/widget/z;->getListPaddingTop()I

    move-result v1

    .line 291
    invoke-virtual {p0}, Landroidx/appcompat/widget/z;->getListPaddingBottom()I

    move-result v2

    .line 292
    invoke-virtual {p0}, Landroidx/appcompat/widget/z;->getListPaddingLeft()I

    .line 293
    invoke-virtual {p0}, Landroidx/appcompat/widget/z;->getListPaddingRight()I

    .line 294
    invoke-virtual {p0}, Landroidx/appcompat/widget/z;->getDividerHeight()I

    move-result v0

    .line 295
    invoke-virtual {p0}, Landroidx/appcompat/widget/z;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 297
    invoke-virtual {p0}, Landroidx/appcompat/widget/z;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    .line 299
    if-nez v7, :cond_1

    .line 300
    add-int p4, v1, v2

    .line 369
    :cond_0
    :goto_0
    return p4

    .line 304
    :cond_1
    add-int/2addr v2, v1

    .line 305
    if-lez v0, :cond_4

    if-eqz v3, :cond_4

    .line 310
    :goto_1
    const/4 v3, 0x0

    .line 312
    const/4 v5, 0x0

    .line 313
    const/4 v4, 0x0

    .line 314
    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    .line 315
    const/4 v1, 0x0

    move v6, v1

    :goto_2
    if-ge v6, v8, :cond_8

    .line 316
    invoke-interface {v7, v6}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v1

    .line 317
    if-eq v1, v4, :cond_2

    .line 318
    const/4 v5, 0x0

    move v4, v1

    .line 321
    :cond_2
    invoke-interface {v7, v6, v5, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 325
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 327
    if-nez v1, :cond_3

    .line 328
    invoke-virtual {p0}, Landroidx/appcompat/widget/z;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 329
    invoke-virtual {v5, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    :cond_3
    iget v9, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v9, :cond_5

    .line 333
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 338
    :goto_3
    invoke-virtual {v5, p1, v1}, Landroid/view/View;->measure(II)V

    .line 342
    invoke-virtual {v5}, Landroid/view/View;->forceLayout()V

    .line 344
    if-lez v6, :cond_9

    .line 346
    add-int v1, v2, v0

    .line 349
    :goto_4
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    .line 351
    if-lt v1, p4, :cond_6

    .line 354
    if-ltz p5, :cond_0

    if-le v6, p5, :cond_0

    if-lez v3, :cond_0

    if-eq v1, p4, :cond_0

    move p4, v3

    goto :goto_0

    .line 305
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 336
    :cond_5
    const/4 v1, 0x0

    const/4 v9, 0x0

    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_3

    .line 362
    :cond_6
    if-ltz p5, :cond_7

    if-lt v6, p5, :cond_7

    move v3, v1

    .line 315
    :cond_7
    add-int/lit8 v6, v6, 0x1

    move v2, v1

    goto :goto_2

    :cond_8
    move p4, v2

    .line 369
    goto :goto_0

    :cond_9
    move v1, v2

    goto :goto_4
.end method

.method public a(Landroid/view/MotionEvent;I)Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 482
    .line 485
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .line 486
    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    move v3, v1

    move v0, v2

    .line 519
    :goto_1
    if-eqz v0, :cond_1

    if-eqz v3, :cond_2

    .line 520
    :cond_1
    invoke-direct {p0}, Landroidx/appcompat/widget/z;->b()V

    .line 524
    :cond_2
    if-eqz v0, :cond_7

    .line 525
    iget-object v1, p0, Landroidx/appcompat/widget/z;->n:Landroidx/core/widget/f;

    if-nez v1, :cond_3

    .line 526
    new-instance v1, Landroidx/core/widget/f;

    invoke-direct {v1, p0}, Landroidx/core/widget/f;-><init>(Landroid/widget/ListView;)V

    iput-object v1, p0, Landroidx/appcompat/widget/z;->n:Landroidx/core/widget/f;

    .line 528
    :cond_3
    iget-object v1, p0, Landroidx/appcompat/widget/z;->n:Landroidx/core/widget/f;

    invoke-virtual {v1, v2}, Landroidx/core/widget/f;->a(Z)Landroidx/core/widget/a;

    .line 529
    iget-object v1, p0, Landroidx/appcompat/widget/z;->n:Landroidx/core/widget/f;

    invoke-virtual {v1, p0, p1}, Landroidx/core/widget/f;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 534
    :cond_4
    :goto_2
    return v0

    :pswitch_0
    move v3, v1

    move v0, v1

    .line 489
    goto :goto_1

    :pswitch_1
    move v0, v1

    .line 494
    :goto_3
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 495
    if-gez v4, :cond_5

    move v3, v1

    move v0, v1

    .line 497
    goto :goto_1

    .line 500
    :cond_5
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    .line 501
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    .line 502
    invoke-virtual {p0, v5, v4}, Landroidx/appcompat/widget/z;->pointToPosition(II)I

    move-result v6

    .line 503
    const/4 v7, -0x1

    if-ne v6, v7, :cond_6

    move v3, v2

    .line 505
    goto :goto_1

    .line 508
    :cond_6
    invoke-virtual {p0}, Landroidx/appcompat/widget/z;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, v6, v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/z;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 509
    int-to-float v5, v5

    int-to-float v4, v4

    invoke-direct {p0, v0, v6, v5, v4}, Landroidx/appcompat/widget/z;->a(Landroid/view/View;IFF)V

    .line 512
    if-ne v3, v2, :cond_0

    .line 513
    invoke-direct {p0, v0, v6}, Landroidx/appcompat/widget/z;->a(Landroid/view/View;I)V

    goto :goto_0

    .line 530
    :cond_7
    iget-object v2, p0, Landroidx/appcompat/widget/z;->n:Landroidx/core/widget/f;

    if-eqz v2, :cond_4

    .line 531
    iget-object v2, p0, Landroidx/appcompat/widget/z;->n:Landroidx/core/widget/f;

    invoke-virtual {v2, v1}, Landroidx/core/widget/f;->a(Z)Landroidx/core/widget/a;

    goto :goto_2

    :pswitch_2
    move v0, v2

    goto :goto_3

    .line 486
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 198
    .line 200
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/z;->a(Landroid/graphics/Canvas;)V

    .line 203
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 204
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Landroidx/appcompat/widget/z;->a:Landroidx/appcompat/widget/z$b;

    if-eqz v0, :cond_0

    .line 194
    :goto_0
    return-void

    .line 190
    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->drawableStateChanged()V

    .line 192
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/z;->setSelectorEnabled(Z)V

    .line 193
    invoke-direct {p0}, Landroidx/appcompat/widget/z;->a()V

    goto :goto_0
.end method

.method public hasFocus()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Landroidx/appcompat/widget/z;->k:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWindowFocus()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Landroidx/appcompat/widget/z;->k:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocused()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Landroidx/appcompat/widget/z;->k:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInTouchMode()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Landroidx/appcompat/widget/z;->k:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/widget/z;->j:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 471
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/widget/z;->a:Landroidx/appcompat/widget/z$b;

    .line 472
    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    .line 473
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 430
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_1

    .line 434
    invoke-super {p0, p1}, Landroid/widget/ListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 466
    :cond_0
    :goto_0
    return v0

    .line 437
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 438
    const/16 v0, 0xa

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/z;->a:Landroidx/appcompat/widget/z$b;

    if-nez v0, :cond_2

    .line 441
    new-instance v0, Landroidx/appcompat/widget/z$b;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/z$b;-><init>(Landroidx/appcompat/widget/z;)V

    iput-object v0, p0, Landroidx/appcompat/widget/z;->a:Landroidx/appcompat/widget/z$b;

    .line 442
    iget-object v0, p0, Landroidx/appcompat/widget/z;->a:Landroidx/appcompat/widget/z$b;

    invoke-virtual {v0}, Landroidx/appcompat/widget/z$b;->b()V

    .line 446
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 447
    const/16 v2, 0x9

    if-eq v1, v2, :cond_3

    const/4 v2, 0x7

    if-ne v1, v2, :cond_5

    .line 449
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Landroidx/appcompat/widget/z;->pointToPosition(II)I

    move-result v1

    .line 451
    if-eq v1, v3, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/z;->getSelectedItemPosition()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 452
    invoke-virtual {p0}, Landroidx/appcompat/widget/z;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, v1, v2

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/z;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 453
    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 456
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p0}, Landroidx/appcompat/widget/z;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Landroidx/appcompat/widget/z;->setSelectionFromTop(II)V

    .line 458
    :cond_4
    invoke-direct {p0}, Landroidx/appcompat/widget/z;->a()V

    goto :goto_0

    .line 463
    :cond_5
    invoke-virtual {p0, v3}, Landroidx/appcompat/widget/z;->setSelection(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 208
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 213
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/z;->a:Landroidx/appcompat/widget/z$b;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Landroidx/appcompat/widget/z;->a:Landroidx/appcompat/widget/z$b;

    invoke-virtual {v0}, Landroidx/appcompat/widget/z$b;->a()V

    .line 217
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 210
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/z;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/z;->g:I

    goto :goto_0

    .line 208
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method setListSelectionHidden(Z)V
    .locals 0

    .prologue
    .line 554
    iput-boolean p1, p0, Landroidx/appcompat/widget/z;->j:Z

    .line 555
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 169
    if-eqz p1, :cond_1

    new-instance v0, Landroidx/appcompat/widget/z$a;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/z$a;-><init>(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iput-object v0, p0, Landroidx/appcompat/widget/z;->i:Landroidx/appcompat/widget/z$a;

    .line 170
    iget-object v0, p0, Landroidx/appcompat/widget/z;->i:Landroidx/appcompat/widget/z$a;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 172
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 173
    if-eqz p1, :cond_0

    .line 174
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 177
    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroidx/appcompat/widget/z;->c:I

    .line 178
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroidx/appcompat/widget/z;->d:I

    .line 179
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroidx/appcompat/widget/z;->e:I

    .line 180
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Landroidx/appcompat/widget/z;->f:I

    .line 181
    return-void

    .line 169
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
