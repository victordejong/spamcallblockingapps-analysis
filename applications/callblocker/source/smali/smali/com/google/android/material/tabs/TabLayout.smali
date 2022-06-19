.class public Lcom/google/android/material/tabs/TabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "TabLayout.java"


# annotations
.annotation runtime Landroidx/viewpager/widget/ViewPager$a;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/tabs/TabLayout$a;,
        Lcom/google/android/material/tabs/TabLayout$d;,
        Lcom/google/android/material/tabs/TabLayout$i;,
        Lcom/google/android/material/tabs/TabLayout$g;,
        Lcom/google/android/material/tabs/TabLayout$e;,
        Lcom/google/android/material/tabs/TabLayout$h;,
        Lcom/google/android/material/tabs/TabLayout$f;,
        Lcom/google/android/material/tabs/TabLayout$b;,
        Lcom/google/android/material/tabs/TabLayout$c;
    }
.end annotation


# static fields
.field private static final w:Landroidx/core/g/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/g/e$a",
            "<",
            "Lcom/google/android/material/tabs/TabLayout$f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final A:Lcom/google/android/material/tabs/TabLayout$e;

.field private final B:I

.field private final C:I

.field private final D:I

.field private E:I

.field private F:Lcom/google/android/material/tabs/TabLayout$b;

.field private final G:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/material/tabs/TabLayout$b;",
            ">;"
        }
    .end annotation
.end field

.field private H:Lcom/google/android/material/tabs/TabLayout$b;

.field private I:Landroid/animation/ValueAnimator;

.field private J:Landroidx/viewpager/widget/a;

.field private K:Landroid/database/DataSetObserver;

.field private L:Lcom/google/android/material/tabs/TabLayout$g;

.field private M:Lcom/google/android/material/tabs/TabLayout$a;

.field private N:Z

.field private final O:Landroidx/core/g/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/g/e$a",
            "<",
            "Lcom/google/android/material/tabs/TabLayout$h;",
            ">;"
        }
    .end annotation
.end field

.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.field f:Landroid/content/res/ColorStateList;

.field g:Landroid/content/res/ColorStateList;

.field h:Landroid/content/res/ColorStateList;

.field i:Landroid/graphics/drawable/Drawable;

.field j:Landroid/graphics/PorterDuff$Mode;

.field k:F

.field l:F

.field final m:I

.field n:I

.field o:I

.field p:I

.field q:I

.field r:I

.field s:Z

.field t:Z

.field u:Z

.field v:Landroidx/viewpager/widget/ViewPager;

.field private final x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/material/tabs/TabLayout$f;",
            ">;"
        }
    .end annotation
.end field

.field private y:Lcom/google/android/material/tabs/TabLayout$f;

.field private final z:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 198
    new-instance v0, Landroidx/core/g/e$c;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroidx/core/g/e$c;-><init>(I)V

    sput-object v0, Lcom/google/android/material/tabs/TabLayout;->w:Landroidx/core/g/e$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 431
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/tabs/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 432
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 435
    sget v0, Lcom/google/android/material/a$b;->tabStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/tabs/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 436
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 439
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 374
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->x:Ljava/util/ArrayList;

    .line 377
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->z:Landroid/graphics/RectF;

    .line 398
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/material/tabs/TabLayout;->n:I

    .line 415
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->G:Ljava/util/ArrayList;

    .line 428
    new-instance v0, Landroidx/core/g/e$b;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroidx/core/g/e$b;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->O:Landroidx/core/g/e$a;

    .line 442
    invoke-virtual {p0, v6}, Lcom/google/android/material/tabs/TabLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 445
    new-instance v0, Lcom/google/android/material/tabs/TabLayout$e;

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/tabs/TabLayout$e;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->A:Lcom/google/android/material/tabs/TabLayout$e;

    .line 446
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->A:Lcom/google/android/material/tabs/TabLayout$e;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, v0, v6, v1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 452
    sget-object v2, Lcom/google/android/material/a$l;->TabLayout:[I

    sget v4, Lcom/google/android/material/a$k;->Widget_Design_TabLayout:I

    new-array v5, v8, [I

    sget v0, Lcom/google/android/material/a$l;->TabLayout_tabTextAppearance:I

    aput v0, v5, v6

    move-object v0, p1

    move-object v1, p2

    move v3, p3

    .line 453
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/i;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 461
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_0

    .line 462
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    .line 463
    new-instance v2, Lcom/google/android/material/q/g;

    invoke-direct {v2}, Lcom/google/android/material/q/g;-><init>()V

    .line 464
    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/material/q/g;->f(Landroid/content/res/ColorStateList;)V

    .line 465
    invoke-virtual {v2, p1}, Lcom/google/android/material/q/g;->a(Landroid/content/Context;)V

    .line 466
    invoke-static {p0}, Landroidx/core/h/u;->n(Landroid/view/View;)F

    move-result v0

    invoke-virtual {v2, v0}, Lcom/google/android/material/q/g;->r(F)V

    .line 467
    invoke-static {p0, v2}, Landroidx/core/h/u;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->A:Lcom/google/android/material/tabs/TabLayout$e;

    sget v2, Lcom/google/android/material/a$l;->TabLayout_tabIndicatorHeight:I

    .line 471
    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 470
    invoke-virtual {v0, v2}, Lcom/google/android/material/tabs/TabLayout$e;->b(I)V

    .line 472
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->A:Lcom/google/android/material/tabs/TabLayout$e;

    sget v2, Lcom/google/android/material/a$l;->TabLayout_tabIndicatorColor:I

    .line 473
    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 472
    invoke-virtual {v0, v2}, Lcom/google/android/material/tabs/TabLayout$e;->a(I)V

    .line 474
    sget v0, Lcom/google/android/material/a$l;->TabLayout_tabIndicator:I

    .line 475
    invoke-static {p1, v1, v0}, Lcom/google/android/material/n/c;->b(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 474
    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 476
    sget v0, Lcom/google/android/material/a$l;->TabLayout_tabIndicatorGravity:I

    .line 477
    invoke-virtual {v1, v0, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 476
    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorGravity(I)V

    .line 478
    sget v0, Lcom/google/android/material/a$l;->TabLayout_tabIndicatorFullWidth:I

    invoke-virtual {v1, v0, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->setTabIndicatorFullWidth(Z)V

    .line 480
    sget v0, Lcom/google/android/material/a$l;->TabLayout_tabPadding:I

    .line 483
    invoke-virtual {v1, v0, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/tabs/TabLayout;->d:I

    iput v0, p0, Lcom/google/android/material/tabs/TabLayout;->c:I

    iput v0, p0, Lcom/google/android/material/tabs/TabLayout;->b:I

    iput v0, p0, Lcom/google/android/material/tabs/TabLayout;->a:I

    .line 484
    sget v0, Lcom/google/android/material/a$l;->TabLayout_tabPaddingStart:I

    iget v2, p0, Lcom/google/android/material/tabs/TabLayout;->a:I

    .line 485
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/tabs/TabLayout;->a:I

    .line 486
    sget v0, Lcom/google/android/material/a$l;->TabLayout_tabPaddingTop:I

    iget v2, p0, Lcom/google/android/material/tabs/TabLayout;->b:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/tabs/TabLayout;->b:I

    .line 487
    sget v0, Lcom/google/android/material/a$l;->TabLayout_tabPaddingEnd:I

    iget v2, p0, Lcom/google/android/material/tabs/TabLayout;->c:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/tabs/TabLayout;->c:I

    .line 488
    sget v0, Lcom/google/android/material/a$l;->TabLayout_tabPaddingBottom:I

    iget v2, p0, Lcom/google/android/material/tabs/TabLayout;->d:I

    .line 489
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/tabs/TabLayout;->d:I

    .line 491
    sget v0, Lcom/google/android/material/a$l;->TabLayout_tabTextAppearance:I

    sget v2, Lcom/google/android/material/a$k;->TextAppearance_Design_Tab:I

    .line 492
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/tabs/TabLayout;->e:I

    .line 495
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->e:I

    sget-object v2, Landroidx/appcompat/a$j;->TextAppearance:[I

    .line 496
    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 499
    :try_start_0
    sget v0, Landroidx/appcompat/a$j;->TextAppearance_android_textSize:I

    const/4 v3, 0x0

    .line 500
    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/material/tabs/TabLayout;->k:F

    .line 502
    sget v0, Landroidx/appcompat/a$j;->TextAppearance_android_textColor:I

    .line 503
    invoke-static {p1, v2, v0}, Lcom/google/android/material/n/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->f:Landroid/content/res/ColorStateList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 508
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 511
    sget v0, Lcom/google/android/material/a$l;->TabLayout_tabTextColor:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 513
    sget v0, Lcom/google/android/material/a$l;->TabLayout_tabTextColor:I

    .line 514
    invoke-static {p1, v1, v0}, Lcom/google/android/material/n/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->f:Landroid/content/res/ColorStateList;

    .line 517
    :cond_1
    sget v0, Lcom/google/android/material/a$l;->TabLayout_tabSelectedTextColor:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 521
    sget v0, Lcom/google/android/material/a$l;->TabLayout_tabSelectedTextColor:I

    invoke-virtual {v1, v0, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 522
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout;->f:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-static {v2, v0}, Lcom/google/android/material/tabs/TabLayout;->a(II)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->f:Landroid/content/res/ColorStateList;

    .line 525
    :cond_2
    sget v0, Lcom/google/android/material/a$l;->TabLayout_tabIconTint:I

    .line 526
    invoke-static {p1, v1, v0}, Lcom/google/android/material/n/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->g:Landroid/content/res/ColorStateList;

    .line 527
    sget v0, Lcom/google/android/material/a$l;->TabLayout_tabIconTintMode:I

    .line 528
    invoke-virtual {v1, v0, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/material/internal/j;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->j:Landroid/graphics/PorterDuff$Mode;

    .line 530
    sget v0, Lcom/google/android/material/a$l;->TabLayout_tabRippleColor:I

    .line 531
    invoke-static {p1, v1, v0}, Lcom/google/android/material/n/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->h:Landroid/content/res/ColorStateList;

    .line 533
    sget v0, Lcom/google/android/material/a$l;->TabLayout_tabIndicatorAnimationDuration:I

    const/16 v2, 0x12c

    .line 534
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/tabs/TabLayout;->p:I

    .line 536
    sget v0, Lcom/google/android/material/a$l;->TabLayout_tabMinWidth:I

    .line 537
    invoke-virtual {v1, v0, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/tabs/TabLayout;->B:I

    .line 538
    sget v0, Lcom/google/android/material/a$l;->TabLayout_tabMaxWidth:I

    .line 539
    invoke-virtual {v1, v0, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/tabs/TabLayout;->C:I

    .line 540
    sget v0, Lcom/google/android/material/a$l;->TabLayout_tabBackground:I

    invoke-virtual {v1, v0, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/tabs/TabLayout;->m:I

    .line 541
    sget v0, Lcom/google/android/material/a$l;->TabLayout_tabContentStart:I

    invoke-virtual {v1, v0, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/tabs/TabLayout;->E:I

    .line 543
    sget v0, Lcom/google/android/material/a$l;->TabLayout_tabMode:I

    invoke-virtual {v1, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/tabs/TabLayout;->r:I

    .line 544
    sget v0, Lcom/google/android/material/a$l;->TabLayout_tabGravity:I

    invoke-virtual {v1, v0, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/tabs/TabLayout;->o:I

    .line 545
    sget v0, Lcom/google/android/material/a$l;->TabLayout_tabInlineLabel:I

    invoke-virtual {v1, v0, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/tabs/TabLayout;->s:Z

    .line 546
    sget v0, Lcom/google/android/material/a$l;->TabLayout_tabUnboundedRipple:I

    invoke-virtual {v1, v0, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/tabs/TabLayout;->u:Z

    .line 547
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 550
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 551
    sget v1, Lcom/google/android/material/a$d;->design_tab_text_size_2line:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/google/android/material/tabs/TabLayout;->l:F

    .line 552
    sget v1, Lcom/google/android/material/a$d;->design_tab_scrollable_min_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/tabs/TabLayout;->D:I

    .line 555
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->h()V

    .line 556
    return-void

    .line 508
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 509
    throw v0
.end method

.method private a(IF)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1751
    iget v1, p0, Lcom/google/android/material/tabs/TabLayout;->r:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/material/tabs/TabLayout;->r:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 1752
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->A:Lcom/google/android/material/tabs/TabLayout$e;

    invoke-virtual {v1, p1}, Lcom/google/android/material/tabs/TabLayout$e;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1753
    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout;->A:Lcom/google/android/material/tabs/TabLayout$e;

    .line 1754
    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout$e;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->A:Lcom/google/android/material/tabs/TabLayout$e;

    add-int/lit8 v2, p1, 0x1

    .line 1755
    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout$e;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    .line 1757
    :goto_0
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1758
    :goto_1
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 1761
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v2

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 1763
    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    mul-float/2addr v0, p2

    float-to-int v0, v0

    .line 1765
    invoke-static {p0}, Landroidx/core/h/u;->g(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_5

    add-int/2addr v0, v2

    .line 1769
    :cond_2
    :goto_2
    return v0

    .line 1755
    :cond_3
    const/4 v1, 0x0

    move-object v2, v1

    goto :goto_0

    :cond_4
    move v1, v0

    .line 1757
    goto :goto_1

    .line 1765
    :cond_5
    sub-int v0, v2, v0

    goto :goto_2
.end method

.method private static a(II)Landroid/content/res/ColorStateList;
    .locals 4

    .prologue
    const/4 v1, 0x2

    .line 3095
    new-array v0, v1, [[I

    .line 3096
    new-array v1, v1, [I

    .line 3097
    const/4 v2, 0x0

    .line 3099
    sget-object v3, Lcom/google/android/material/tabs/TabLayout;->SELECTED_STATE_SET:[I

    aput-object v3, v0, v2

    .line 3100
    aput p1, v1, v2

    .line 3101
    const/4 v2, 0x1

    .line 3104
    sget-object v3, Lcom/google/android/material/tabs/TabLayout;->EMPTY_STATE_SET:[I

    aput-object v3, v0, v2

    .line 3105
    aput p0, v1, v2

    .line 3108
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method static synthetic a(Lcom/google/android/material/tabs/TabLayout;)Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->z:Landroid/graphics/RectF;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1493
    instance-of v0, p1, Lcom/google/android/material/tabs/a;

    if-eqz v0, :cond_0

    .line 1494
    check-cast p1, Lcom/google/android/material/tabs/a;

    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->a(Lcom/google/android/material/tabs/a;)V

    .line 1498
    return-void

    .line 1496
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Only TabItem instances can be added to TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 2

    .prologue
    .line 1509
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->r:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->o:I

    if-nez v0, :cond_0

    .line 1510
    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1511
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1516
    :goto_0
    return-void

    .line 1513
    :cond_0
    const/4 v0, -0x2

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1514
    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0
.end method

.method private a(Landroidx/viewpager/widget/ViewPager;ZZ)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1287
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->v:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_1

    .line 1289
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->L:Lcom/google/android/material/tabs/TabLayout$g;

    if-eqz v0, :cond_0

    .line 1290
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->v:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->L:Lcom/google/android/material/tabs/TabLayout$g;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->b(Landroidx/viewpager/widget/ViewPager$f;)V

    .line 1292
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->M:Lcom/google/android/material/tabs/TabLayout$a;

    if-eqz v0, :cond_1

    .line 1293
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->v:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->M:Lcom/google/android/material/tabs/TabLayout$a;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->b(Landroidx/viewpager/widget/ViewPager$e;)V

    .line 1297
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->H:Lcom/google/android/material/tabs/TabLayout$b;

    if-eqz v0, :cond_2

    .line 1299
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->H:Lcom/google/android/material/tabs/TabLayout$b;

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->b(Lcom/google/android/material/tabs/TabLayout$b;)V

    .line 1300
    iput-object v2, p0, Lcom/google/android/material/tabs/TabLayout;->H:Lcom/google/android/material/tabs/TabLayout$b;

    .line 1303
    :cond_2
    if-eqz p1, :cond_6

    .line 1304
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->v:Landroidx/viewpager/widget/ViewPager;

    .line 1307
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->L:Lcom/google/android/material/tabs/TabLayout$g;

    if-nez v0, :cond_3

    .line 1308
    new-instance v0, Lcom/google/android/material/tabs/TabLayout$g;

    invoke-direct {v0, p0}, Lcom/google/android/material/tabs/TabLayout$g;-><init>(Lcom/google/android/material/tabs/TabLayout;)V

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->L:Lcom/google/android/material/tabs/TabLayout$g;

    .line 1310
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->L:Lcom/google/android/material/tabs/TabLayout$g;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$g;->a()V

    .line 1311
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->L:Lcom/google/android/material/tabs/TabLayout$g;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->a(Landroidx/viewpager/widget/ViewPager$f;)V

    .line 1314
    new-instance v0, Lcom/google/android/material/tabs/TabLayout$i;

    invoke-direct {v0, p1}, Lcom/google/android/material/tabs/TabLayout$i;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->H:Lcom/google/android/material/tabs/TabLayout$b;

    .line 1315
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->H:Lcom/google/android/material/tabs/TabLayout$b;

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->a(Lcom/google/android/material/tabs/TabLayout$b;)V

    .line 1317
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v0

    .line 1318
    if-eqz v0, :cond_4

    .line 1321
    invoke-virtual {p0, v0, p2}, Lcom/google/android/material/tabs/TabLayout;->a(Landroidx/viewpager/widget/a;Z)V

    .line 1325
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->M:Lcom/google/android/material/tabs/TabLayout$a;

    if-nez v0, :cond_5

    .line 1326
    new-instance v0, Lcom/google/android/material/tabs/TabLayout$a;

    invoke-direct {v0, p0}, Lcom/google/android/material/tabs/TabLayout$a;-><init>(Lcom/google/android/material/tabs/TabLayout;)V

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->M:Lcom/google/android/material/tabs/TabLayout$a;

    .line 1328
    :cond_5
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->M:Lcom/google/android/material/tabs/TabLayout$a;

    invoke-virtual {v0, p2}, Lcom/google/android/material/tabs/TabLayout$a;->a(Z)V

    .line 1329
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->M:Lcom/google/android/material/tabs/TabLayout$a;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->a(Landroidx/viewpager/widget/ViewPager$e;)V

    .line 1332
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/material/tabs/TabLayout;->a(IFZ)V

    .line 1340
    :goto_0
    iput-boolean p3, p0, Lcom/google/android/material/tabs/TabLayout;->N:Z

    .line 1341
    return-void

    .line 1336
    :cond_6
    iput-object v2, p0, Lcom/google/android/material/tabs/TabLayout;->v:Landroidx/viewpager/widget/ViewPager;

    .line 1337
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/google/android/material/tabs/TabLayout;->a(Landroidx/viewpager/widget/a;Z)V

    goto :goto_0
.end method

.method private a(Lcom/google/android/material/tabs/TabLayout$f;I)V
    .locals 3

    .prologue
    .line 1456
    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout$f;->b(I)V

    .line 1457
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1459
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1460
    add-int/lit8 v0, p2, 0x1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 1461
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout$f;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$f;->b(I)V

    .line 1460
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1463
    :cond_0
    return-void
.end method

.method private a(Lcom/google/android/material/tabs/a;)V
    .locals 2

    .prologue
    .line 686
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->a()Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object v0

    .line 687
    iget-object v1, p1, Lcom/google/android/material/tabs/a;->a:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 688
    iget-object v1, p1, Lcom/google/android/material/tabs/a;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$f;->a(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$f;

    .line 690
    :cond_0
    iget-object v1, p1, Lcom/google/android/material/tabs/a;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 691
    iget-object v1, p1, Lcom/google/android/material/tabs/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$f;->a(Landroid/graphics/drawable/Drawable;)Lcom/google/android/material/tabs/TabLayout$f;

    .line 693
    :cond_1
    iget v1, p1, Lcom/google/android/material/tabs/a;->c:I

    if-eqz v1, :cond_2

    .line 694
    iget v1, p1, Lcom/google/android/material/tabs/a;->c:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$f;->a(I)Lcom/google/android/material/tabs/TabLayout$f;

    .line 696
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/material/tabs/a;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 697
    invoke-virtual {p1}, Lcom/google/android/material/tabs/a;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$f;->b(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$f;

    .line 699
    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->a(Lcom/google/android/material/tabs/TabLayout$f;)V

    .line 700
    return-void
.end method

.method private b(I)V
    .locals 2

    .prologue
    .line 1607
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->A:Lcom/google/android/material/tabs/TabLayout$e;

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout$e;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout$h;

    .line 1608
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->A:Lcom/google/android/material/tabs/TabLayout$e;

    invoke-virtual {v1, p1}, Lcom/google/android/material/tabs/TabLayout$e;->removeViewAt(I)V

    .line 1609
    if-eqz v0, :cond_0

    .line 1610
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$h;->a()V

    .line 1611
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->O:Landroidx/core/g/e$a;

    invoke-interface {v1, v0}, Landroidx/core/g/e$a;->a(Ljava/lang/Object;)Z

    .line 1613
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->requestLayout()V

    .line 1614
    return-void
.end method

.method private c(I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 1617
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1642
    :goto_0
    return-void

    .line 1621
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1622
    invoke-static {p0}, Landroidx/core/h/u;->y(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->A:Lcom/google/android/material/tabs/TabLayout$e;

    .line 1623
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$e;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1626
    :cond_1
    invoke-virtual {p0, p1, v1, v5}, Lcom/google/android/material/tabs/TabLayout;->a(IFZ)V

    goto :goto_0

    .line 1630
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getScrollX()I

    move-result v0

    .line 1631
    invoke-direct {p0, p1, v1}, Lcom/google/android/material/tabs/TabLayout;->a(IF)I

    move-result v1

    .line 1633
    if-eq v0, v1, :cond_3

    .line 1634
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->g()V

    .line 1636
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout;->I:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v0, v3, v4

    aput v1, v3, v5

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 1637
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->I:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1641
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->A:Lcom/google/android/material/tabs/TabLayout$e;

    iget v1, p0, Lcom/google/android/material/tabs/TabLayout;->p:I

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/tabs/TabLayout$e;->b(II)V

    goto :goto_0
.end method

.method private d(Lcom/google/android/material/tabs/TabLayout$f;)Lcom/google/android/material/tabs/TabLayout$h;
    .locals 2

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->O:Landroidx/core/g/e$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->O:Landroidx/core/g/e$a;

    invoke-interface {v0}, Landroidx/core/g/e$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout$h;

    .line 1441
    :goto_0
    if-nez v0, :cond_0

    .line 1442
    new-instance v0, Lcom/google/android/material/tabs/TabLayout$h;

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/tabs/TabLayout$h;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroid/content/Context;)V

    .line 1444
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout$h;->setTab(Lcom/google/android/material/tabs/TabLayout$f;)V

    .line 1445
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$h;->setFocusable(Z)V

    .line 1446
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->getTabMinWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$h;->setMinimumWidth(I)V

    .line 1447
    invoke-static {p1}, Lcom/google/android/material/tabs/TabLayout$f;->a(Lcom/google/android/material/tabs/TabLayout$f;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1448
    invoke-static {p1}, Lcom/google/android/material/tabs/TabLayout$f;->b(Lcom/google/android/material/tabs/TabLayout$f;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$h;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1452
    :goto_1
    return-object v0

    .line 1440
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1450
    :cond_2
    invoke-static {p1}, Lcom/google/android/material/tabs/TabLayout$f;->a(Lcom/google/android/material/tabs/TabLayout$f;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$h;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private e()V
    .locals 3

    .prologue
    .line 1433
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->x:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 1434
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout$f;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$f;->h()V

    .line 1433
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1436
    :cond_0
    return-void
.end method

.method private e(Lcom/google/android/material/tabs/TabLayout$f;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1466
    iget-object v0, p1, Lcom/google/android/material/tabs/TabLayout$f;->b:Lcom/google/android/material/tabs/TabLayout$h;

    .line 1467
    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$h;->setSelected(Z)V

    .line 1468
    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$h;->setActivated(Z)V

    .line 1469
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->A:Lcom/google/android/material/tabs/TabLayout$e;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$f;->c()I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->f()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/material/tabs/TabLayout$e;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1470
    return-void
.end method

.method private f()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .prologue
    .line 1502
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1504
    invoke-direct {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->a(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1505
    return-object v0
.end method

.method private f(Lcom/google/android/material/tabs/TabLayout$f;)V
    .locals 2

    .prologue
    .line 1733
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->G:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 1734
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->G:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout$b;

    invoke-interface {v0, p1}, Lcom/google/android/material/tabs/TabLayout$b;->a(Lcom/google/android/material/tabs/TabLayout$f;)V

    .line 1733
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1736
    :cond_0
    return-void
.end method

.method private g()V
    .locals 4

    .prologue
    .line 1645
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->I:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 1646
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->I:Landroid/animation/ValueAnimator;

    .line 1647
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->I:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/google/android/material/a/a;->b:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1648
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->I:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/google/android/material/tabs/TabLayout;->p:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1649
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->I:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/android/material/tabs/TabLayout$1;

    invoke-direct {v1, p0}, Lcom/google/android/material/tabs/TabLayout$1;-><init>(Lcom/google/android/material/tabs/TabLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1657
    :cond_0
    return-void
.end method

.method private g(Lcom/google/android/material/tabs/TabLayout$f;)V
    .locals 2

    .prologue
    .line 1739
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->G:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 1740
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->G:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout$b;

    invoke-interface {v0, p1}, Lcom/google/android/material/tabs/TabLayout$b;->b(Lcom/google/android/material/tabs/TabLayout$f;)V

    .line 1739
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1742
    :cond_0
    return-void
.end method

.method private getDefaultHeight()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3113
    .line 3114
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_2

    .line 3115
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout$f;

    .line 3116
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$f;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$f;->d()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3117
    const/4 v0, 0x1

    .line 3121
    :goto_1
    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/material/tabs/TabLayout;->s:Z

    if-nez v0, :cond_1

    const/16 v0, 0x48

    :goto_2
    return v0

    .line 3114
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 3121
    :cond_1
    const/16 v0, 0x30

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private getTabMinWidth()I
    .locals 2

    .prologue
    .line 3125
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->B:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3127
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->B:I

    .line 3130
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->r:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->r:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_1
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->D:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTabScrollRange()I
    .locals 3

    .prologue
    .line 1389
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->A:Lcom/google/android/material/tabs/TabLayout$e;

    .line 1390
    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout$e;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1389
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private h()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1773
    .line 1774
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->r:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->r:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 1776
    :cond_0
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->E:I

    iget v2, p0, Lcom/google/android/material/tabs/TabLayout;->a:I

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1778
    :goto_0
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout;->A:Lcom/google/android/material/tabs/TabLayout$e;

    invoke-static {v2, v0, v1, v1, v1}, Landroidx/core/h/u;->a(Landroid/view/View;IIII)V

    .line 1780
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->r:I

    packed-switch v0, :pswitch_data_0

    .line 1790
    :goto_1
    invoke-virtual {p0, v3}, Lcom/google/android/material/tabs/TabLayout;->a(Z)V

    .line 1791
    return-void

    .line 1783
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->A:Lcom/google/android/material/tabs/TabLayout$e;

    invoke-virtual {v0, v3}, Lcom/google/android/material/tabs/TabLayout$e;->setGravity(I)V

    goto :goto_1

    .line 1786
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->A:Lcom/google/android/material/tabs/TabLayout$e;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$e;->setGravity(I)V

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0

    .line 1780
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private h(Lcom/google/android/material/tabs/TabLayout$f;)V
    .locals 2

    .prologue
    .line 1745
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->G:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 1746
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->G:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout$b;

    invoke-interface {v0, p1}, Lcom/google/android/material/tabs/TabLayout$b;->c(Lcom/google/android/material/tabs/TabLayout$f;)V

    .line 1745
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1748
    :cond_0
    return-void
.end method

.method private setSelectedTabView(I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1670
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->A:Lcom/google/android/material/tabs/TabLayout$e;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$e;->getChildCount()I

    move-result v4

    .line 1671
    if-ge p1, v4, :cond_2

    move v3, v2

    .line 1672
    :goto_0
    if-ge v3, v4, :cond_2

    .line 1673
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->A:Lcom/google/android/material/tabs/TabLayout$e;

    invoke-virtual {v0, v3}, Lcom/google/android/material/tabs/TabLayout$e;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1674
    if-ne v3, p1, :cond_0

    move v0, v1

    :goto_1
    invoke-virtual {v5, v0}, Landroid/view/View;->setSelected(Z)V

    .line 1675
    if-ne v3, p1, :cond_1

    move v0, v1

    :goto_2
    invoke-virtual {v5, v0}, Landroid/view/View;->setActivated(Z)V

    .line 1672
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1674
    goto :goto_1

    :cond_1
    move v0, v2

    .line 1675
    goto :goto_2

    .line 1678
    :cond_2
    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/material/tabs/TabLayout$f;
    .locals 2

    .prologue
    .line 795
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->b()Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object v0

    .line 796
    iput-object p0, v0, Lcom/google/android/material/tabs/TabLayout$f;->a:Lcom/google/android/material/tabs/TabLayout;

    .line 797
    invoke-direct {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->d(Lcom/google/android/material/tabs/TabLayout$f;)Lcom/google/android/material/tabs/TabLayout$h;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/material/tabs/TabLayout$f;->b:Lcom/google/android/material/tabs/TabLayout$h;

    .line 798
    return-object v0
.end method

.method public a(I)Lcom/google/android/material/tabs/TabLayout$f;
    .locals 1

    .prologue
    .line 827
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout$f;

    goto :goto_0
.end method

.method public a(IFZ)V
    .locals 1

    .prologue
    .line 593
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/material/tabs/TabLayout;->a(IFZZ)V

    .line 594
    return-void
.end method

.method public a(IFZZ)V
    .locals 3

    .prologue
    .line 613
    int-to-float v0, p1

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 614
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->A:Lcom/google/android/material/tabs/TabLayout$e;

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout$e;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 633
    :cond_0
    :goto_0
    return-void

    .line 619
    :cond_1
    if-eqz p4, :cond_2

    .line 620
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->A:Lcom/google/android/material/tabs/TabLayout$e;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/material/tabs/TabLayout$e;->a(IF)V

    .line 624
    :cond_2
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->I:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->I:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 625
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->I:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 627
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/tabs/TabLayout;->a(IF)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/google/android/material/tabs/TabLayout;->scrollTo(II)V

    .line 630
    if-eqz p3, :cond_0

    .line 631
    invoke-direct {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabView(I)V

    goto :goto_0
.end method

.method public a(Landroidx/viewpager/widget/ViewPager;Z)V
    .locals 1

    .prologue
    .line 1282
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/tabs/TabLayout;->a(Landroidx/viewpager/widget/ViewPager;ZZ)V

    .line 1283
    return-void
.end method

.method a(Landroidx/viewpager/widget/a;Z)V
    .locals 2

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->J:Landroidx/viewpager/widget/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->K:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_0

    .line 1396
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->J:Landroidx/viewpager/widget/a;

    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->K:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/a;->b(Landroid/database/DataSetObserver;)V

    .line 1399
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->J:Landroidx/viewpager/widget/a;

    .line 1401
    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 1403
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->K:Landroid/database/DataSetObserver;

    if-nez v0, :cond_1

    .line 1404
    new-instance v0, Lcom/google/android/material/tabs/TabLayout$d;

    invoke-direct {v0, p0}, Lcom/google/android/material/tabs/TabLayout$d;-><init>(Lcom/google/android/material/tabs/TabLayout;)V

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->K:Landroid/database/DataSetObserver;

    .line 1406
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->K:Landroid/database/DataSetObserver;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/a;->a(Landroid/database/DataSetObserver;)V

    .line 1410
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->d()V

    .line 1411
    return-void
.end method

.method public a(Lcom/google/android/material/tabs/TabLayout$b;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 754
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->G:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 755
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->G:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/material/tabs/TabLayout$f;)V
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/tabs/TabLayout;->a(Lcom/google/android/material/tabs/TabLayout$f;Z)V

    .line 643
    return-void
.end method

.method public a(Lcom/google/android/material/tabs/TabLayout$f;IZ)V
    .locals 2

    .prologue
    .line 674
    iget-object v0, p1, Lcom/google/android/material/tabs/TabLayout$f;->a:Lcom/google/android/material/tabs/TabLayout;

    if-eq v0, p0, :cond_0

    .line 675
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Tab belongs to a different TabLayout."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 677
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/tabs/TabLayout;->a(Lcom/google/android/material/tabs/TabLayout$f;I)V

    .line 678
    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->e(Lcom/google/android/material/tabs/TabLayout$f;)V

    .line 680
    if-eqz p3, :cond_1

    .line 681
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$f;->f()V

    .line 683
    :cond_1
    return-void
.end method

.method public a(Lcom/google/android/material/tabs/TabLayout$f;Z)V
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/material/tabs/TabLayout;->a(Lcom/google/android/material/tabs/TabLayout$f;IZ)V

    .line 664
    return-void
.end method

.method a(Z)V
    .locals 3

    .prologue
    .line 1794
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->A:Lcom/google/android/material/tabs/TabLayout$e;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$e;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1795
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->A:Lcom/google/android/material/tabs/TabLayout$e;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$e;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1796
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->getTabMinWidth()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 1797
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->a(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1798
    if-eqz p1, :cond_0

    .line 1799
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 1794
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1802
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1474
    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->a(Landroid/view/View;)V

    .line 1475
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 1479
    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->a(Landroid/view/View;)V

    .line 1480
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 1489
    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->a(Landroid/view/View;)V

    .line 1490
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 1484
    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->a(Landroid/view/View;)V

    .line 1485
    return-void
.end method

.method protected b()Lcom/google/android/material/tabs/TabLayout$f;
    .locals 1

    .prologue
    .line 803
    sget-object v0, Lcom/google/android/material/tabs/TabLayout;->w:Landroidx/core/g/e$a;

    invoke-interface {v0}, Landroidx/core/g/e$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout$f;

    .line 804
    if-nez v0, :cond_0

    .line 805
    new-instance v0, Lcom/google/android/material/tabs/TabLayout$f;

    invoke-direct {v0}, Lcom/google/android/material/tabs/TabLayout$f;-><init>()V

    .line 807
    :cond_0
    return-object v0
.end method

.method public b(Lcom/google/android/material/tabs/TabLayout$b;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 778
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->G:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 779
    return-void
.end method

.method public b(Lcom/google/android/material/tabs/TabLayout$f;Z)V
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 1699
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout;->y:Lcom/google/android/material/tabs/TabLayout$f;

    .line 1701
    if-ne v2, p1, :cond_1

    .line 1702
    if-eqz v2, :cond_0

    .line 1703
    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->h(Lcom/google/android/material/tabs/TabLayout$f;)V

    .line 1704
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$f;->c()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->c(I)V

    .line 1730
    :cond_0
    :goto_0
    return-void

    .line 1707
    :cond_1
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$f;->c()I

    move-result v0

    .line 1708
    :goto_1
    if-eqz p2, :cond_3

    .line 1709
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout$f;->c()I

    move-result v3

    if-ne v3, v1, :cond_6

    :cond_2
    if-eq v0, v1, :cond_6

    .line 1712
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v0, v3, v4}, Lcom/google/android/material/tabs/TabLayout;->a(IFZ)V

    .line 1716
    :goto_2
    if-eq v0, v1, :cond_3

    .line 1717
    invoke-direct {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabView(I)V

    .line 1722
    :cond_3
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->y:Lcom/google/android/material/tabs/TabLayout$f;

    .line 1723
    if-eqz v2, :cond_4

    .line 1724
    invoke-direct {p0, v2}, Lcom/google/android/material/tabs/TabLayout;->g(Lcom/google/android/material/tabs/TabLayout$f;)V

    .line 1726
    :cond_4
    if-eqz p1, :cond_0

    .line 1727
    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->f(Lcom/google/android/material/tabs/TabLayout$f;)V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 1707
    goto :goto_1

    .line 1714
    :cond_6
    invoke-direct {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->c(I)V

    goto :goto_2
.end method

.method protected b(Lcom/google/android/material/tabs/TabLayout$f;)Z
    .locals 1

    .prologue
    .line 812
    sget-object v0, Lcom/google/android/material/tabs/TabLayout;->w:Landroidx/core/g/e$a;

    invoke-interface {v0, p1}, Landroidx/core/g/e$a;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 882
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->A:Lcom/google/android/material/tabs/TabLayout$e;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$e;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 883
    invoke-direct {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->b(I)V

    .line 882
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 886
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 887
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout$f;

    .line 888
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 889
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$f;->i()V

    .line 890
    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->b(Lcom/google/android/material/tabs/TabLayout$f;)Z

    goto :goto_1

    .line 893
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->y:Lcom/google/android/material/tabs/TabLayout$f;

    .line 894
    return-void
.end method

.method public c(Lcom/google/android/material/tabs/TabLayout$f;)V
    .locals 1

    .prologue
    .line 1687
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/tabs/TabLayout;->b(Lcom/google/android/material/tabs/TabLayout$f;Z)V

    .line 1688
    return-void
.end method

.method d()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1414
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->c()V

    .line 1416
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->J:Landroidx/viewpager/widget/a;

    if-eqz v0, :cond_1

    .line 1417
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->J:Landroidx/viewpager/widget/a;

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->b()I

    move-result v2

    move v0, v1

    .line 1418
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1419
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->a()Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/material/tabs/TabLayout;->J:Landroidx/viewpager/widget/a;

    invoke-virtual {v4, v0}, Landroidx/viewpager/widget/a;->c(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/tabs/TabLayout$f;->a(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/google/android/material/tabs/TabLayout;->a(Lcom/google/android/material/tabs/TabLayout$f;Z)V

    .line 1418
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1423
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->v:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_1

    if-lez v2, :cond_1

    .line 1424
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->v:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 1425
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1426
    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->a(I)Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->c(Lcom/google/android/material/tabs/TabLayout$f;)V

    .line 1430
    :cond_1
    return-void
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 173
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .prologue
    .line 3139
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedTabPosition()I
    .locals 1

    .prologue
    .line 836
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->y:Lcom/google/android/material/tabs/TabLayout$f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->y:Lcom/google/android/material/tabs/TabLayout$f;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$f;->c()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 821
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTabGravity()I
    .locals 1

    .prologue
    .line 948
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->o:I

    return v0
.end method

.method public getTabIconTint()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->g:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTabIndicatorGravity()I
    .locals 1

    .prologue
    .line 981
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->q:I

    return v0
.end method

.method getTabMaxWidth()I
    .locals 1

    .prologue
    .line 3143
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->n:I

    return v0
.end method

.method public getTabMode()I
    .locals 1

    .prologue
    .line 925
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->r:I

    return v0
.end method

.method public getTabRippleColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->h:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTabSelectedIndicator()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->i:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTabTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->f:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1361
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 1363
    invoke-static {p0}, Lcom/google/android/material/q/h;->a(Landroid/view/View;)V

    .line 1365
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->v:Landroidx/viewpager/widget/ViewPager;

    if-nez v0, :cond_0

    .line 1368
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1369
    instance-of v1, v0, Landroidx/viewpager/widget/ViewPager;

    if-eqz v1, :cond_0

    .line 1372
    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    invoke-direct {p0, v0, v2, v2}, Lcom/google/android/material/tabs/TabLayout;->a(Landroidx/viewpager/widget/ViewPager;ZZ)V

    .line 1375
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1379
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 1381
    iget-boolean v0, p0, Lcom/google/android/material/tabs/TabLayout;->N:Z

    if-eqz v0, :cond_0

    .line 1383
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 1384
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/tabs/TabLayout;->N:Z

    .line 1386
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 1529
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->A:Lcom/google/android/material/tabs/TabLayout$e;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$e;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1530
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->A:Lcom/google/android/material/tabs/TabLayout$e;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$e;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1531
    instance-of v2, v0, Lcom/google/android/material/tabs/TabLayout$h;

    if-eqz v2, :cond_0

    .line 1532
    check-cast v0, Lcom/google/android/material/tabs/TabLayout$h;

    invoke-static {v0, p1}, Lcom/google/android/material/tabs/TabLayout$h;->a(Lcom/google/android/material/tabs/TabLayout$h;Landroid/graphics/Canvas;)V

    .line 1529
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1536
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1537
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1543
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->getDefaultHeight()I

    move-result v3

    invoke-static {v0, v3}, Lcom/google/android/material/internal/j;->a(Landroid/content/Context;I)F

    move-result v0

    float-to-int v0, v0

    .line 1544
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 1559
    :cond_0
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1560
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    if-eqz v3, :cond_1

    .line 1563
    iget v3, p0, Lcom/google/android/material/tabs/TabLayout;->C:I

    if-lez v3, :cond_3

    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->C:I

    .line 1566
    :goto_1
    iput v0, p0, Lcom/google/android/material/tabs/TabLayout;->n:I

    .line 1570
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 1572
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getChildCount()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 1575
    invoke-virtual {p0, v2}, Lcom/google/android/material/tabs/TabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1578
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->r:I

    packed-switch v0, :pswitch_data_0

    move v0, v2

    .line 1591
    :goto_2
    if-eqz v0, :cond_2

    .line 1596
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 1597
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1594
    invoke-static {p2, v0, v1}, Lcom/google/android/material/tabs/TabLayout;->getChildMeasureSpec(III)I

    move-result v0

    .line 1600
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1601
    invoke-virtual {v3, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1604
    :cond_2
    return-void

    .line 1546
    :sswitch_0
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getChildCount()I

    move-result v3

    if-ne v3, v1, :cond_0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    if-lt v3, v0, :cond_0

    .line 1547
    invoke-virtual {p0, v2}, Lcom/google/android/material/tabs/TabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_0

    .line 1553
    :sswitch_1
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getPaddingTop()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getPaddingBottom()I

    move-result v3

    add-int/2addr v0, v3

    .line 1552
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    .line 1563
    :cond_3
    int-to-float v0, v0

    .line 1566
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x38

    invoke-static {v3, v4}, Lcom/google/android/material/internal/j;->a(Landroid/content/Context;I)F

    move-result v3

    sub-float/2addr v0, v3

    float-to-int v0, v0

    goto :goto_1

    .line 1583
    :pswitch_0
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getMeasuredWidth()I

    move-result v4

    if-ge v0, v4, :cond_4

    move v0, v1

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_2

    .line 1587
    :pswitch_1
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getMeasuredWidth()I

    move-result v4

    if-eq v0, v4, :cond_5

    :goto_3
    move v0, v1

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_3

    .line 1544
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_1
    .end sparse-switch

    .line 1578
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setElevation(F)V
    .locals 0

    .prologue
    .line 1521
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->setElevation(F)V

    .line 1523
    invoke-static {p0, p1}, Lcom/google/android/material/q/h;->a(Landroid/view/View;F)V

    .line 1524
    return-void
.end method

.method public setInlineLabel(Z)V
    .locals 3

    .prologue
    .line 1024
    iget-boolean v0, p0, Lcom/google/android/material/tabs/TabLayout;->s:Z

    if-eq v0, p1, :cond_2

    .line 1025
    iput-boolean p1, p0, Lcom/google/android/material/tabs/TabLayout;->s:Z

    .line 1026
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->A:Lcom/google/android/material/tabs/TabLayout$e;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$e;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1027
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->A:Lcom/google/android/material/tabs/TabLayout$e;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$e;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1028
    instance-of v2, v0, Lcom/google/android/material/tabs/TabLayout$h;

    if-eqz v2, :cond_0

    .line 1029
    check-cast v0, Lcom/google/android/material/tabs/TabLayout$h;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$h;->c()V

    .line 1026
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1032
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->h()V

    .line 1034
    :cond_2
    return-void
.end method

.method public setInlineLabelResource(I)V
    .locals 1

    .prologue
    .line 1045
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->setInlineLabel(Z)V

    .line 1046
    return-void
.end method

.method public setOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$b;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 719
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->F:Lcom/google/android/material/tabs/TabLayout$b;

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->F:Lcom/google/android/material/tabs/TabLayout$b;

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->b(Lcom/google/android/material/tabs/TabLayout$b;)V

    .line 724
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->F:Lcom/google/android/material/tabs/TabLayout$b;

    .line 725
    if-eqz p1, :cond_1

    .line 726
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->a(Lcom/google/android/material/tabs/TabLayout$b;)V

    .line 728
    :cond_1
    return-void
.end method

.method public setOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$c;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 708
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->setOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$b;)V

    .line 709
    return-void
.end method

.method setScrollAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .prologue
    .line 1660
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->g()V

    .line 1661
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->I:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1662
    return-void
.end method

.method public setSelectedTabIndicator(I)V
    .locals 1

    .prologue
    .line 1245
    if-eqz p1, :cond_0

    .line 1247
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1246
    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 1251
    :goto_0
    return-void

    .line 1249
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->i:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 1229
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->i:Landroid/graphics/drawable/Drawable;

    .line 1230
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->A:Lcom/google/android/material/tabs/TabLayout$e;

    invoke-static {v0}, Landroidx/core/h/u;->e(Landroid/view/View;)V

    .line 1232
    :cond_0
    return-void
.end method

.method public setSelectedTabIndicatorColor(I)V
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->A:Lcom/google/android/material/tabs/TabLayout$e;

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout$e;->a(I)V

    .line 566
    return-void
.end method

.method public setSelectedTabIndicatorGravity(I)V
    .locals 1

    .prologue
    .line 966
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->q:I

    if-eq v0, p1, :cond_0

    .line 967
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout;->q:I

    .line 968
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->A:Lcom/google/android/material/tabs/TabLayout$e;

    invoke-static {v0}, Landroidx/core/h/u;->e(Landroid/view/View;)V

    .line 970
    :cond_0
    return-void
.end method

.method public setSelectedTabIndicatorHeight(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 578
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->A:Lcom/google/android/material/tabs/TabLayout$e;

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout$e;->b(I)V

    .line 579
    return-void
.end method

.method public setTabGravity(I)V
    .locals 1

    .prologue
    .line 935
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->o:I

    if-eq v0, p1, :cond_0

    .line 936
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout;->o:I

    .line 937
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->h()V

    .line 939
    :cond_0
    return-void
.end method

.method public setTabIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->g:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1138
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->g:Landroid/content/res/ColorStateList;

    .line 1139
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->e()V

    .line 1141
    :cond_0
    return-void
.end method

.method public setTabIconTintResource(I)V
    .locals 1

    .prologue
    .line 1150
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->setTabIconTint(Landroid/content/res/ColorStateList;)V

    .line 1151
    return-void
.end method

.method public setTabIndicatorFullWidth(Z)V
    .locals 1

    .prologue
    .line 1000
    iput-boolean p1, p0, Lcom/google/android/material/tabs/TabLayout;->t:Z

    .line 1001
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->A:Lcom/google/android/material/tabs/TabLayout$e;

    invoke-static {v0}, Landroidx/core/h/u;->e(Landroid/view/View;)V

    .line 1002
    return-void
.end method

.method public setTabMode(I)V
    .locals 1

    .prologue
    .line 912
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->r:I

    if-eq p1, v0, :cond_0

    .line 913
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout;->r:I

    .line 914
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->h()V

    .line 916
    :cond_0
    return-void
.end method

.method public setTabRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 3

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->h:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    .line 1182
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->h:Landroid/content/res/ColorStateList;

    .line 1183
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->A:Lcom/google/android/material/tabs/TabLayout$e;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$e;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1184
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->A:Lcom/google/android/material/tabs/TabLayout$e;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$e;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1185
    instance-of v2, v0, Lcom/google/android/material/tabs/TabLayout$h;

    if-eqz v2, :cond_0

    .line 1186
    check-cast v0, Lcom/google/android/material/tabs/TabLayout$h;

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/material/tabs/TabLayout$h;->a(Lcom/google/android/material/tabs/TabLayout$h;Landroid/content/Context;)V

    .line 1183
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1190
    :cond_1
    return-void
.end method

.method public setTabRippleColorResource(I)V
    .locals 1

    .prologue
    .line 1202
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->setTabRippleColor(Landroid/content/res/ColorStateList;)V

    .line 1203
    return-void
.end method

.method public setTabTextColors(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->f:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1110
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->f:Landroid/content/res/ColorStateList;

    .line 1111
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->e()V

    .line 1113
    :cond_0
    return-void
.end method

.method public setTabsFromPagerAdapter(Landroidx/viewpager/widget/a;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1350
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/tabs/TabLayout;->a(Landroidx/viewpager/widget/a;Z)V

    .line 1351
    return-void
.end method

.method public setUnboundedRipple(Z)V
    .locals 3

    .prologue
    .line 1069
    iget-boolean v0, p0, Lcom/google/android/material/tabs/TabLayout;->u:Z

    if-eq v0, p1, :cond_1

    .line 1070
    iput-boolean p1, p0, Lcom/google/android/material/tabs/TabLayout;->u:Z

    .line 1071
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->A:Lcom/google/android/material/tabs/TabLayout$e;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$e;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1072
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->A:Lcom/google/android/material/tabs/TabLayout$e;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$e;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1073
    instance-of v2, v0, Lcom/google/android/material/tabs/TabLayout$h;

    if-eqz v2, :cond_0

    .line 1074
    check-cast v0, Lcom/google/android/material/tabs/TabLayout$h;

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/material/tabs/TabLayout$h;->a(Lcom/google/android/material/tabs/TabLayout$h;Landroid/content/Context;)V

    .line 1071
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1078
    :cond_1
    return-void
.end method

.method public setUnboundedRippleResource(I)V
    .locals 1

    .prologue
    .line 1089
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->setUnboundedRipple(Z)V

    .line 1090
    return-void
.end method

.method public setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 1

    .prologue
    .line 1262
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/tabs/TabLayout;->a(Landroidx/viewpager/widget/ViewPager;Z)V

    .line 1263
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 1356
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->getTabScrollRange()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
