.class public Landroidx/appcompat/widget/ActionBarOverlayLayout;
.super Landroid/view/ViewGroup;
.source "ActionBarOverlayLayout.java"

# interfaces
.implements Landroidx/appcompat/widget/w;
.implements Landroidx/core/h/m;
.implements Landroidx/core/h/n;
.implements Landroidx/core/h/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ActionBarOverlayLayout$a;,
        Landroidx/appcompat/widget/ActionBarOverlayLayout$b;
    }
.end annotation


# static fields
.field static final e:[I


# instance fields
.field private final A:Ljava/lang/Runnable;

.field private final B:Landroidx/core/h/p;

.field a:Landroidx/appcompat/widget/ActionBarContainer;

.field b:Z

.field c:Landroid/view/ViewPropertyAnimator;

.field final d:Landroid/animation/AnimatorListenerAdapter;

.field private f:I

.field private g:I

.field private h:Landroidx/appcompat/widget/ContentFrameLayout;

.field private i:Landroidx/appcompat/widget/x;

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:I

.field private p:I

.field private final q:Landroid/graphics/Rect;

.field private final r:Landroid/graphics/Rect;

.field private final s:Landroid/graphics/Rect;

.field private final t:Landroid/graphics/Rect;

.field private final u:Landroid/graphics/Rect;

.field private final v:Landroid/graphics/Rect;

.field private final w:Landroid/graphics/Rect;

.field private x:Landroidx/appcompat/widget/ActionBarOverlayLayout$a;

.field private y:Landroid/widget/OverScroller;

.field private final z:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 131
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Landroidx/appcompat/a$a;->actionBarSize:I

    aput v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x1010059

    aput v2, v0, v1

    sput-object v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 143
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->g:I

    .line 82
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->q:Landroid/graphics/Rect;

    .line 83
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->r:Landroid/graphics/Rect;

    .line 84
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->s:Landroid/graphics/Rect;

    .line 85
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->t:Landroid/graphics/Rect;

    .line 86
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->u:Landroid/graphics/Rect;

    .line 87
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->v:Landroid/graphics/Rect;

    .line 88
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->w:Landroid/graphics/Rect;

    .line 98
    new-instance v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$1;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout$1;-><init>(Landroidx/appcompat/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d:Landroid/animation/AnimatorListenerAdapter;

    .line 112
    new-instance v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$2;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout$2;-><init>(Landroidx/appcompat/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z:Ljava/lang/Runnable;

    .line 121
    new-instance v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$3;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout$3;-><init>(Landroidx/appcompat/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->A:Ljava/lang/Runnable;

    .line 144
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a(Landroid/content/Context;)V

    .line 146
    new-instance v0, Landroidx/core/h/p;

    invoke-direct {v0, p0}, Landroidx/core/h/p;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->B:Landroidx/core/h/p;

    .line 147
    return-void
.end method

.method private a(Landroid/view/View;)Landroidx/appcompat/widget/x;
    .locals 3

    .prologue
    .line 592
    instance-of v0, p1, Landroidx/appcompat/widget/x;

    if-eqz v0, :cond_0

    .line 593
    check-cast p1, Landroidx/appcompat/widget/x;

    .line 595
    :goto_0
    return-object p1

    .line 594
    :cond_0
    instance-of v0, p1, Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_1

    .line 595
    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getWrapper()Landroidx/appcompat/widget/x;

    move-result-object p1

    goto :goto_0

    .line 597
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t make a decor toolbar out of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 598
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 150
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:[I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 151
    invoke-virtual {v3, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->f:I

    .line 152
    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j:Landroid/graphics/drawable/Drawable;

    .line 153
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setWillNotDraw(Z)V

    .line 154
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x13

    if-ge v0, v3, :cond_1

    :goto_1
    iput-boolean v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k:Z

    .line 159
    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->y:Landroid/widget/OverScroller;

    .line 160
    return-void

    :cond_0
    move v0, v2

    .line 153
    goto :goto_0

    :cond_1
    move v1, v2

    .line 156
    goto :goto_1
.end method

.method private a(FF)Z
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 656
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->y:Landroid/widget/OverScroller;

    float-to-int v4, p2

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    move v2, v1

    move v3, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 657
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->y:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v0

    .line 658
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarContainer;->getHeight()I

    move-result v2

    if-le v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private a(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 266
    const/4 v2, 0x0

    .line 267
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;

    .line 268
    if-eqz p3, :cond_0

    iget v3, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;->leftMargin:I

    iget v4, p2, Landroid/graphics/Rect;->left:I

    if-eq v3, v4, :cond_0

    .line 270
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;->leftMargin:I

    move v2, v1

    .line 272
    :cond_0
    if-eqz p4, :cond_1

    iget v3, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;->topMargin:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    if-eq v3, v4, :cond_1

    .line 274
    iget v2, p2, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;->topMargin:I

    move v2, v1

    .line 276
    :cond_1
    if-eqz p6, :cond_2

    iget v3, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;->rightMargin:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    if-eq v3, v4, :cond_2

    .line 278
    iget v2, p2, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;->rightMargin:I

    move v2, v1

    .line 280
    :cond_2
    if-eqz p5, :cond_3

    iget v3, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;->bottomMargin:I

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    if-eq v3, v4, :cond_3

    .line 282
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iput v2, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;->bottomMargin:I

    move v0, v1

    .line 284
    :goto_0
    return v0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method private l()V
    .locals 4

    .prologue
    .line 636
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d()V

    .line 637
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z:Ljava/lang/Runnable;

    const-wide/16 v2, 0x258

    invoke-virtual {p0, v0, v2, v3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 638
    return-void
.end method

.method private m()V
    .locals 4

    .prologue
    .line 641
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d()V

    .line 642
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->A:Ljava/lang/Runnable;

    const-wide/16 v2, 0x258

    invoke-virtual {p0, v0, v2, v3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 643
    return-void
.end method

.method private n()V
    .locals 1

    .prologue
    .line 646
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d()V

    .line 647
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 648
    return-void
.end method

.method private o()V
    .locals 1

    .prologue
    .line 651
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d()V

    .line 652
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->A:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 653
    return-void
.end method


# virtual methods
.method public a(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/ActionBarOverlayLayout$b;
    .locals 2

    .prologue
    .line 327
    new-instance v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 681
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->c()V

    .line 682
    sparse-switch p1, :sswitch_data_0

    .line 693
    :goto_0
    return-void

    .line 684
    :sswitch_0
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Landroidx/appcompat/widget/x;

    invoke-interface {v0}, Landroidx/appcompat/widget/x;->f()V

    goto :goto_0

    .line 687
    :sswitch_1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Landroidx/appcompat/widget/x;

    invoke-interface {v0}, Landroidx/appcompat/widget/x;->g()V

    goto :goto_0

    .line 690
    :sswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setOverlayMode(Z)V

    goto :goto_0

    .line 682
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x5 -> :sswitch_1
        0x6d -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Landroid/view/Menu;Landroidx/appcompat/view/menu/m$a;)V
    .locals 1

    .prologue
    .line 768
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->c()V

    .line 769
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Landroidx/appcompat/widget/x;

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/widget/x;->a(Landroid/view/Menu;Landroidx/appcompat/view/menu/m$a;)V

    .line 770
    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 493
    if-nez p2, :cond_0

    .line 494
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->onStopNestedScroll(Landroid/view/View;)V

    .line 496
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;IIIII)V
    .locals 0

    .prologue
    .line 501
    if-nez p6, :cond_0

    .line 502
    invoke-virtual/range {p0 .. p5}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->onNestedScroll(Landroid/view/View;IIII)V

    .line 504
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;IIIII[I)V
    .locals 0

    .prologue
    .line 474
    invoke-virtual/range {p0 .. p6}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a(Landroid/view/View;IIIII)V

    .line 475
    return-void
.end method

.method public a(Landroid/view/View;II[II)V
    .locals 0

    .prologue
    .line 508
    if-nez p5, :cond_0

    .line 509
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->onNestedPreScroll(Landroid/view/View;II[I)V

    .line 511
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l:Z

    return v0
.end method

.method public a(Landroid/view/View;Landroid/view/View;II)Z
    .locals 1

    .prologue
    .line 481
    if-nez p4, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b()Landroidx/appcompat/widget/ActionBarOverlayLayout$b;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 322
    new-instance v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;

    invoke-direct {v0, v1, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;-><init>(II)V

    return-object v0
.end method

.method public b(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    .prologue
    .line 486
    if-nez p4, :cond_0

    .line 487
    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 489
    :cond_0
    return-void
.end method

.method c()V
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Landroidx/appcompat/widget/ContentFrameLayout;

    if-nez v0, :cond_0

    .line 585
    sget v0, Landroidx/appcompat/a$f;->action_bar_activity_content:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ContentFrameLayout;

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Landroidx/appcompat/widget/ContentFrameLayout;

    .line 586
    sget v0, Landroidx/appcompat/a$f;->action_bar_container:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarContainer;

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a:Landroidx/appcompat/widget/ActionBarContainer;

    .line 587
    sget v0, Landroidx/appcompat/a$f;->action_bar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a(Landroid/view/View;)Landroidx/appcompat/widget/x;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Landroidx/appcompat/widget/x;

    .line 589
    :cond_0
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 337
    instance-of v0, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;

    return v0
.end method

.method d()V
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 629
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->A:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 630
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->c:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->c:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 633
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 453
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 454
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k:Z

    if-nez v0, :cond_0

    .line 455
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContainer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a:Landroidx/appcompat/widget/ActionBarContainer;

    .line 456
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContainer;->getBottom()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarContainer;->getTranslationY()F

    move-result v2

    add-float/2addr v0, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 458
    :goto_0
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getWidth()I

    move-result v3

    iget-object v4, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j:Landroid/graphics/drawable/Drawable;

    .line 459
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v0

    .line 458
    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 460
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 462
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 456
    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 732
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->c()V

    .line 733
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Landroidx/appcompat/widget/x;

    invoke-interface {v0}, Landroidx/appcompat/widget/x;->h()Z

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 738
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->c()V

    .line 739
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Landroidx/appcompat/widget/x;

    invoke-interface {v0}, Landroidx/appcompat/widget/x;->i()Z

    move-result v0

    return v0
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 289
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->c()V

    .line 291
    invoke-static {p0}, Landroidx/core/h/u;->p(Landroid/view/View;)I

    move-result v0

    .line 292
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    .line 296
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move v4, v3

    move v6, v3

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v0

    .line 298
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->t:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 299
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->t:Landroid/graphics/Rect;

    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->q:Landroid/graphics/Rect;

    invoke-static {p0, v1, v2}, Landroidx/appcompat/widget/av;->a(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 300
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->u:Landroid/graphics/Rect;

    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->t:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 302
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->u:Landroid/graphics/Rect;

    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->t:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move v0, v3

    .line 304
    :cond_1
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->r:Landroid/graphics/Rect;

    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->q:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 306
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->r:Landroid/graphics/Rect;

    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->q:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move v0, v3

    .line 309
    :cond_2
    if-eqz v0, :cond_3

    .line 310
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->requestLayout()V

    .line 317
    :cond_3
    return v3
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 744
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->c()V

    .line 745
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Landroidx/appcompat/widget/x;

    invoke-interface {v0}, Landroidx/appcompat/widget/x;->j()Z

    move-result v0

    return v0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->b()Landroidx/appcompat/widget/ActionBarOverlayLayout$b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/ActionBarOverlayLayout$b;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 332
    new-instance v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getActionBarHideOffset()I
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a:Landroidx/appcompat/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContainer;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    neg-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->B:Landroidx/core/h/p;

    invoke-virtual {v0}, Landroidx/core/h/p;->a()I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 675
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->c()V

    .line 676
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Landroidx/appcompat/widget/x;

    invoke-interface {v0}, Landroidx/appcompat/widget/x;->e()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 750
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->c()V

    .line 751
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Landroidx/appcompat/widget/x;

    invoke-interface {v0}, Landroidx/appcompat/widget/x;->k()Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 756
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->c()V

    .line 757
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Landroidx/appcompat/widget/x;

    invoke-interface {v0}, Landroidx/appcompat/widget/x;->l()Z

    move-result v0

    return v0
.end method

.method public j()V
    .locals 1

    .prologue
    .line 762
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->c()V

    .line 763
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Landroidx/appcompat/widget/x;

    invoke-interface {v0}, Landroidx/appcompat/widget/x;->m()V

    .line 764
    return-void
.end method

.method public k()V
    .locals 1

    .prologue
    .line 786
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->c()V

    .line 787
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Landroidx/appcompat/widget/x;

    invoke-interface {v0}, Landroidx/appcompat/widget/x;->n()V

    .line 788
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 225
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 226
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a(Landroid/content/Context;)V

    .line 227
    invoke-static {p0}, Landroidx/core/h/u;->q(Landroid/view/View;)V

    .line 228
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 164
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 165
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d()V

    .line 166
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    .prologue
    .line 427
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getChildCount()I

    move-result v2

    .line 429
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getPaddingLeft()I

    move-result v3

    .line 430
    sub-int v0, p4, p2

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 432
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getPaddingTop()I

    move-result v4

    .line 433
    sub-int v0, p5, p3

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 435
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 436
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 437
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v6, 0x8

    if-eq v0, v6, :cond_0

    .line 438
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;

    .line 440
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 441
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 443
    iget v8, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;->leftMargin:I

    add-int/2addr v8, v3

    .line 444
    iget v0, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;->topMargin:I

    add-int/2addr v0, v4

    .line 446
    add-int/2addr v6, v8

    add-int/2addr v7, v0

    invoke-virtual {v5, v8, v0, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 435
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 449
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    .prologue
    .line 342
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->c()V

    .line 344
    const/4 v7, 0x0

    .line 345
    const/4 v8, 0x0

    .line 346
    const/4 v9, 0x0

    .line 348
    const/4 v6, 0x0

    .line 349
    const/4 v10, 0x0

    .line 351
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 352
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;

    .line 353
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a:Landroidx/appcompat/widget/ActionBarContainer;

    .line 354
    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;->rightMargin:I

    add-int/2addr v1, v2

    .line 353
    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 355
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a:Landroidx/appcompat/widget/ActionBarContainer;

    .line 356
    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;->topMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;->bottomMargin:I

    add-int/2addr v0, v1

    .line 355
    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 357
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContainer;->getMeasuredState()I

    move-result v0

    invoke-static {v9, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v9

    .line 359
    invoke-static {p0}, Landroidx/core/h/u;->p(Landroid/view/View;)I

    move-result v0

    .line 360
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    move v1, v0

    .line 362
    :goto_0
    if-eqz v1, :cond_3

    .line 365
    iget v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->f:I

    .line 366
    iget-boolean v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->m:Z

    if-eqz v2, :cond_0

    .line 367
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object v2

    .line 368
    if-eqz v2, :cond_0

    .line 370
    iget v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->f:I

    add-int/2addr v0, v2

    .line 383
    :cond_0
    :goto_1
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->s:Landroid/graphics/Rect;

    iget-object v3, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->q:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 384
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->v:Landroid/graphics/Rect;

    iget-object v3, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->t:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 385
    iget-boolean v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l:Z

    if-nez v2, :cond_4

    if-nez v1, :cond_4

    .line 386
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->s:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 387
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->s:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v10

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 392
    :goto_2
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Landroidx/appcompat/widget/ContentFrameLayout;

    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->s:Landroid/graphics/Rect;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    .line 394
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->w:Landroid/graphics/Rect;

    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->v:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 398
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->w:Landroid/graphics/Rect;

    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->v:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 400
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Landroidx/appcompat/widget/ContentFrameLayout;

    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->v:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ContentFrameLayout;->a(Landroid/graphics/Rect;)V

    .line 403
    :cond_1
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Landroidx/appcompat/widget/ContentFrameLayout;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 404
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Landroidx/appcompat/widget/ContentFrameLayout;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;

    .line 405
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Landroidx/appcompat/widget/ContentFrameLayout;

    .line 406
    invoke-virtual {v1}, Landroidx/appcompat/widget/ContentFrameLayout;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;->rightMargin:I

    add-int/2addr v1, v2

    .line 405
    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 407
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Landroidx/appcompat/widget/ContentFrameLayout;

    .line 408
    invoke-virtual {v2}, Landroidx/appcompat/widget/ContentFrameLayout;->getMeasuredHeight()I

    move-result v2

    iget v3, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;->topMargin:I

    add-int/2addr v2, v3

    iget v0, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;->bottomMargin:I

    add-int/2addr v0, v2

    .line 407
    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 409
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Landroidx/appcompat/widget/ContentFrameLayout;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ContentFrameLayout;->getMeasuredState()I

    move-result v2

    invoke-static {v9, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    .line 412
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 413
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 416
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 417
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 420
    invoke-static {v1, p1, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    shl-int/lit8 v2, v2, 0x10

    .line 421
    invoke-static {v0, p2, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    .line 419
    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setMeasuredDimension(II)V

    .line 423
    return-void

    .line 360
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_0

    .line 373
    :cond_3
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContainer;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_5

    .line 376
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v0

    goto/16 :goto_1

    .line 389
    :cond_4
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->v:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 390
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->v:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v10

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :cond_5
    move v0, v6

    goto/16 :goto_1
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 556
    iget-boolean v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->n:Z

    if-eqz v1, :cond_0

    if-nez p4, :cond_1

    .line 557
    :cond_0
    const/4 v0, 0x0

    .line 565
    :goto_0
    return v0

    .line 559
    :cond_1
    invoke-direct {p0, p2, p3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a(FF)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 560
    invoke-direct {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->o()V

    .line 564
    :goto_1
    iput-boolean v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->b:Z

    goto :goto_0

    .line 562
    :cond_2
    invoke-direct {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->n()V

    goto :goto_1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 1

    .prologue
    .line 575
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 0

    .prologue
    .line 571
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 1

    .prologue
    .line 536
    iget v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->o:I

    add-int/2addr v0, p3

    iput v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->o:I

    .line 537
    iget v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->o:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    .line 538
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->B:Landroidx/core/h/p;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/h/p;->a(Landroid/view/View;Landroid/view/View;I)V

    .line 526
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getActionBarHideOffset()I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->o:I

    .line 527
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d()V

    .line 528
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->x:Landroidx/appcompat/widget/ActionBarOverlayLayout$a;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->x:Landroidx/appcompat/widget/ActionBarOverlayLayout$a;

    invoke-interface {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout$a;->l()V

    .line 531
    :cond_0
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 517
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContainer;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 518
    :cond_0
    const/4 v0, 0x0

    .line 520
    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->n:Z

    goto :goto_0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 542
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->n:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->b:Z

    if-nez v0, :cond_0

    .line 543
    iget v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->o:I

    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarContainer;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 544
    invoke-direct {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l()V

    .line 549
    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->x:Landroidx/appcompat/widget/ActionBarOverlayLayout$a;

    if-eqz v0, :cond_1

    .line 550
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->x:Landroidx/appcompat/widget/ActionBarOverlayLayout$a;

    invoke-interface {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout$a;->m()V

    .line 552
    :cond_1
    return-void

    .line 546
    :cond_2
    invoke-direct {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->m()V

    goto :goto_0
.end method

.method public onWindowSystemUiVisibilityChanged(I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 232
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_0

    .line 233
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowSystemUiVisibilityChanged(I)V

    .line 235
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->c()V

    .line 236
    iget v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->p:I

    xor-int v4, v0, p1

    .line 237
    iput p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->p:I

    .line 238
    and-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_4

    move v3, v1

    .line 239
    :goto_0
    and-int/lit16 v0, p1, 0x100

    if-eqz v0, :cond_5

    move v0, v1

    .line 240
    :goto_1
    iget-object v5, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->x:Landroidx/appcompat/widget/ActionBarOverlayLayout$a;

    if-eqz v5, :cond_2

    .line 244
    iget-object v5, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->x:Landroidx/appcompat/widget/ActionBarOverlayLayout$a;

    if-nez v0, :cond_6

    :goto_2
    invoke-interface {v5, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout$a;->g(Z)V

    .line 245
    if-nez v3, :cond_1

    if-nez v0, :cond_7

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->x:Landroidx/appcompat/widget/ActionBarOverlayLayout$a;

    invoke-interface {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout$a;->j()V

    .line 248
    :cond_2
    :goto_3
    and-int/lit16 v0, v4, 0x100

    if-eqz v0, :cond_3

    .line 249
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->x:Landroidx/appcompat/widget/ActionBarOverlayLayout$a;

    if-eqz v0, :cond_3

    .line 250
    invoke-static {p0}, Landroidx/core/h/u;->q(Landroid/view/View;)V

    .line 253
    :cond_3
    return-void

    :cond_4
    move v3, v2

    .line 238
    goto :goto_0

    :cond_5
    move v0, v2

    .line 239
    goto :goto_1

    :cond_6
    move v1, v2

    .line 244
    goto :goto_2

    .line 246
    :cond_7
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->x:Landroidx/appcompat/widget/ActionBarOverlayLayout$a;

    invoke-interface {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout$a;->k()V

    goto :goto_3
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    .prologue
    .line 257
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowVisibilityChanged(I)V

    .line 258
    iput p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->g:I

    .line 259
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->x:Landroidx/appcompat/widget/ActionBarOverlayLayout$a;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->x:Landroidx/appcompat/widget/ActionBarOverlayLayout$a;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout$a;->a(I)V

    .line 262
    :cond_0
    return-void
.end method

.method public setActionBarHideOffset(I)V
    .locals 2

    .prologue
    .line 621
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d()V

    .line 622
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContainer;->getHeight()I

    move-result v0

    .line 623
    const/4 v1, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 624
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a:Landroidx/appcompat/widget/ActionBarContainer;

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTranslationY(F)V

    .line 625
    return-void
.end method

.method public setActionBarVisibilityCallback(Landroidx/appcompat/widget/ActionBarOverlayLayout$a;)V
    .locals 2

    .prologue
    .line 169
    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->x:Landroidx/appcompat/widget/ActionBarOverlayLayout$a;

    .line 170
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->x:Landroidx/appcompat/widget/ActionBarOverlayLayout$a;

    iget v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->g:I

    invoke-interface {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout$a;->a(I)V

    .line 174
    iget v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->p:I

    if-eqz v0, :cond_0

    .line 175
    iget v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->p:I

    .line 176
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->onWindowSystemUiVisibilityChanged(I)V

    .line 177
    invoke-static {p0}, Landroidx/core/h/u;->q(Landroid/view/View;)V

    .line 180
    :cond_0
    return-void
.end method

.method public setHasNonEmbeddedTabs(Z)V
    .locals 0

    .prologue
    .line 199
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->m:Z

    .line 200
    return-void
.end method

.method public setHideOnContentScrollEnabled(Z)V
    .locals 1

    .prologue
    .line 603
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->n:Z

    if-eq p1, v0, :cond_0

    .line 604
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->n:Z

    .line 605
    if-nez p1, :cond_0

    .line 606
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d()V

    .line 607
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    .line 610
    :cond_0
    return-void
.end method

.method public setIcon(I)V
    .locals 1

    .prologue
    .line 714
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->c()V

    .line 715
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Landroidx/appcompat/widget/x;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/x;->a(I)V

    .line 716
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 720
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->c()V

    .line 721
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Landroidx/appcompat/widget/x;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/x;->a(Landroid/graphics/drawable/Drawable;)V

    .line 722
    return-void
.end method

.method public setLogo(I)V
    .locals 1

    .prologue
    .line 726
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->c()V

    .line 727
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Landroidx/appcompat/widget/x;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/x;->b(I)V

    .line 728
    return-void
.end method

.method public setOverlayMode(Z)V
    .locals 2

    .prologue
    .line 183
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l:Z

    .line 189
    if-eqz p1, :cond_0

    .line 190
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k:Z

    .line 192
    return-void

    .line 190
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setShowingForActionMode(Z)V
    .locals 0

    .prologue
    .line 221
    return-void
.end method

.method public setUiOptions(I)V
    .locals 0

    .prologue
    .line 698
    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 1

    .prologue
    .line 663
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->c()V

    .line 664
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Landroidx/appcompat/widget/x;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/x;->a(Landroid/view/Window$Callback;)V

    .line 665
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 669
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->c()V

    .line 670
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Landroidx/appcompat/widget/x;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/x;->a(Ljava/lang/CharSequence;)V

    .line 671
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 466
    const/4 v0, 0x0

    return v0
.end method
