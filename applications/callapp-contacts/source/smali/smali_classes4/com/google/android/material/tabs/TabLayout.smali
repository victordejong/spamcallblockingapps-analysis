.class public Lcom/google/android/material/tabs/TabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"


# annotations
.annotation runtime Landroidx/viewpager/widget/ViewPager$a;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/tabs/TabLayout$a;,
        Lcom/google/android/material/tabs/TabLayout$d;,
        Lcom/google/android/material/tabs/TabLayout$h;,
        Lcom/google/android/material/tabs/TabLayout$g;,
        Lcom/google/android/material/tabs/TabLayout$e;,
        Lcom/google/android/material/tabs/TabLayout$TabView;,
        Lcom/google/android/material/tabs/TabLayout$f;,
        Lcom/google/android/material/tabs/TabLayout$b;,
        Lcom/google/android/material/tabs/TabLayout$c;
    }
.end annotation


# static fields
.field private static final A:Landroidx/core/e/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/e/c$a<",
            "Lcom/google/android/material/tabs/TabLayout$f;",
            ">;"
        }
    .end annotation
.end field

.field private static final z:I


# instance fields
.field private B:Lcom/google/android/material/tabs/TabLayout$f;

.field private C:I

.field private final D:I

.field private final E:I

.field private final F:I

.field private G:I

.field private H:Lcom/google/android/material/tabs/b;

.field private I:Lcom/google/android/material/tabs/TabLayout$b;

.field private final J:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/material/tabs/TabLayout$b;",
            ">;"
        }
    .end annotation
.end field

.field private K:Lcom/google/android/material/tabs/TabLayout$b;

.field private L:Landroid/animation/ValueAnimator;

.field private M:Landroidx/viewpager/widget/a;

.field private N:Landroid/database/DataSetObserver;

.field private O:Lcom/google/android/material/tabs/TabLayout$g;

.field private P:Lcom/google/android/material/tabs/TabLayout$a;

.field private Q:Z

.field private final R:Landroidx/core/e/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/e/c$a<",
            "Lcom/google/android/material/tabs/TabLayout$TabView;",
            ">;"
        }
    .end annotation
.end field

.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/material/tabs/TabLayout$f;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lcom/google/android/material/tabs/TabLayout$e;

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:Landroid/content/res/ColorStateList;

.field i:Landroid/content/res/ColorStateList;

.field j:Landroid/content/res/ColorStateList;

.field k:Landroid/graphics/drawable/Drawable;

.field l:Landroid/graphics/PorterDuff$Mode;

.field m:F

.field n:F

.field final o:I

.field p:I

.field q:I

.field r:I

.field s:I

.field t:I

.field u:Z

.field v:Z

.field w:I

.field x:Z

.field y:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 179
    sget v0, Lcom/google/android/material/a$k;->Widget_Design_TabLayout:I

    sput v0, Lcom/google/android/material/tabs/TabLayout;->z:I

    .line 200
    new-instance v0, Landroidx/core/e/c$c;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroidx/core/e/c$c;-><init>(I)V

    sput-object v0, Lcom/google/android/material/tabs/TabLayout;->A:Landroidx/core/e/c$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 484
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/tabs/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 488
    sget v0, Lcom/google/android/material/a$b;->tabStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/tabs/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    .line 492
    sget v4, Lcom/google/android/material/tabs/TabLayout;->z:I

    invoke-static {p1, p2, p3, v4}, Lcom/google/android/material/theme/a/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 425
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->a:Ljava/util/ArrayList;

    .line 439
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->k:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 440
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout;->C:I

    const v0, 0x7fffffff

    .line 448
    iput v0, p0, Lcom/google/android/material/tabs/TabLayout;->p:I

    .line 468
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->J:Ljava/util/ArrayList;

    .line 481
    new-instance v0, Landroidx/core/e/c$b;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroidx/core/e/c$b;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->R:Landroidx/core/e/c$a;

    .line 494
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 497
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 500
    new-instance v7, Lcom/google/android/material/tabs/TabLayout$e;

    invoke-direct {v7, p0, v6}, Lcom/google/android/material/tabs/TabLayout$e;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroid/content/Context;)V

    iput-object v7, p0, Lcom/google/android/material/tabs/TabLayout;->b:Lcom/google/android/material/tabs/TabLayout$e;

    .line 501
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v8, -0x1

    invoke-direct {v0, v1, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, v7, p1, v0}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 507
    sget-object v2, Lcom/google/android/material/a$l;->TabLayout:[I

    const/4 v9, 0x1

    new-array v5, v9, [I

    sget v0, Lcom/google/android/material/a$l;->TabLayout_tabTextAppearance:I

    aput v0, v5, p1

    move-object v0, v6

    move-object v1, p2

    move v3, p3

    .line 508
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/l;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 516
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    instance-of p3, p3, Landroid/graphics/drawable/ColorDrawable;

    if-eqz p3, :cond_0

    .line 517
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    check-cast p3, Landroid/graphics/drawable/ColorDrawable;

    .line 518
    new-instance v0, Lcom/google/android/material/k/h;

    invoke-direct {v0}, Lcom/google/android/material/k/h;-><init>()V

    .line 519
    invoke-virtual {p3}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p3

    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/google/android/material/k/h;->g(Landroid/content/res/ColorStateList;)V

    .line 520
    invoke-virtual {v0, v6}, Lcom/google/android/material/k/h;->a(Landroid/content/Context;)V

    .line 521
    invoke-static {p0}, Landroidx/core/view/v;->n(Landroid/view/View;)F

    move-result p3

    invoke-virtual {v0, p3}, Lcom/google/android/material/k/h;->r(F)V

    .line 522
    invoke-static {p0, v0}, Landroidx/core/view/v;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 525
    :cond_0
    sget p3, Lcom/google/android/material/a$l;->TabLayout_tabIndicator:I

    .line 526
    invoke-static {v6, p2, p3}, Lcom/google/android/material/h/c;->b(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 525
    invoke-virtual {p0, p3}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 527
    sget p3, Lcom/google/android/material/a$l;->TabLayout_tabIndicatorColor:I

    .line 528
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    .line 527
    invoke-virtual {p0, p3}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorColor(I)V

    .line 529
    sget p3, Lcom/google/android/material/a$l;->TabLayout_tabIndicatorHeight:I

    .line 530
    invoke-virtual {p2, p3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    .line 529
    invoke-virtual {v7, p3}, Lcom/google/android/material/tabs/TabLayout$e;->a(I)V

    .line 531
    sget p3, Lcom/google/android/material/a$l;->TabLayout_tabIndicatorGravity:I

    .line 532
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 531
    invoke-virtual {p0, p3}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorGravity(I)V

    .line 533
    sget p3, Lcom/google/android/material/a$l;->TabLayout_tabIndicatorFullWidth:I

    invoke-virtual {p2, p3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/tabs/TabLayout;->setTabIndicatorFullWidth(Z)V

    .line 534
    sget p3, Lcom/google/android/material/a$l;->TabLayout_tabIndicatorAnimationMode:I

    .line 535
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 534
    invoke-virtual {p0, p3}, Lcom/google/android/material/tabs/TabLayout;->setTabIndicatorAnimationMode(I)V

    .line 537
    sget p3, Lcom/google/android/material/a$l;->TabLayout_tabPadding:I

    .line 540
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/tabs/TabLayout;->f:I

    iput p3, p0, Lcom/google/android/material/tabs/TabLayout;->e:I

    iput p3, p0, Lcom/google/android/material/tabs/TabLayout;->d:I

    iput p3, p0, Lcom/google/android/material/tabs/TabLayout;->c:I

    .line 541
    sget p3, Lcom/google/android/material/a$l;->TabLayout_tabPaddingStart:I

    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->c:I

    .line 542
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/tabs/TabLayout;->c:I

    .line 543
    sget p3, Lcom/google/android/material/a$l;->TabLayout_tabPaddingTop:I

    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->d:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/tabs/TabLayout;->d:I

    .line 544
    sget p3, Lcom/google/android/material/a$l;->TabLayout_tabPaddingEnd:I

    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->e:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/tabs/TabLayout;->e:I

    .line 545
    sget p3, Lcom/google/android/material/a$l;->TabLayout_tabPaddingBottom:I

    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->f:I

    .line 546
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/tabs/TabLayout;->f:I

    .line 548
    sget p3, Lcom/google/android/material/a$l;->TabLayout_tabTextAppearance:I

    sget v0, Lcom/google/android/material/a$k;->TextAppearance_Design_Tab:I

    .line 549
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/tabs/TabLayout;->g:I

    .line 552
    sget-object v0, Landroidx/appcompat/a$j;->TextAppearance:[I

    .line 553
    invoke-virtual {v6, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 556
    :try_start_0
    sget v0, Landroidx/appcompat/a$j;->TextAppearance_android_textSize:I

    .line 557
    invoke-virtual {p3, v0, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/material/tabs/TabLayout;->m:F

    .line 559
    sget v0, Landroidx/appcompat/a$j;->TextAppearance_android_textColor:I

    .line 560
    invoke-static {v6, p3, v0}, Lcom/google/android/material/h/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->h:Landroid/content/res/ColorStateList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 565
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 568
    sget p3, Lcom/google/android/material/a$l;->TabLayout_tabTextColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 570
    sget p3, Lcom/google/android/material/a$l;->TabLayout_tabTextColor:I

    .line 571
    invoke-static {v6, p2, p3}, Lcom/google/android/material/h/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/tabs/TabLayout;->h:Landroid/content/res/ColorStateList;

    .line 574
    :cond_1
    sget p3, Lcom/google/android/material/a$l;->TabLayout_tabSelectedTextColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 578
    sget p3, Lcom/google/android/material/a$l;->TabLayout_tabSelectedTextColor:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    .line 579
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->h:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-static {v0, p3}, Lcom/google/android/material/tabs/TabLayout;->a(II)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/tabs/TabLayout;->h:Landroid/content/res/ColorStateList;

    .line 582
    :cond_2
    sget p3, Lcom/google/android/material/a$l;->TabLayout_tabIconTint:I

    .line 583
    invoke-static {v6, p2, p3}, Lcom/google/android/material/h/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/tabs/TabLayout;->i:Landroid/content/res/ColorStateList;

    .line 584
    sget p3, Lcom/google/android/material/a$l;->TabLayout_tabIconTintMode:I

    .line 585
    invoke-virtual {p2, p3, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lcom/google/android/material/internal/r;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/tabs/TabLayout;->l:Landroid/graphics/PorterDuff$Mode;

    .line 587
    sget p3, Lcom/google/android/material/a$l;->TabLayout_tabRippleColor:I

    .line 588
    invoke-static {v6, p2, p3}, Lcom/google/android/material/h/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/tabs/TabLayout;->j:Landroid/content/res/ColorStateList;

    .line 590
    sget p3, Lcom/google/android/material/a$l;->TabLayout_tabIndicatorAnimationDuration:I

    const/16 v0, 0x12c

    .line 591
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/tabs/TabLayout;->r:I

    .line 593
    sget p3, Lcom/google/android/material/a$l;->TabLayout_tabMinWidth:I

    .line 594
    invoke-virtual {p2, p3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/tabs/TabLayout;->D:I

    .line 595
    sget p3, Lcom/google/android/material/a$l;->TabLayout_tabMaxWidth:I

    .line 596
    invoke-virtual {p2, p3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/tabs/TabLayout;->E:I

    .line 597
    sget p3, Lcom/google/android/material/a$l;->TabLayout_tabBackground:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/tabs/TabLayout;->o:I

    .line 598
    sget p3, Lcom/google/android/material/a$l;->TabLayout_tabContentStart:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/tabs/TabLayout;->G:I

    .line 600
    sget p3, Lcom/google/android/material/a$l;->TabLayout_tabMode:I

    invoke-virtual {p2, p3, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/tabs/TabLayout;->t:I

    .line 601
    sget p3, Lcom/google/android/material/a$l;->TabLayout_tabGravity:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/tabs/TabLayout;->q:I

    .line 602
    sget p3, Lcom/google/android/material/a$l;->TabLayout_tabInlineLabel:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/google/android/material/tabs/TabLayout;->u:Z

    .line 603
    sget p3, Lcom/google/android/material/a$l;->TabLayout_tabUnboundedRipple:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/material/tabs/TabLayout;->x:Z

    .line 604
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 607
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 608
    sget p2, Lcom/google/android/material/a$d;->design_tab_text_size_2line:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/google/android/material/tabs/TabLayout;->n:F

    .line 609
    sget p2, Lcom/google/android/material/a$d;->design_tab_scrollable_min_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/tabs/TabLayout;->F:I

    .line 612
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->g()V

    return-void

    :catchall_0
    move-exception p1

    .line 565
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 566
    throw p1
.end method

.method private a(IF)I
    .locals 4

    .line 1873
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->t:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 1874
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->b:Lcom/google/android/material/tabs/TabLayout$e;

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout$e;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    .line 1875
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout;->b:Lcom/google/android/material/tabs/TabLayout$e;

    .line 1876
    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout$e;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_2

    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout;->b:Lcom/google/android/material/tabs/TabLayout$e;

    .line 1877
    invoke-virtual {v3, p1}, Lcom/google/android/material/tabs/TabLayout$e;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 1879
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-eqz p1, :cond_4

    .line 1880
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1883
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result p1

    div-int/lit8 v0, v3, 0x2

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getWidth()I

    move-result v0

    div-int/2addr v0, v2

    sub-int/2addr p1, v0

    add-int/2addr v3, v1

    int-to-float v0, v3

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    mul-float v0, v0, p2

    float-to-int p2, v0

    .line 1887
    invoke-static {p0}, Landroidx/core/view/v;->f(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_5

    add-int/2addr p1, p2

    return p1

    :cond_5
    sub-int/2addr p1, p2

    return p1
.end method

.method private static a(II)Landroid/content/res/ColorStateList;
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [[I

    new-array v0, v0, [I

    .line 3275
    sget-object v2, Lcom/google/android/material/tabs/TabLayout;->SELECTED_STATE_SET:[I

    const/4 v3, 0x0

    aput-object v2, v1, v3

    aput p1, v0, v3

    .line 3280
    sget-object p1, Lcom/google/android/material/tabs/TabLayout;->EMPTY_STATE_SET:[I

    const/4 v2, 0x1

    aput-object p1, v1, v2

    aput p0, v0, v2

    .line 3284
    new-instance p0, Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/material/tabs/TabLayout;)Lcom/google/android/material/tabs/b;
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/google/android/material/tabs/TabLayout;->H:Lcom/google/android/material/tabs/b;

    return-object p0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .line 1603
    instance-of v0, p1, Lcom/google/android/material/tabs/TabItem;

    if-eqz v0, :cond_0

    .line 1604
    check-cast p1, Lcom/google/android/material/tabs/TabItem;

    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->a(Lcom/google/android/material/tabs/TabItem;)V

    return-void

    .line 1606
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only TabItem instances can be added to TabLayout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 2

    .line 1619
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->t:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->q:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1620
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1621
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    return-void

    :cond_0
    const/4 v0, -0x2

    .line 1623
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v0, 0x0

    .line 1624
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    return-void
.end method

.method private a(Landroidx/viewpager/widget/ViewPager;ZZ)V
    .locals 2

    .line 1397
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->y:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_1

    .line 1399
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->O:Lcom/google/android/material/tabs/TabLayout$g;

    if-eqz v1, :cond_0

    .line 1400
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$e;)V

    .line 1402
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->P:Lcom/google/android/material/tabs/TabLayout$a;

    if-eqz v0, :cond_1

    .line 1403
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->y:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->removeOnAdapterChangeListener(Landroidx/viewpager/widget/ViewPager$d;)V

    .line 1407
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->K:Lcom/google/android/material/tabs/TabLayout$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1409
    invoke-direct {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->b(Lcom/google/android/material/tabs/TabLayout$b;)V

    .line 1410
    iput-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->K:Lcom/google/android/material/tabs/TabLayout$b;

    :cond_2
    if-eqz p1, :cond_6

    .line 1414
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->y:Landroidx/viewpager/widget/ViewPager;

    .line 1417
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->O:Lcom/google/android/material/tabs/TabLayout$g;

    if-nez v0, :cond_3

    .line 1418
    new-instance v0, Lcom/google/android/material/tabs/TabLayout$g;

    invoke-direct {v0, p0}, Lcom/google/android/material/tabs/TabLayout$g;-><init>(Lcom/google/android/material/tabs/TabLayout;)V

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->O:Lcom/google/android/material/tabs/TabLayout$g;

    .line 1420
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->O:Lcom/google/android/material/tabs/TabLayout$g;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$g;->a()V

    .line 1421
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->O:Lcom/google/android/material/tabs/TabLayout$g;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$e;)V

    .line 1424
    new-instance v0, Lcom/google/android/material/tabs/TabLayout$h;

    invoke-direct {v0, p1}, Lcom/google/android/material/tabs/TabLayout$h;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->K:Lcom/google/android/material/tabs/TabLayout$b;

    .line 1425
    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->a(Lcom/google/android/material/tabs/TabLayout$b;)V

    .line 1427
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1431
    invoke-virtual {p0, v0, p2}, Lcom/google/android/material/tabs/TabLayout;->a(Landroidx/viewpager/widget/a;Z)V

    .line 1435
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->P:Lcom/google/android/material/tabs/TabLayout$a;

    if-nez v0, :cond_5

    .line 1436
    new-instance v0, Lcom/google/android/material/tabs/TabLayout$a;

    invoke-direct {v0, p0}, Lcom/google/android/material/tabs/TabLayout$a;-><init>(Lcom/google/android/material/tabs/TabLayout;)V

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->P:Lcom/google/android/material/tabs/TabLayout$a;

    .line 1438
    :cond_5
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->P:Lcom/google/android/material/tabs/TabLayout$a;

    .line 15442
    iput-boolean p2, v0, Lcom/google/android/material/tabs/TabLayout$a;->a:Z

    .line 1439
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout;->P:Lcom/google/android/material/tabs/TabLayout$a;

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->addOnAdapterChangeListener(Landroidx/viewpager/widget/ViewPager$d;)V

    .line 1442
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/material/tabs/TabLayout;->setScrollPosition(IFZ)V

    goto :goto_0

    .line 1446
    :cond_6
    iput-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->y:Landroidx/viewpager/widget/ViewPager;

    const/4 p1, 0x0

    .line 1447
    invoke-virtual {p0, v1, p1}, Lcom/google/android/material/tabs/TabLayout;->a(Landroidx/viewpager/widget/a;Z)V

    .line 1450
    :goto_0
    iput-boolean p3, p0, Lcom/google/android/material/tabs/TabLayout;->Q:Z

    return-void
.end method

.method private a(Lcom/google/android/material/tabs/TabItem;)V
    .locals 5

    .line 748
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->c()Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object v0

    .line 749
    iget-object v1, p1, Lcom/google/android/material/tabs/TabItem;->a:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 750
    iget-object v1, p1, Lcom/google/android/material/tabs/TabItem;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$f;->a(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$f;

    .line 752
    :cond_0
    iget-object v1, p1, Lcom/google/android/material/tabs/TabItem;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 753
    iget-object v1, p1, Lcom/google/android/material/tabs/TabItem;->b:Landroid/graphics/drawable/Drawable;

    .line 7112
    iput-object v1, v0, Lcom/google/android/material/tabs/TabLayout$f;->b:Landroid/graphics/drawable/Drawable;

    .line 7113
    iget-object v1, v0, Lcom/google/android/material/tabs/TabLayout$f;->h:Lcom/google/android/material/tabs/TabLayout;

    iget v1, v1, Lcom/google/android/material/tabs/TabLayout;->q:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget-object v1, v0, Lcom/google/android/material/tabs/TabLayout$f;->h:Lcom/google/android/material/tabs/TabLayout;

    iget v1, v1, Lcom/google/android/material/tabs/TabLayout;->t:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 7114
    :cond_1
    iget-object v1, v0, Lcom/google/android/material/tabs/TabLayout$f;->h:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout;->a(Z)V

    .line 7116
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$f;->c()V

    .line 7117
    sget-boolean v1, Lcom/google/android/material/badge/a;->a:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/google/android/material/tabs/TabLayout$f;->i:Lcom/google/android/material/tabs/TabLayout$TabView;

    .line 7118
    invoke-static {v1}, Lcom/google/android/material/tabs/TabLayout$TabView;->a(Lcom/google/android/material/tabs/TabLayout$TabView;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/google/android/material/tabs/TabLayout$f;->i:Lcom/google/android/material/tabs/TabLayout$TabView;

    .line 7119
    invoke-static {v1}, Lcom/google/android/material/tabs/TabLayout$TabView;->b(Lcom/google/android/material/tabs/TabLayout$TabView;)Lcom/google/android/material/badge/BadgeDrawable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/badge/BadgeDrawable;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7121
    iget-object v1, v0, Lcom/google/android/material/tabs/TabLayout$f;->i:Lcom/google/android/material/tabs/TabLayout$TabView;

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout$TabView;->invalidate()V

    .line 755
    :cond_3
    iget v1, p1, Lcom/google/android/material/tabs/TabItem;->c:I

    if-eqz v1, :cond_4

    .line 756
    iget v1, p1, Lcom/google/android/material/tabs/TabItem;->c:I

    .line 8066
    iget-object v2, v0, Lcom/google/android/material/tabs/TabLayout$f;->i:Lcom/google/android/material/tabs/TabLayout$TabView;

    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 8067
    iget-object v3, v0, Lcom/google/android/material/tabs/TabLayout$f;->i:Lcom/google/android/material/tabs/TabLayout$TabView;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$f;->a(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$f;

    .line 758
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabItem;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 759
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabItem;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    .line 8288
    iput-object p1, v0, Lcom/google/android/material/tabs/TabLayout$f;->d:Ljava/lang/CharSequence;

    .line 8289
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$f;->c()V

    .line 8704
    :cond_5
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/tabs/TabLayout;->b(Lcom/google/android/material/tabs/TabLayout$f;Z)V

    return-void
.end method

.method private a(Lcom/google/android/material/tabs/TabLayout$f;I)V
    .locals 1

    .line 19091
    iput p2, p1, Lcom/google/android/material/tabs/TabLayout$f;->e:I

    .line 1567
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1569
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_0
    add-int/lit8 p2, p2, 0x1

    if-ge p2, p1, :cond_0

    .line 1571
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout$f;

    .line 20091
    iput p2, v0, Lcom/google/android/material/tabs/TabLayout$f;->e:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/google/android/material/tabs/TabLayout;)I
    .locals 0

    .line 177
    iget p0, p0, Lcom/google/android/material/tabs/TabLayout;->C:I

    return p0
.end method

.method private b(Lcom/google/android/material/tabs/TabLayout$f;)Lcom/google/android/material/tabs/TabLayout$TabView;
    .locals 2

    .line 1550
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->R:Landroidx/core/e/c$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/core/e/c$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout$TabView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 1552
    new-instance v0, Lcom/google/android/material/tabs/TabLayout$TabView;

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/tabs/TabLayout$TabView;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroid/content/Context;)V

    .line 1554
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout$TabView;->a(Lcom/google/android/material/tabs/TabLayout$f;)V

    const/4 v1, 0x1

    .line 1555
    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$TabView;->setFocusable(Z)V

    .line 1556
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$TabView;->setMinimumWidth(I)V

    .line 16953
    iget-object v1, p1, Lcom/google/android/material/tabs/TabLayout$f;->d:Ljava/lang/CharSequence;

    .line 1557
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 17953
    iget-object p1, p1, Lcom/google/android/material/tabs/TabLayout$f;->c:Ljava/lang/CharSequence;

    .line 1558
    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout$TabView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 18953
    :cond_2
    iget-object p1, p1, Lcom/google/android/material/tabs/TabLayout$f;->d:Ljava/lang/CharSequence;

    .line 1560
    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout$TabView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    return-object v0
.end method

.method private b(I)V
    .locals 7

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 1743
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    .line 1744
    invoke-static {p0}, Landroidx/core/view/v;->B(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->b:Lcom/google/android/material/tabs/TabLayout$e;

    .line 22977
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$e;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    .line 22978
    invoke-virtual {v0, v5}, Lcom/google/android/material/tabs/TabLayout$e;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 22979
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    if-gtz v6, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    goto :goto_2

    .line 1752
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getScrollX()I

    move-result v0

    .line 1753
    invoke-direct {p0, p1, v1}, Lcom/google/android/material/tabs/TabLayout;->a(IF)I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 23767
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout;->L:Landroid/animation/ValueAnimator;

    if-nez v3, :cond_4

    .line 23768
    new-instance v3, Landroid/animation/ValueAnimator;

    invoke-direct {v3}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v3, p0, Lcom/google/android/material/tabs/TabLayout;->L:Landroid/animation/ValueAnimator;

    .line 23769
    sget-object v5, Lcom/google/android/material/a/a;->b:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 23770
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout;->L:Landroid/animation/ValueAnimator;

    iget v5, p0, Lcom/google/android/material/tabs/TabLayout;->r:I

    int-to-long v5, v5

    invoke-virtual {v3, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 23771
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout;->L:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/google/android/material/tabs/TabLayout$1;

    invoke-direct {v5, p0}, Lcom/google/android/material/tabs/TabLayout$1;-><init>(Lcom/google/android/material/tabs/TabLayout;)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1758
    :cond_4
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout;->L:Landroid/animation/ValueAnimator;

    const/4 v5, 0x2

    new-array v5, v5, [I

    aput v0, v5, v4

    aput v1, v5, v2

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 1759
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->L:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1763
    :cond_5
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->b:Lcom/google/android/material/tabs/TabLayout$e;

    iget v1, p0, Lcom/google/android/material/tabs/TabLayout;->r:I

    .line 24148
    iget-object v3, v0, Lcom/google/android/material/tabs/TabLayout$e;->a:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/google/android/material/tabs/TabLayout$e;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 24149
    iget-object v3, v0, Lcom/google/android/material/tabs/TabLayout$e;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 24152
    :cond_6
    invoke-virtual {v0, v2, p1, v1}, Lcom/google/android/material/tabs/TabLayout$e;->a(ZII)V

    return-void

    .line 1748
    :cond_7
    :goto_2
    invoke-virtual {p0, p1, v1, v2}, Lcom/google/android/material/tabs/TabLayout;->setScrollPosition(IFZ)V

    return-void
.end method

.method private b(Lcom/google/android/material/tabs/TabLayout$b;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 840
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->J:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private b(Lcom/google/android/material/tabs/TabLayout$f;Z)V
    .locals 6

    .line 725
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4736
    iget-object v1, p1, Lcom/google/android/material/tabs/TabLayout$f;->h:Lcom/google/android/material/tabs/TabLayout;

    if-ne v1, p0, :cond_1

    .line 4739
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/tabs/TabLayout;->a(Lcom/google/android/material/tabs/TabLayout$f;I)V

    .line 5576
    iget-object v0, p1, Lcom/google/android/material/tabs/TabLayout$f;->i:Lcom/google/android/material/tabs/TabLayout$TabView;

    const/4 v1, 0x0

    .line 5577
    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$TabView;->setSelected(Z)V

    .line 5578
    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$TabView;->setActivated(Z)V

    .line 5579
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->b:Lcom/google/android/material/tabs/TabLayout$e;

    .line 6087
    iget v2, p1, Lcom/google/android/material/tabs/TabLayout$f;->e:I

    .line 6612
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 6614
    invoke-direct {p0, v3}, Lcom/google/android/material/tabs/TabLayout;->a(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 5579
    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/material/tabs/TabLayout$e;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    if-eqz p2, :cond_0

    .line 4743
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$f;->a()V

    :cond_0
    return-void

    .line 4737
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Tab belongs to a different TabLayout."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private c()Lcom/google/android/material/tabs/TabLayout$f;
    .locals 3

    .line 857
    invoke-static {}, Lcom/google/android/material/tabs/TabLayout;->d()Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object v0

    .line 858
    iput-object p0, v0, Lcom/google/android/material/tabs/TabLayout$f;->h:Lcom/google/android/material/tabs/TabLayout;

    .line 859
    invoke-direct {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->b(Lcom/google/android/material/tabs/TabLayout$f;)Lcom/google/android/material/tabs/TabLayout$TabView;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/material/tabs/TabLayout$f;->i:Lcom/google/android/material/tabs/TabLayout$TabView;

    .line 8953
    iget v1, v0, Lcom/google/android/material/tabs/TabLayout$f;->j:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 861
    iget-object v1, v0, Lcom/google/android/material/tabs/TabLayout$f;->i:Lcom/google/android/material/tabs/TabLayout$TabView;

    .line 9953
    iget v2, v0, Lcom/google/android/material/tabs/TabLayout$f;->j:I

    .line 861
    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout$TabView;->setId(I)V

    :cond_0
    return-object v0
.end method

.method private c(I)V
    .locals 6

    .line 1792
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->b:Lcom/google/android/material/tabs/TabLayout$e;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$e;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 1795
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout;->b:Lcom/google/android/material/tabs/TabLayout$e;

    invoke-virtual {v3, v2}, Lcom/google/android/material/tabs/TabLayout$e;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    if-ne v2, p1, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 1796
    :goto_1
    invoke-virtual {v3, v5}, Landroid/view/View;->setSelected(Z)V

    if-ne v2, p1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    .line 1797
    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setActivated(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private c(Lcom/google/android/material/tabs/TabLayout$f;)V
    .locals 2

    .line 1855
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->J:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1856
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->J:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/tabs/TabLayout$b;

    invoke-interface {v1, p1}, Lcom/google/android/material/tabs/TabLayout$b;->a(Lcom/google/android/material/tabs/TabLayout$f;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static d()Lcom/google/android/material/tabs/TabLayout$f;
    .locals 1

    .line 869
    sget-object v0, Lcom/google/android/material/tabs/TabLayout;->A:Landroidx/core/e/c$a;

    invoke-interface {v0}, Landroidx/core/e/c$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout$f;

    if-nez v0, :cond_0

    .line 871
    new-instance v0, Lcom/google/android/material/tabs/TabLayout$f;

    invoke-direct {v0}, Lcom/google/android/material/tabs/TabLayout$f;-><init>()V

    :cond_0
    return-object v0
.end method

.method private d(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 1924
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->b:Lcom/google/android/material/tabs/TabLayout$e;

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout$e;->setGravity(I)V

    return-void

    :cond_1
    const-string p1, "TabLayout"

    const-string v0, "MODE_SCROLLABLE + GRAVITY_FILL is not supported, GRAVITY_START will be used instead"

    .line 1927
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->b:Lcom/google/android/material/tabs/TabLayout$e;

    const v0, 0x800003

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout$e;->setGravity(I)V

    :goto_0
    return-void
.end method

.method private d(Lcom/google/android/material/tabs/TabLayout$f;)V
    .locals 2

    .line 1861
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->J:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1862
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->J:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/tabs/TabLayout$b;

    invoke-interface {v1, p1}, Lcom/google/android/material/tabs/TabLayout$b;->b(Lcom/google/android/material/tabs/TabLayout$f;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private e()V
    .locals 4

    .line 948
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->b:Lcom/google/android/material/tabs/TabLayout$e;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$e;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/4 v1, 0x0

    if-ltz v0, :cond_1

    .line 11729
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout;->b:Lcom/google/android/material/tabs/TabLayout$e;

    invoke-virtual {v2, v0}, Lcom/google/android/material/tabs/TabLayout$e;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/tabs/TabLayout$TabView;

    .line 11730
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout;->b:Lcom/google/android/material/tabs/TabLayout$e;

    invoke-virtual {v3, v0}, Lcom/google/android/material/tabs/TabLayout$e;->removeViewAt(I)V

    if-eqz v2, :cond_0

    .line 12566
    invoke-virtual {v2, v1}, Lcom/google/android/material/tabs/TabLayout$TabView;->a(Lcom/google/android/material/tabs/TabLayout$f;)V

    const/4 v1, 0x0

    .line 12567
    invoke-virtual {v2, v1}, Lcom/google/android/material/tabs/TabLayout$TabView;->setSelected(Z)V

    .line 11733
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->R:Landroidx/core/e/c$a;

    invoke-interface {v1, v2}, Landroidx/core/e/c$a;->a(Ljava/lang/Object;)Z

    .line 11735
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->requestLayout()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 952
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 953
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/tabs/TabLayout$f;

    .line 954
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 13314
    iput-object v1, v2, Lcom/google/android/material/tabs/TabLayout$f;->h:Lcom/google/android/material/tabs/TabLayout;

    .line 13315
    iput-object v1, v2, Lcom/google/android/material/tabs/TabLayout$f;->i:Lcom/google/android/material/tabs/TabLayout$TabView;

    .line 13316
    iput-object v1, v2, Lcom/google/android/material/tabs/TabLayout$f;->a:Ljava/lang/Object;

    .line 13317
    iput-object v1, v2, Lcom/google/android/material/tabs/TabLayout$f;->b:Landroid/graphics/drawable/Drawable;

    const/4 v3, -0x1

    .line 13318
    iput v3, v2, Lcom/google/android/material/tabs/TabLayout$f;->j:I

    .line 13319
    iput-object v1, v2, Lcom/google/android/material/tabs/TabLayout$f;->c:Ljava/lang/CharSequence;

    .line 13320
    iput-object v1, v2, Lcom/google/android/material/tabs/TabLayout$f;->d:Ljava/lang/CharSequence;

    .line 13321
    iput v3, v2, Lcom/google/android/material/tabs/TabLayout$f;->e:I

    .line 13322
    iput-object v1, v2, Lcom/google/android/material/tabs/TabLayout$f;->f:Landroid/view/View;

    .line 13878
    sget-object v3, Lcom/google/android/material/tabs/TabLayout;->A:Landroidx/core/e/c$a;

    invoke-interface {v3, v2}, Landroidx/core/e/c$a;->a(Ljava/lang/Object;)Z

    goto :goto_1

    .line 959
    :cond_2
    iput-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->B:Lcom/google/android/material/tabs/TabLayout$f;

    return-void
.end method

.method private e(Lcom/google/android/material/tabs/TabLayout$f;)V
    .locals 2

    .line 1867
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->J:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1868
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->J:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/tabs/TabLayout$b;

    invoke-interface {v1, p1}, Lcom/google/android/material/tabs/TabLayout$b;->c(Lcom/google/android/material/tabs/TabLayout$f;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private f()V
    .locals 3

    .line 1543
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1544
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/tabs/TabLayout$f;

    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout$f;->c()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private g()V
    .locals 4

    .line 1896
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->t:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 1898
    :cond_1
    :goto_0
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->G:I

    iget v3, p0, Lcom/google/android/material/tabs/TabLayout;->c:I

    sub-int/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1900
    :goto_1
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout;->b:Lcom/google/android/material/tabs/TabLayout$e;

    invoke-static {v3, v0, v2, v2, v2}, Landroidx/core/view/v;->b(Landroid/view/View;IIII)V

    .line 1902
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->t:I

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_2

    goto :goto_2

    .line 1905
    :cond_2
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->q:I

    if-ne v0, v1, :cond_3

    const-string v0, "TabLayout"

    const-string v1, "GRAVITY_START is not supported with the current tab mode, GRAVITY_CENTER will be used instead"

    .line 1906
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->b:Lcom/google/android/material/tabs/TabLayout$e;

    invoke-virtual {v0, v2}, Lcom/google/android/material/tabs/TabLayout$e;->setGravity(I)V

    goto :goto_2

    .line 1914
    :cond_4
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->q:I

    invoke-direct {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->d(I)V

    .line 1918
    :goto_2
    invoke-virtual {p0, v2}, Lcom/google/android/material/tabs/TabLayout;->a(Z)V

    return-void
.end method

.method private h()I
    .locals 2

    .line 3301
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->D:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 3306
    :cond_0
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->t:I

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->F:I

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 902
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->B:Lcom/google/android/material/tabs/TabLayout$f;

    if-eqz v0, :cond_0

    .line 11087
    iget v0, v0, Lcom/google/android/material/tabs/TabLayout$f;->e:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final a(I)Lcom/google/android/material/tabs/TabLayout$f;
    .locals 1

    if-ltz p1, :cond_1

    .line 10887
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 893
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/tabs/TabLayout$f;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method final a(Landroidx/viewpager/widget/a;Z)V
    .locals 2

    .line 1504
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->M:Landroidx/viewpager/widget/a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->N:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_0

    .line 1506
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/a;->b(Landroid/database/DataSetObserver;)V

    .line 1509
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->M:Landroidx/viewpager/widget/a;

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 1513
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout;->N:Landroid/database/DataSetObserver;

    if-nez p2, :cond_1

    .line 1514
    new-instance p2, Lcom/google/android/material/tabs/TabLayout$d;

    invoke-direct {p2, p0}, Lcom/google/android/material/tabs/TabLayout$d;-><init>(Lcom/google/android/material/tabs/TabLayout;)V

    iput-object p2, p0, Lcom/google/android/material/tabs/TabLayout;->N:Landroid/database/DataSetObserver;

    .line 1516
    :cond_1
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout;->N:Landroid/database/DataSetObserver;

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/a;->a(Landroid/database/DataSetObserver;)V

    .line 1520
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->b()V

    return-void
.end method

.method public final a(Lcom/google/android/material/tabs/TabLayout$b;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 816
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->J:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->J:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/material/tabs/TabLayout$f;)V
    .locals 1

    const/4 v0, 0x1

    .line 1809
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/tabs/TabLayout;->a(Lcom/google/android/material/tabs/TabLayout$f;Z)V

    return-void
.end method

.method public final a(Lcom/google/android/material/tabs/TabLayout$f;Z)V
    .locals 4

    .line 1821
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->B:Lcom/google/android/material/tabs/TabLayout$f;

    if-ne v0, p1, :cond_0

    if-eqz v0, :cond_6

    .line 1825
    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->e(Lcom/google/android/material/tabs/TabLayout$f;)V

    .line 25087
    iget p1, p1, Lcom/google/android/material/tabs/TabLayout$f;->e:I

    .line 1826
    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->b(I)V

    return-void

    :cond_0
    const/4 v1, -0x1

    if-eqz p1, :cond_1

    .line 26087
    iget v2, p1, Lcom/google/android/material/tabs/TabLayout$f;->e:I

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_0
    if-eqz p2, :cond_4

    if-eqz v0, :cond_2

    .line 27087
    iget p2, v0, Lcom/google/android/material/tabs/TabLayout$f;->e:I

    if-ne p2, v1, :cond_3

    :cond_2
    if-eq v2, v1, :cond_3

    const/4 p2, 0x0

    const/4 v3, 0x1

    .line 1834
    invoke-virtual {p0, v2, p2, v3}, Lcom/google/android/material/tabs/TabLayout;->setScrollPosition(IFZ)V

    goto :goto_1

    .line 1836
    :cond_3
    invoke-direct {p0, v2}, Lcom/google/android/material/tabs/TabLayout;->b(I)V

    :goto_1
    if-eq v2, v1, :cond_4

    .line 1839
    invoke-direct {p0, v2}, Lcom/google/android/material/tabs/TabLayout;->c(I)V

    .line 1844
    :cond_4
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->B:Lcom/google/android/material/tabs/TabLayout$f;

    if-eqz v0, :cond_5

    .line 1846
    invoke-direct {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->d(Lcom/google/android/material/tabs/TabLayout$f;)V

    :cond_5
    if-eqz p1, :cond_6

    .line 1849
    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->c(Lcom/google/android/material/tabs/TabLayout$f;)V

    :cond_6
    return-void
.end method

.method final a(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 1941
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->b:Lcom/google/android/material/tabs/TabLayout$e;

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout$e;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1942
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->b:Lcom/google/android/material/tabs/TabLayout$e;

    invoke-virtual {v1, v0}, Lcom/google/android/material/tabs/TabLayout$e;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1943
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->h()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 1944
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v2}, Lcom/google/android/material/tabs/TabLayout;->a(Landroid/widget/LinearLayout$LayoutParams;)V

    if-eqz p1, :cond_0

    .line 1946
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 0

    .line 1584
    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->a(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0

    .line 1589
    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->a(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1599
    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->a(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1594
    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->a(Landroid/view/View;)V

    return-void
.end method

.method final b()V
    .locals 5

    .line 1524
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->e()V

    .line 1526
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->M:Landroidx/viewpager/widget/a;

    if-eqz v0, :cond_1

    .line 1527
    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->getCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 1529
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->c()Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/material/tabs/TabLayout;->M:Landroidx/viewpager/widget/a;

    invoke-virtual {v4, v2}, Landroidx/viewpager/widget/a;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/tabs/TabLayout$f;->a(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/google/android/material/tabs/TabLayout;->b(Lcom/google/android/material/tabs/TabLayout$f;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1533
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->y:Landroidx/viewpager/widget/ViewPager;

    if-eqz v1, :cond_1

    if-lez v0, :cond_1

    .line 1534
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 1535
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->a()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 15887
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1536
    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->a(I)Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object v0

    const/4 v1, 0x1

    .line 16809
    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/tabs/TabLayout;->a(Lcom/google/android/material/tabs/TabLayout$f;Z)V

    :cond_1
    return-void
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 176
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    .line 3315
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1471
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 1473
    invoke-static {p0}, Lcom/google/android/material/k/i;->a(Landroid/view/View;)V

    .line 1475
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->y:Landroidx/viewpager/widget/ViewPager;

    if-nez v0, :cond_0

    .line 1478
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1479
    instance-of v1, v0, Landroidx/viewpager/widget/ViewPager;

    if-eqz v1, :cond_0

    .line 1482
    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v1}, Lcom/google/android/material/tabs/TabLayout;->a(Landroidx/viewpager/widget/ViewPager;ZZ)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1489
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 1491
    iget-boolean v0, p0, Lcom/google/android/material/tabs/TabLayout;->Q:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1493
    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    const/4 v0, 0x0

    .line 1494
    iput-boolean v0, p0, Lcom/google/android/material/tabs/TabLayout;->Q:Z

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v0, 0x0

    .line 1651
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->b:Lcom/google/android/material/tabs/TabLayout$e;

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout$e;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1652
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->b:Lcom/google/android/material/tabs/TabLayout$e;

    invoke-virtual {v1, v0}, Lcom/google/android/material/tabs/TabLayout$e;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1653
    instance-of v2, v1, Lcom/google/android/material/tabs/TabLayout$TabView;

    if-eqz v2, :cond_0

    .line 1654
    check-cast v1, Lcom/google/android/material/tabs/TabLayout$TabView;

    invoke-static {v1, p1}, Lcom/google/android/material/tabs/TabLayout$TabView;->a(Lcom/google/android/material/tabs/TabLayout$TabView;Landroid/graphics/Canvas;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1658
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 1638
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1639
    invoke-static {p1}, Landroidx/core/view/a/c;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/a/c;

    move-result-object p1

    .line 20887
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1641
    invoke-static {v1, v0, v2, v1}, Landroidx/core/view/a/c$b;->a(IIZI)Landroidx/core/view/a/c$b;

    move-result-object v0

    .line 1640
    invoke-virtual {p1, v0}, Landroidx/core/view/a/c;->a(Ljava/lang/Object;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 1665
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 21290
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1

    .line 21291
    iget-object v5, p0, Lcom/google/android/material/tabs/TabLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/tabs/TabLayout$f;

    if-eqz v5, :cond_0

    .line 22077
    iget-object v6, v5, Lcom/google/android/material/tabs/TabLayout$f;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_0

    .line 22101
    iget-object v5, v5, Lcom/google/android/material/tabs/TabLayout$f;->c:Ljava/lang/CharSequence;

    .line 21292
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    .line 21297
    iget-boolean v1, p0, Lcom/google/android/material/tabs/TabLayout;->u:Z

    if-nez v1, :cond_2

    const/16 v1, 0x48

    goto :goto_2

    :cond_2
    const/16 v1, 0x30

    .line 1665
    :goto_2
    invoke-static {v0, v1}, Lcom/google/android/material/internal/r;->a(Landroid/content/Context;I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1666
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v3, -0x80000000

    const/high16 v5, 0x40000000    # 2.0f

    if-eq v1, v3, :cond_4

    if-eqz v1, :cond_3

    goto :goto_3

    .line 1675
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getPaddingTop()I

    move-result p2

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getPaddingBottom()I

    move-result p2

    add-int/2addr v0, p2

    .line 1674
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_3

    .line 1668
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getChildCount()I

    move-result v1

    if-ne v1, v4, :cond_5

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-lt v1, v0, :cond_5

    .line 1669
    invoke-virtual {p0, v2}, Lcom/google/android/material/tabs/TabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 1681
    :cond_5
    :goto_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1682
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eqz v1, :cond_7

    .line 1685
    iget v1, p0, Lcom/google/android/material/tabs/TabLayout;->E:I

    if-lez v1, :cond_6

    goto :goto_4

    :cond_6
    int-to-float v0, v0

    .line 1688
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v3, 0x38

    invoke-static {v1, v3}, Lcom/google/android/material/internal/r;->a(Landroid/content/Context;I)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v1, v0

    :goto_4
    iput v1, p0, Lcom/google/android/material/tabs/TabLayout;->p:I

    .line 1692
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 1694
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getChildCount()I

    move-result p1

    if-ne p1, v4, :cond_b

    .line 1697
    invoke-virtual {p0, v2}, Lcom/google/android/material/tabs/TabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 1700
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->t:I

    if-eqz v0, :cond_9

    if-eq v0, v4, :cond_8

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    goto :goto_6

    .line 1709
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getMeasuredWidth()I

    move-result v1

    if-eq v0, v1, :cond_a

    :goto_5
    const/4 v2, 0x1

    goto :goto_6

    .line 1705
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getMeasuredWidth()I

    move-result v1

    if-ge v0, v1, :cond_a

    goto :goto_5

    :cond_a
    :goto_6
    if-eqz v2, :cond_b

    .line 1718
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 1719
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1716
    invoke-static {p2, v0, v1}, Lcom/google/android/material/tabs/TabLayout;->getChildMeasureSpec(III)I

    move-result p2

    .line 1722
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getMeasuredWidth()I

    move-result v0

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1723
    invoke-virtual {p1, v0, p2}, Landroid/view/View;->measure(II)V

    :cond_b
    return-void
.end method

.method public setElevation(F)V
    .locals 0

    .line 1631
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->setElevation(F)V

    .line 1633
    invoke-static {p0, p1}, Lcom/google/android/material/k/i;->a(Landroid/view/View;F)V

    return-void
.end method

.method public setInlineLabel(Z)V
    .locals 3

    .line 1131
    iget-boolean v0, p0, Lcom/google/android/material/tabs/TabLayout;->u:Z

    if-eq v0, p1, :cond_4

    .line 1132
    iput-boolean p1, p0, Lcom/google/android/material/tabs/TabLayout;->u:Z

    const/4 p1, 0x0

    .line 1133
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->b:Lcom/google/android/material/tabs/TabLayout$e;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$e;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 1134
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->b:Lcom/google/android/material/tabs/TabLayout$e;

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout$e;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1135
    instance-of v1, v0, Lcom/google/android/material/tabs/TabLayout$TabView;

    if-eqz v1, :cond_2

    .line 1136
    check-cast v0, Lcom/google/android/material/tabs/TabLayout$TabView;

    .line 14809
    iget-object v1, v0, Lcom/google/android/material/tabs/TabLayout$TabView;->f:Lcom/google/android/material/tabs/TabLayout;

    iget-boolean v1, v1, Lcom/google/android/material/tabs/TabLayout;->u:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$TabView;->setOrientation(I)V

    .line 14810
    iget-object v1, v0, Lcom/google/android/material/tabs/TabLayout$TabView;->d:Landroid/widget/TextView;

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/google/android/material/tabs/TabLayout$TabView;->e:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    goto :goto_1

    .line 14813
    :cond_0
    iget-object v1, v0, Lcom/google/android/material/tabs/TabLayout$TabView;->a:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/google/android/material/tabs/TabLayout$TabView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/tabs/TabLayout$TabView;->a(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_2

    .line 14811
    :cond_1
    :goto_1
    iget-object v1, v0, Lcom/google/android/material/tabs/TabLayout$TabView;->d:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/google/android/material/tabs/TabLayout$TabView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/tabs/TabLayout$TabView;->a(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    :cond_2
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1139
    :cond_3
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->g()V

    :cond_4
    return-void
.end method

.method public setInlineLabelResource(I)V
    .locals 1

    .line 1152
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->setInlineLabel(Z)V

    return-void
.end method

.method public setOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$b;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 781
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->I:Lcom/google/android/material/tabs/TabLayout$b;

    if-eqz v0, :cond_0

    .line 782
    invoke-direct {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->b(Lcom/google/android/material/tabs/TabLayout$b;)V

    .line 786
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->I:Lcom/google/android/material/tabs/TabLayout$b;

    if-eqz p1, :cond_1

    .line 788
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->a(Lcom/google/android/material/tabs/TabLayout$b;)V

    :cond_1
    return-void
.end method

.method public setOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$c;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 770
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->setOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$b;)V

    return-void
.end method

.method public setScrollPosition(IFZ)V
    .locals 1

    const/4 v0, 0x1

    .line 655
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/material/tabs/TabLayout;->setScrollPosition(IFZZ)V

    return-void
.end method

.method public setScrollPosition(IFZZ)V
    .locals 4

    int-to-float v0, p1

    add-float/2addr v0, p2

    .line 675
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-ltz v0, :cond_4

    .line 676
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->b:Lcom/google/android/material/tabs/TabLayout$e;

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout$e;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_2

    .line 682
    iget-object p4, p0, Lcom/google/android/material/tabs/TabLayout;->b:Lcom/google/android/material/tabs/TabLayout$e;

    .line 3994
    iget-object v1, p4, Lcom/google/android/material/tabs/TabLayout$e;->a:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    iget-object v1, p4, Lcom/google/android/material/tabs/TabLayout$e;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3995
    iget-object v1, p4, Lcom/google/android/material/tabs/TabLayout$e;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3998
    :cond_1
    iput p1, p4, Lcom/google/android/material/tabs/TabLayout$e;->b:I

    .line 3999
    iput p2, p4, Lcom/google/android/material/tabs/TabLayout$e;->c:F

    .line 4001
    iget v1, p4, Lcom/google/android/material/tabs/TabLayout$e;->b:I

    invoke-virtual {p4, v1}, Lcom/google/android/material/tabs/TabLayout$e;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4002
    iget v2, p4, Lcom/google/android/material/tabs/TabLayout$e;->b:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p4, v2}, Lcom/google/android/material/tabs/TabLayout$e;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4004
    iget v3, p4, Lcom/google/android/material/tabs/TabLayout$e;->c:F

    invoke-virtual {p4, v1, v2, v3}, Lcom/google/android/material/tabs/TabLayout$e;->a(Landroid/view/View;Landroid/view/View;F)V

    .line 686
    :cond_2
    iget-object p4, p0, Lcom/google/android/material/tabs/TabLayout;->L:Landroid/animation/ValueAnimator;

    if-eqz p4, :cond_3

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p4

    if-eqz p4, :cond_3

    .line 687
    iget-object p4, p0, Lcom/google/android/material/tabs/TabLayout;->L:Landroid/animation/ValueAnimator;

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 689
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/tabs/TabLayout;->a(IF)I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/tabs/TabLayout;->scrollTo(II)V

    if-eqz p3, :cond_4

    .line 693
    invoke-direct {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->c(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public setSelectedTabIndicator(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1357
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1356
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1359
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1338
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->k:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1339
    :cond_0
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->k:Landroid/graphics/drawable/Drawable;

    :cond_1
    return-void
.end method

.method public setSelectedTabIndicatorColor(I)V
    .locals 0

    .line 627
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout;->C:I

    return-void
.end method

.method public setSelectedTabIndicatorGravity(I)V
    .locals 1

    .line 1032
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->s:I

    if-eq v0, p1, :cond_0

    .line 1033
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout;->s:I

    .line 1034
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->b:Lcom/google/android/material/tabs/TabLayout$e;

    invoke-static {p1}, Landroidx/core/view/v;->d(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setSelectedTabIndicatorHeight(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 640
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->b:Lcom/google/android/material/tabs/TabLayout$e;

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout$e;->a(I)V

    return-void
.end method

.method public setTabGravity(I)V
    .locals 1

    .line 1001
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->q:I

    if-eq v0, p1, :cond_0

    .line 1002
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout;->q:I

    .line 1003
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->g()V

    :cond_0
    return-void
.end method

.method public setTabIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1244
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->i:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1245
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->i:Landroid/content/res/ColorStateList;

    .line 1246
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->f()V

    :cond_0
    return-void
.end method

.method public setTabIconTintResource(I)V
    .locals 1

    .line 1257
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->setTabIconTint(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTabIndicatorAnimationMode(I)V
    .locals 2

    .line 1063
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout;->w:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1069
    new-instance p1, Lcom/google/android/material/tabs/a;

    invoke-direct {p1}, Lcom/google/android/material/tabs/a;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->H:Lcom/google/android/material/tabs/b;

    return-void

    .line 1072
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid TabIndicatorAnimationMode"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1066
    :cond_1
    new-instance p1, Lcom/google/android/material/tabs/b;

    invoke-direct {p1}, Lcom/google/android/material/tabs/b;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->H:Lcom/google/android/material/tabs/b;

    return-void
.end method

.method public setTabIndicatorFullWidth(Z)V
    .locals 0

    .line 1107
    iput-boolean p1, p0, Lcom/google/android/material/tabs/TabLayout;->v:Z

    .line 1108
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->b:Lcom/google/android/material/tabs/TabLayout$e;

    invoke-static {p1}, Landroidx/core/view/v;->d(Landroid/view/View;)V

    return-void
.end method

.method public setTabMode(I)V
    .locals 1

    .line 978
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->t:I

    if-eq p1, v0, :cond_0

    .line 979
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout;->t:I

    .line 980
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->g()V

    :cond_0
    return-void
.end method

.method public setTabRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1288
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->j:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    .line 1289
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->j:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    .line 1290
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->b:Lcom/google/android/material/tabs/TabLayout$e;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$e;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 1291
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->b:Lcom/google/android/material/tabs/TabLayout$e;

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout$e;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1292
    instance-of v1, v0, Lcom/google/android/material/tabs/TabLayout$TabView;

    if-eqz v1, :cond_0

    .line 1293
    check-cast v0, Lcom/google/android/material/tabs/TabLayout$TabView;

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/tabs/TabLayout$TabView;->a(Lcom/google/android/material/tabs/TabLayout$TabView;Landroid/content/Context;)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setTabRippleColorResource(I)V
    .locals 1

    .line 1309
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->setTabRippleColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTabTextColors(II)V
    .locals 0

    .line 1235
    invoke-static {p1, p2}, Lcom/google/android/material/tabs/TabLayout;->a(II)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->setTabTextColors(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTabTextColors(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1216
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->h:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1217
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->h:Landroid/content/res/ColorStateList;

    .line 1218
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->f()V

    :cond_0
    return-void
.end method

.method public setTabsFromPagerAdapter(Landroidx/viewpager/widget/a;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1460
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/tabs/TabLayout;->a(Landroidx/viewpager/widget/a;Z)V

    return-void
.end method

.method public setUnboundedRipple(Z)V
    .locals 2

    .line 1176
    iget-boolean v0, p0, Lcom/google/android/material/tabs/TabLayout;->x:Z

    if-eq v0, p1, :cond_1

    .line 1177
    iput-boolean p1, p0, Lcom/google/android/material/tabs/TabLayout;->x:Z

    const/4 p1, 0x0

    .line 1178
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->b:Lcom/google/android/material/tabs/TabLayout$e;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$e;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 1179
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->b:Lcom/google/android/material/tabs/TabLayout$e;

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout$e;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1180
    instance-of v1, v0, Lcom/google/android/material/tabs/TabLayout$TabView;

    if-eqz v1, :cond_0

    .line 1181
    check-cast v0, Lcom/google/android/material/tabs/TabLayout$TabView;

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/tabs/TabLayout$TabView;->a(Lcom/google/android/material/tabs/TabLayout$TabView;Landroid/content/Context;)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setUnboundedRippleResource(I)V
    .locals 1

    .line 1196
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->setUnboundedRipple(Z)V

    return-void
.end method

.method public setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 1

    const/4 v0, 0x1

    .line 1372
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;Z)V

    return-void
.end method

.method public setupWithViewPager(Landroidx/viewpager/widget/ViewPager;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1392
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/tabs/TabLayout;->a(Landroidx/viewpager/widget/ViewPager;ZZ)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 2

    .line 15499
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->b:Lcom/google/android/material/tabs/TabLayout$e;

    .line 15500
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$e;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    .line 15499
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method
