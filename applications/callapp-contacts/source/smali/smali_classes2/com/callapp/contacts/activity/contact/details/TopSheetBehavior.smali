.class public Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior$SavedState;,
        Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior$SettleRunnable;,
        Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior$TopSheetCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
        "TV;>;"
    }
.end annotation


# instance fields
.field a:I

.field private b:F

.field private c:I

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z

.field private h:I

.field private i:Landroidx/customview/a/c;

.field private j:Z

.field private k:I

.field private l:Z

.field private m:Z

.field private n:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TV;>;"
        }
    .end annotation
.end field

.field private o:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior$TopSheetCallback;

.field private q:Landroid/view/VelocityTracker;

.field private r:I

.field private s:I

.field private t:Z

.field private final u:Landroidx/customview/a/c$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 151
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    const/4 v0, 0x4

    .line 112
    iput v0, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->h:I

    const/4 v1, 0x1

    .line 123
    iput-boolean v1, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->m:Z

    .line 525
    iput v0, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->a:I

    .line 580
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior$1;-><init>(Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->u:Landroidx/customview/a/c$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 161
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x4

    .line 112
    iput v0, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->h:I

    const/4 v1, 0x1

    .line 123
    iput-boolean v1, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->m:Z

    .line 525
    iput v0, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->a:I

    .line 580
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior$1;-><init>(Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->u:Landroidx/customview/a/c$a;

    .line 162
    sget-object v0, Lcom/callapp/contacts/R$styleable;->BottomSheetBehavior_Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x7

    const/4 v1, 0x0

    .line 163
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->setPeekHeight(I)V

    const/4 v0, 0x6

    .line 164
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->setHideable(Z)V

    const/16 v0, 0x9

    .line 165
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->setSkipCollapsed(Z)V

    .line 167
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 168
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 169
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->b:F

    return-void
.end method

.method static a(III)I
    .locals 0

    if-ge p0, p1, :cond_0

    return p1

    :cond_0
    if-le p0, p2, :cond_1

    return p2

    :cond_1
    return p0
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->h:I

    return p0
.end method

.method public static a(Landroid/view/View;)Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(TV;)",
            "Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior<",
            "TV;>;"
        }
    .end annotation

    .line 745
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 746
    instance-of v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$d;

    if-eqz v0, :cond_1

    .line 749
    check-cast p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$d;

    .line 5952
    iget-object p0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$d;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 751
    instance-of v0, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;

    if-eqz v0, :cond_0

    .line 755
    check-cast p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;

    return-object p0

    .line 752
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The view is not associated with TopSheetBehavior"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 747
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The view is not a child of CoordinatorLayout"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;I)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->c()V

    return-void
.end method

.method private a(Landroid/view/View;F)Z
    .locals 3

    .line 551
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->d:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    .line 555
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3dcccccd    # 0.1f

    mul-float p2, p2, v0

    add-float/2addr p1, p2

    .line 556
    iget p2, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->d:I

    int-to-float p2, p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->c:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v2
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;Landroid/view/View;F)Z
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->a(Landroid/view/View;F)Z

    move-result p0

    return p0
.end method

.method private b(Landroid/view/View;)Landroid/view/View;
    .locals 3

    .line 560
    instance-of v0, p1, Landroidx/core/view/j;

    if-eqz v0, :cond_0

    return-object p1

    .line 563
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 564
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 565
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    .line 566
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->b(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private b()V
    .locals 1

    const/4 v0, -0x1

    .line 543
    iput v0, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->r:I

    .line 544
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->q:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 545
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 546
    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->q:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->setStateInternal(I)V

    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->t:Z

    return p0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->r:I

    return p0
.end method

.method private c()V
    .locals 2

    .line 665
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 666
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->p:Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior$TopSheetCallback;

    if-eqz v0, :cond_1

    .line 668
    iget v0, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->o:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic e(Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->n:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic f(Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->e:I

    return p0
.end method

.method static synthetic g(Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->f:Z

    return p0
.end method

.method private getYVelocity()F
    .locals 3

    .line 576
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->q:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->b:F

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 577
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->q:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->r:I

    .line 5049
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    return v0
.end method

.method static synthetic h(Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->d:I

    return p0
.end method

.method static synthetic i(Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;)Landroidx/customview/a/c;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->i:Landroidx/customview/a/c;

    return-object p0
.end method

.method private setStateInternal(I)V
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 529
    :cond_0
    iput p1, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->a:I

    .line 532
    :cond_1
    iget v0, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->h:I

    if-ne v0, p1, :cond_2

    return-void

    .line 535
    :cond_2
    iput p1, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->h:I

    .line 536
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/View;I[I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Landroid/view/View;",
            "I[I)V"
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->o:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eq p2, v0, :cond_0

    return-void

    .line 321
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v1, v0, p3

    const/4 v2, 0x1

    if-lez p3, :cond_3

    .line 324
    invoke-static {p2, v2}, Landroidx/core/view/v;->a(Landroid/view/View;I)Z

    move-result p2

    if-nez p2, :cond_5

    .line 325
    iget p2, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->d:I

    if-ge v1, p2, :cond_2

    iget-boolean v1, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->f:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    sub-int/2addr v0, p2

    .line 330
    aput v0, p4, v2

    .line 331
    aget p2, p4, v2

    neg-int p2, p2

    invoke-static {p1, p2}, Landroidx/core/view/v;->e(Landroid/view/View;I)V

    const/4 p2, 0x4

    .line 332
    invoke-direct {p0, p2}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->setStateInternal(I)V

    goto :goto_1

    .line 326
    :cond_2
    :goto_0
    aput p3, p4, v2

    neg-int p2, p3

    .line 327
    invoke-static {p1, p2}, Landroidx/core/view/v;->e(Landroid/view/View;I)V

    .line 328
    invoke-direct {p0, v2}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->setStateInternal(I)V

    goto :goto_1

    :cond_3
    if-gez p3, :cond_5

    .line 337
    iget p2, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->e:I

    if-ge v1, p2, :cond_4

    .line 338
    aput p3, p4, v2

    neg-int p2, p3

    .line 339
    invoke-static {p1, p2}, Landroidx/core/view/v;->e(Landroid/view/View;I)V

    .line 340
    invoke-direct {p0, v2}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->setStateInternal(I)V

    goto :goto_1

    :cond_4
    sub-int/2addr v0, p2

    .line 342
    aput v0, p4, v2

    .line 343
    aget p2, p4, v2

    neg-int p2, p2

    invoke-static {p1, p2}, Landroidx/core/view/v;->e(Landroid/view/View;I)V

    const/4 p2, 0x3

    .line 344
    invoke-direct {p0, p2}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->setStateInternal(I)V

    .line 347
    :cond_5
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->c()V

    .line 348
    iput p3, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->k:I

    .line 349
    iput-boolean v2, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->l:Z

    return-void
.end method

.method public final a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    .line 179
    check-cast p3, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior$SavedState;

    .line 180
    invoke-virtual {p3}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, p1, p2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 182
    iget p1, p3, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior$SavedState;->state:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    iget p1, p3, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior$SavedState;->state:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 185
    :cond_0
    iget p1, p3, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior$SavedState;->state:I

    iput p1, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->h:I

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x4

    .line 183
    iput p1, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->h:I

    return-void
.end method

.method public final a(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 309
    iput v0, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->k:I

    .line 310
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->l:Z

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public final a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .line 191
    invoke-static {p1}, Landroidx/core/view/v;->s(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroidx/core/view/v;->s(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    invoke-static {p2, v1}, Landroidx/core/view/v;->b(Landroid/view/View;Z)V

    .line 194
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 196
    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->b(Landroid/view/View;I)V

    .line 198
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    .line 199
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p3

    neg-int p3, p3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->c:I

    sub-int/2addr v2, v3

    neg-int v2, v2

    invoke-static {p3, v2}, Ljava/lang/Math;->max(II)I

    move-result p3

    iput p3, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->d:I

    const/4 v2, 0x0

    .line 200
    iput v2, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->e:I

    .line 201
    iget v3, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->h:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 202
    invoke-static {p2, v2}, Landroidx/core/view/v;->e(Landroid/view/View;I)V

    goto :goto_0

    .line 203
    :cond_1
    iget-boolean v2, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->f:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x5

    if-ne v3, v2, :cond_2

    .line 204
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p3

    neg-int p3, p3

    invoke-static {p2, p3}, Landroidx/core/view/v;->e(Landroid/view/View;I)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    if-ne v3, v2, :cond_3

    .line 206
    invoke-static {p2, p3}, Landroidx/core/view/v;->e(Landroid/view/View;I)V

    goto :goto_0

    :cond_3
    if-eq v3, v1, :cond_4

    const/4 p3, 0x2

    if-ne v3, p3, :cond_5

    .line 208
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p3

    sub-int/2addr v0, p3

    invoke-static {p2, v0}, Landroidx/core/view/v;->e(Landroid/view/View;I)V

    .line 210
    :cond_5
    :goto_0
    iget-object p3, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->i:Landroidx/customview/a/c;

    if-nez p3, :cond_6

    .line 211
    iget-object p3, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->u:Landroidx/customview/a/c$a;

    invoke-static {p1, p3}, Landroidx/customview/a/c;->a(Landroid/view/ViewGroup;Landroidx/customview/a/c$a;)Landroidx/customview/a/c;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->i:Landroidx/customview/a/c;

    .line 213
    :cond_6
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->n:Ljava/lang/ref/WeakReference;

    .line 214
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p2}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->b(Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->o:Ljava/lang/ref/WeakReference;

    return v1
.end method

.method public final a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 220
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->m:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 223
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 227
    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 230
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->b()V

    .line 232
    :cond_2
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->q:Landroid/view/VelocityTracker;

    if-nez v2, :cond_3

    .line 233
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->q:Landroid/view/VelocityTracker;

    .line 235
    :cond_3
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->q:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v4, :cond_4

    const/4 p2, 0x3

    if-eq v0, p2, :cond_4

    goto :goto_2

    .line 239
    :cond_4
    iput-boolean v1, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->t:Z

    .line 240
    iput v3, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->r:I

    .line 242
    iget-boolean p2, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->j:Z

    if-eqz p2, :cond_9

    .line 243
    iput-boolean v1, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->j:Z

    return v1

    .line 248
    :cond_5
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    .line 249
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->s:I

    .line 250
    iget-object v6, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->o:Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    goto :goto_0

    :cond_6
    move-object v6, v2

    :goto_0
    if-eqz v6, :cond_7

    .line 251
    iget v7, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->s:I

    invoke-virtual {p1, v6, v5, v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Landroid/view/View;II)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 252
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    invoke-virtual {p3, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->r:I

    .line 253
    iput-boolean v4, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->t:Z

    .line 255
    :cond_7
    iget v6, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->r:I

    if-ne v6, v3, :cond_8

    iget v3, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->s:I

    .line 256
    invoke-virtual {p1, p2, v5, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Landroid/view/View;II)Z

    move-result p2

    if-nez p2, :cond_8

    const/4 p2, 0x1

    goto :goto_1

    :cond_8
    const/4 p2, 0x0

    :goto_1
    iput-boolean p2, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->j:Z

    .line 259
    :cond_9
    :goto_2
    iget-boolean p2, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->j:Z

    if-nez p2, :cond_a

    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->i:Landroidx/customview/a/c;

    if-eqz p2, :cond_a

    invoke-virtual {p2, p3}, Landroidx/customview/a/c;->a(Landroid/view/MotionEvent;)Z

    move-result p2

    if-eqz p2, :cond_a

    return v4

    .line 265
    :cond_a
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->o:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Landroid/view/View;

    :cond_b
    const/4 p2, 0x2

    if-ne v0, p2, :cond_c

    if-eqz v2, :cond_c

    .line 266
    iget-boolean p2, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->j:Z

    if-nez p2, :cond_c

    iget p2, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->h:I

    if-eq p2, v4, :cond_c

    .line 268
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v2, p2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Landroid/view/View;II)Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->i:Landroidx/customview/a/c;

    if-eqz p1, :cond_c

    iget p1, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->s:I

    int-to-float p1, p1

    .line 269
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->i:Landroidx/customview/a/c;

    .line 3503
    iget p2, p2, Landroidx/customview/a/c;->b:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_c

    return v4

    :cond_c
    return v1
.end method

.method public final a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "FF)Z"
        }
    .end annotation

    .line 394
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->o:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p3, v0, :cond_1

    iget v0, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->h:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 396
    invoke-super/range {p0 .. p5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    .line 174
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior$SavedState;

    invoke-super {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->b(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object p1

    iget p2, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->h:I

    invoke-direct {v0, p1, p2}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior$SavedState;-><init>(Landroid/os/Parcelable;I)V

    return-object v0
.end method

.method public final b(Landroid/view/View;Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 354
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->e:I

    const/4 v2, 0x3

    if-ne v0, v1, :cond_0

    .line 355
    invoke-direct {p0, v2}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->setStateInternal(I)V

    return-void

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->o:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p2, v0, :cond_7

    iget-boolean p2, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->l:Z

    if-nez p2, :cond_1

    goto :goto_3

    .line 363
    :cond_1
    iget p2, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->k:I

    const/4 v0, 0x4

    if-gez p2, :cond_2

    .line 364
    iget p2, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->e:I

    goto :goto_1

    .line 366
    :cond_2
    iget-boolean p2, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->f:Z

    if-eqz p2, :cond_3

    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->getYVelocity()F

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->a(Landroid/view/View;F)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 367
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    neg-int p2, p2

    const/4 v2, 0x5

    goto :goto_1

    .line 369
    :cond_3
    iget p2, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->k:I

    if-nez p2, :cond_5

    .line 370
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    .line 371
    iget v1, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->d:I

    sub-int v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v3, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->e:I

    sub-int/2addr p2, v3

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-le v1, p2, :cond_4

    .line 372
    iget p2, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->e:I

    goto :goto_1

    .line 375
    :cond_4
    iget p2, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->d:I

    goto :goto_0

    .line 379
    :cond_5
    iget p2, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->d:I

    :goto_0
    const/4 v2, 0x4

    .line 382
    :goto_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->i:Landroidx/customview/a/c;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0, p1, v1, p2}, Landroidx/customview/a/c;->a(Landroid/view/View;II)Z

    move-result p2

    if-eqz p2, :cond_6

    const/4 p2, 0x2

    .line 383
    invoke-direct {p0, p2}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->setStateInternal(I)V

    .line 384
    new-instance p2, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior$SettleRunnable;

    invoke-direct {p2, p0, p1, v2}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior$SettleRunnable;-><init>(Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;Landroid/view/View;I)V

    invoke-static {p1, p2}, Landroidx/core/view/v;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_2

    .line 386
    :cond_6
    invoke-direct {p0, v2}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->setStateInternal(I)V

    :goto_2
    const/4 p1, 0x0

    .line 388
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->l:Z

    :cond_7
    :goto_3
    return-void
.end method

.method public final b(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 274
    iget-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->m:Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 277
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 280
    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    .line 281
    iget v2, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->h:I

    if-ne v2, v0, :cond_2

    if-nez p1, :cond_2

    return v0

    .line 284
    :cond_2
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->i:Landroidx/customview/a/c;

    if-eqz v2, :cond_5

    .line 286
    invoke-virtual {v2, p3}, Landroidx/customview/a/c;->b(Landroid/view/MotionEvent;)V

    if-nez p1, :cond_3

    .line 289
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->b()V

    .line 291
    :cond_3
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->q:Landroid/view/VelocityTracker;

    if-nez v2, :cond_4

    .line 292
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->q:Landroid/view/VelocityTracker;

    .line 294
    :cond_4
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->q:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v2, 0x2

    if-ne p1, v2, :cond_5

    .line 297
    iget-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->j:Z

    if-nez p1, :cond_5

    .line 298
    iget p1, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->s:I

    int-to-float p1, p1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->i:Landroidx/customview/a/c;

    .line 4503
    iget v2, v2, Landroidx/customview/a/c;->b:I

    int-to-float v2, v2

    cmpl-float p1, p1, v2

    if-lez p1, :cond_5

    .line 299
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->i:Landroidx/customview/a/c;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroidx/customview/a/c;->a(Landroid/view/View;I)V

    .line 303
    :cond_5
    iget-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->j:Z

    if-nez p1, :cond_6

    return v0

    :cond_6
    return v1
.end method

.method public final getState()I
    .locals 1

    .line 522
    iget v0, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->h:I

    return v0
.end method

.method public setAllowUserDragging(Z)V
    .locals 0

    .line 144
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->m:Z

    return-void
.end method

.method public setHideable(Z)V
    .locals 0

    .line 431
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->f:Z

    return-void
.end method

.method public final setPeekHeight(I)V
    .locals 2

    const/4 v0, 0x0

    .line 407
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->c:I

    .line 409
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->n:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 410
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    neg-int p1, p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->c:I

    sub-int/2addr v0, v1

    neg-int v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->d:I

    :cond_0
    return-void
.end method

.method public setSkipCollapsed(Z)V
    .locals 0

    .line 452
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->g:Z

    return-void
.end method

.method public final setState(I)V
    .locals 4

    .line 483
    iget v0, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->h:I

    if-ne p1, v0, :cond_0

    return-void

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->n:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x5

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-nez v0, :cond_3

    if-eq p1, v3, :cond_1

    if-eq p1, v2, :cond_1

    .line 488
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->f:Z

    if-eqz v0, :cond_2

    if-ne p1, v1, :cond_2

    .line 490
    :cond_1
    iput p1, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->h:I

    :cond_2
    return-void

    .line 494
    :cond_3
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_4

    return-void

    :cond_4
    if-ne p1, v3, :cond_5

    .line 500
    iget v1, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->d:I

    goto :goto_0

    :cond_5
    if-ne p1, v2, :cond_6

    .line 502
    iget v1, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->e:I

    goto :goto_0

    .line 503
    :cond_6
    iget-boolean v2, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->f:Z

    if-eqz v2, :cond_8

    if-ne p1, v1, :cond_8

    .line 504
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    :goto_0
    const/4 v2, 0x2

    .line 508
    invoke-direct {p0, v2}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->setStateInternal(I)V

    .line 509
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->i:Landroidx/customview/a/c;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v2, v0, v3, v1}, Landroidx/customview/a/c;->a(Landroid/view/View;II)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 510
    new-instance v1, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior$SettleRunnable;

    invoke-direct {v1, p0, v0, p1}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior$SettleRunnable;-><init>(Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;Landroid/view/View;I)V

    invoke-static {v0, v1}, Landroidx/core/view/v;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_7
    return-void

    .line 506
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Illegal state argument: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
