.class public Lcom/callapp/contacts/activity/fastscroll/FastScroller;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/fastscroll/FastScroller$SectionIndexer;
    }
.end annotation


# instance fields
.field a:Landroidx/recyclerview/widget/RecyclerView;

.field b:Landroidx/recyclerview/widget/RecyclerView$m;

.field private c:I

.field private d:I

.field private e:I

.field private f:Z

.field private g:Lcom/callapp/contacts/activity/fastscroll/FastScroller$SectionIndexer;

.field private h:Landroid/view/ViewPropertyAnimator;

.field private i:Landroid/view/ViewPropertyAnimator;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/view/View;

.field private n:Landroid/graphics/drawable/Drawable;

.field private o:Landroid/graphics/drawable/Drawable;

.field private p:Landroid/graphics/drawable/Drawable;

.field private q:Z

.field private r:Lcom/callapp/contacts/activity/fastscroll/FastScrollStateChangeListener;

.field private s:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 127
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 82
    new-instance v0, Lcom/callapp/contacts/activity/fastscroll/FastScroller$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/fastscroll/FastScroller$1;-><init>(Lcom/callapp/contacts/activity/fastscroll/FastScroller;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->s:Ljava/lang/Runnable;

    .line 90
    new-instance v0, Lcom/callapp/contacts/activity/fastscroll/FastScroller$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/fastscroll/FastScroller$2;-><init>(Lcom/callapp/contacts/activity/fastscroll/FastScroller;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->b:Landroidx/recyclerview/widget/RecyclerView$m;

    const/4 v0, 0x0

    .line 128
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 129
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-direct {p1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 133
    invoke-direct {p0, p1, p2, v0}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 137
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    new-instance p3, Lcom/callapp/contacts/activity/fastscroll/FastScroller$1;

    invoke-direct {p3, p0}, Lcom/callapp/contacts/activity/fastscroll/FastScroller$1;-><init>(Lcom/callapp/contacts/activity/fastscroll/FastScroller;)V

    iput-object p3, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->s:Ljava/lang/Runnable;

    .line 90
    new-instance p3, Lcom/callapp/contacts/activity/fastscroll/FastScroller$2;

    invoke-direct {p3, p0}, Lcom/callapp/contacts/activity/fastscroll/FastScroller$2;-><init>(Lcom/callapp/contacts/activity/fastscroll/FastScroller;)V

    iput-object p3, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->b:Landroidx/recyclerview/widget/RecyclerView$m;

    .line 138
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 139
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/fastscroll/FastScroller;Landroidx/recyclerview/widget/RecyclerView;)F
    .locals 2

    .line 5377
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    .line 5378
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result p1

    int-to-float v0, v0

    int-to-float p1, p1

    .line 5379
    iget p0, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->e:I

    int-to-float v1, p0

    sub-float/2addr p1, v1

    div-float/2addr v0, p1

    int-to-float p0, p0

    mul-float p0, p0, v0

    return p0
.end method

.method private static a(II)I
    .locals 1

    const/4 v0, 0x0

    .line 384
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 385
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private a()V
    .locals 3

    .line 437
    iget-object v0, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v0

    iget v1, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->e:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_1

    .line 438
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-boolean v1, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->q:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0701cd

    goto :goto_0

    :cond_0
    const v1, 0x7f0701cc

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 440
    iget-object v1, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->m:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 441
    iget-object v0, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->m:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 442
    iget-object v0, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 443
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/fastscroll/FastScroller$5;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/fastscroll/FastScroller$5;-><init>(Lcom/callapp/contacts/activity/fastscroll/FastScroller;)V

    .line 444
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->h:Landroid/view/ViewPropertyAnimator;

    :cond_1
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const v0, 0x7f0d0105

    .line 479
    invoke-static {p1, v0, p0}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 v0, 0x0

    .line 481
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->setClipChildren(Z)V

    .line 482
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->setOrientation(I)V

    const v1, 0x7f0a03de

    .line 484
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->j:Landroid/widget/TextView;

    const v1, 0x7f0a03df

    .line 485
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->k:Landroid/widget/ImageView;

    const v1, 0x7f0a03e1

    .line 486
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->l:Landroid/widget/ImageView;

    const v1, 0x7f0a03e0

    .line 487
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->m:Landroid/view/View;

    const/4 v1, -0x1

    const v2, -0x333334

    const v3, -0xbbbbbc

    const v4, -0x777778

    const/4 v5, 0x1

    if-eqz p2, :cond_0

    .line 498
    sget-object v6, Lcom/callapp/contacts/R$styleable;->FastScrollRecyclerView:[I

    invoke-virtual {p1, p2, v6, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 502
    :try_start_0
    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    const/4 p2, 0x2

    .line 503
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    const/4 p2, 0x5

    .line 504
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 505
    invoke-virtual {p1, v5, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    const/4 p2, 0x4

    .line 506
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    const/4 p2, 0x3

    .line 507
    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 510
    throw p2

    .line 514
    :cond_0
    :goto_0
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->setTrackColor(I)V

    .line 515
    invoke-virtual {p0, v3}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->setHandleColor(I)V

    .line 516
    invoke-virtual {p0, v4}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->setBubbleColor(I)V

    .line 517
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->setBubbleTextColor(I)V

    .line 518
    invoke-virtual {p0, v5}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->setHideScrollbar(Z)V

    .line 519
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->setTrackVisible(Z)V

    return-void
.end method

.method static synthetic a(Landroid/view/ViewPropertyAnimator;)V
    .locals 0

    .line 48
    invoke-static {p0}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->b(Landroid/view/ViewPropertyAnimator;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/fastscroll/FastScroller;)V
    .locals 3

    .line 4451
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-boolean v1, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->q:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0701cd

    goto :goto_0

    :cond_0
    const v1, 0x7f0701cc

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 4453
    iget-object v1, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->m:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 4454
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/fastscroll/FastScroller$6;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/fastscroll/FastScroller$6;-><init>(Lcom/callapp/contacts/activity/fastscroll/FastScroller;)V

    .line 4455
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->h:Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/fastscroll/FastScroller;F)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->setViewPositions(F)V

    return-void
.end method

.method static synthetic a(Landroid/view/View;)Z
    .locals 0

    .line 48
    invoke-static {p0}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->b(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/fastscroll/FastScroller;)Landroid/widget/ImageView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->k:Landroid/widget/ImageView;

    return-object p0
.end method

.method private static b(Landroid/view/ViewPropertyAnimator;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 402
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private static b(Landroid/view/View;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 397
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/fastscroll/FastScroller;)Ljava/lang/Runnable;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->s:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/fastscroll/FastScroller;)Landroid/view/ViewPropertyAnimator;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->h:Landroid/view/ViewPropertyAnimator;

    return-object p0
.end method

.method static synthetic e(Lcom/callapp/contacts/activity/fastscroll/FastScroller;)Landroid/view/View;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->m:Landroid/view/View;

    return-object p0
.end method

.method static synthetic f(Lcom/callapp/contacts/activity/fastscroll/FastScroller;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->a()V

    return-void
.end method

.method static synthetic g(Lcom/callapp/contacts/activity/fastscroll/FastScroller;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->f:Z

    return p0
.end method

.method static synthetic h(Lcom/callapp/contacts/activity/fastscroll/FastScroller;)Landroid/widget/TextView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->j:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic i(Lcom/callapp/contacts/activity/fastscroll/FastScroller;)Landroid/view/ViewPropertyAnimator;
    .locals 1

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->i:Landroid/view/ViewPropertyAnimator;

    return-object v0
.end method

.method static synthetic j(Lcom/callapp/contacts/activity/fastscroll/FastScroller;)Landroid/view/ViewPropertyAnimator;
    .locals 1

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->h:Landroid/view/ViewPropertyAnimator;

    return-object v0
.end method

.method private setHandleSelected(Z)V
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 475
    iget-object v0, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->o:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->c:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->d:I

    :goto_0
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method private setRecyclerViewPosition(F)V
    .locals 4

    .line 354
    iget-object v0, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 355
    iget-object v0, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$a;->getItemCount()I

    move-result v0

    .line 358
    iget-object v1, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->k:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getY()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    .line 360
    :cond_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->k:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->k:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->e:I

    add-int/lit8 v3, v2, -0x5

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    int-to-float v1, v2

    div-float v2, p1, v1

    :goto_0
    add-int/lit8 p1, v0, -0x1

    int-to-float v0, v0

    mul-float v2, v2, v0

    float-to-int v0, v2

    .line 366
    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->a(II)I

    move-result p1

    .line 367
    iget-object v0, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->e()V

    .line 368
    iget-object v0, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->d(I)V

    .line 370
    iget-object v0, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->g:Lcom/callapp/contacts/activity/fastscroll/FastScroller$SectionIndexer;

    if-eqz v0, :cond_2

    .line 371
    iget-object v1, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->j:Landroid/widget/TextView;

    invoke-interface {v0, p1}, Lcom/callapp/contacts/activity/fastscroll/FastScroller$SectionIndexer;->getSectionText(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private setViewPositions(F)V
    .locals 5

    .line 389
    iget-object v0, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    .line 390
    iget-object v1, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->k:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    .line 392
    iget-object v2, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->j:Landroid/widget/TextView;

    iget v3, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->e:I

    sub-int/2addr v3, v0

    div-int/lit8 v4, v1, 0x2

    sub-int/2addr v3, v4

    int-to-float v0, v0

    sub-float v0, p1, v0

    float-to-int v0, v0

    invoke-static {v3, v0}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->a(II)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setY(F)V

    .line 393
    iget-object v0, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->k:Landroid/widget/ImageView;

    iget v2, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->e:I

    sub-int/2addr v2, v1

    int-to-float v1, v4

    sub-float/2addr p1, v1

    float-to-int p1, p1

    invoke-static {v2, p1}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->a(II)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setY(F)V

    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 0

    .line 349
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 350
    iput p2, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->e:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 297
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-wide/16 v1, 0x64

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v4, :cond_0

    const/4 v5, 0x2

    if-eq v0, v5, :cond_6

    const/4 v5, 0x3

    if-eq v0, v5, :cond_0

    .line 344
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 327
    :cond_0
    invoke-direct {p0, v3}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->setHandleSelected(Z)V

    .line 329
    iget-boolean p1, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->f:Z

    if-eqz p1, :cond_1

    .line 330
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->s:Ljava/lang/Runnable;

    const-wide/16 v5, 0x3e8

    invoke-virtual {p1, v0, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 333
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->j:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->b(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4416
    iget-object p1, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->j:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 4417
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/activity/fastscroll/FastScroller$4;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/fastscroll/FastScroller$4;-><init>(Lcom/callapp/contacts/activity/fastscroll/FastScroller;)V

    .line 4418
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->i:Landroid/view/ViewPropertyAnimator;

    :cond_2
    return v4

    .line 299
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v5, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->k:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getX()F

    move-result v5

    iget-object v6, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->k:Landroid/widget/ImageView;

    invoke-static {v6}, Landroidx/core/view/v;->i(Landroid/view/View;)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    cmpg-float v0, v0, v5

    if-gez v0, :cond_4

    return v3

    .line 303
    :cond_4
    invoke-direct {p0, v4}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->setHandleSelected(Z)V

    .line 305
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v5, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 306
    iget-object v0, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->h:Landroid/view/ViewPropertyAnimator;

    invoke-static {v0}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->b(Landroid/view/ViewPropertyAnimator;)V

    .line 307
    iget-object v0, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->i:Landroid/view/ViewPropertyAnimator;

    invoke-static {v0}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->b(Landroid/view/ViewPropertyAnimator;)V

    .line 309
    iget-object v0, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->m:Landroid/view/View;

    invoke-static {v0}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 310
    invoke-direct {p0}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->a()V

    .line 313
    :cond_5
    iget-object v0, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->g:Lcom/callapp/contacts/activity/fastscroll/FastScroller$SectionIndexer;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->j:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 4407
    iget-object v0, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4408
    iget-object v0, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 4409
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/fastscroll/FastScroller$3;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/fastscroll/FastScroller$3;-><init>(Lcom/callapp/contacts/activity/fastscroll/FastScroller;)V

    .line 4410
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->i:Landroid/view/ViewPropertyAnimator;

    .line 321
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 322
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->setViewPositions(F)V

    .line 323
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->setRecyclerViewPosition(F)V

    return v4
.end method

.method public setBubbleColor(I)V
    .locals 1

    .line 259
    iput p1, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->c:I

    .line 261
    iget-object p1, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->n:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f080178

    invoke-static {p1, v0}, Landroidx/core/content/b;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/graphics/drawable/a;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->n:Landroid/graphics/drawable/Drawable;

    .line 263
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 266
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->n:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->c:I

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 268
    iget-object p1, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBubbleTextColor(I)V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 291
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 292
    :goto_0
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->setVisibility(I)V

    return-void
.end method

.method public setFastScrollStateChangeListener(Lcom/callapp/contacts/activity/fastscroll/FastScrollStateChangeListener;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->r:Lcom/callapp/contacts/activity/fastscroll/FastScrollStateChangeListener;

    return-void
.end method

.method public setFastScrollWidePadding(Z)V
    .locals 1

    .line 213
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->q:Z

    .line 214
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_0

    const p1, 0x7f0701cd

    goto :goto_0

    :cond_0
    const p1, 0x7f0701cc

    :goto_0
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 215
    iget-object v0, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 216
    iget-object v0, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/ImageView;->setPadding(IIII)V

    return-void
.end method

.method public setHandleColor(I)V
    .locals 1

    .line 242
    iput p1, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->d:I

    .line 244
    iget-object p1, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->o:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f080179

    invoke-static {p1, v0}, Landroidx/core/content/b;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/graphics/drawable/a;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->o:Landroid/graphics/drawable/Drawable;

    .line 246
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 249
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->o:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->d:I

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 250
    iget-object p1, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->k:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setHideScrollbar(Z)V
    .locals 1

    .line 199
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->f:Z

    .line 200
    iget-object v0, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->m:Landroid/view/View;

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const/4 v0, -0x2

    .line 144
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 145
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup;)V
    .locals 3

    .line 149
    instance-of v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const v1, 0x800005

    if-eqz v0, :cond_1

    .line 150
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$d;

    .line 151
    iget-object v0, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getId()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x0

    .line 4112
    iput-object v2, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$d;->l:Landroid/view/View;

    iput-object v2, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$d;->k:Landroid/view/View;

    .line 3941
    iput v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$d;->f:I

    .line 155
    iput v1, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$d;->d:I

    goto :goto_0

    .line 157
    :cond_0
    iput v1, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$d;->c:I

    .line 159
    :goto_0
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 160
    :cond_1
    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    .line 161
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 163
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 164
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 165
    :cond_2
    instance-of p1, p1, Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_3

    .line 166
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v0, 0x15

    .line 168
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 169
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 171
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Parent ViewGroup must be a CoordinatorLayout, FrameLayout, or RelativeLayout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSectionIndexer(Lcom/callapp/contacts/activity/fastscroll/FastScroller$SectionIndexer;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->g:Lcom/callapp/contacts/activity/fastscroll/FastScroller$SectionIndexer;

    return-void
.end method

.method public setTrackColor(I)V
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->p:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08017a

    invoke-static {v0, v1}, Landroidx/core/content/b;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->p:Landroid/graphics/drawable/Drawable;

    .line 229
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->p:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 233
    iget-object p1, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->l:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTrackVisible(Z)V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->l:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
