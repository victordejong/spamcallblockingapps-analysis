.class public abstract Lcom/google/android/material/snackbar/BaseTransientBottomBar;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$b;,
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;,
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;,
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$c;,
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$d;,
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/google/android/material/snackbar/BaseTransientBottomBar",
        "<TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final a:Landroid/os/Handler;

.field private static final d:Z

.field private static final e:[I

.field private static final f:Ljava/lang/String;


# instance fields
.field protected final b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;

.field c:Lcom/google/android/material/snackbar/b$a;

.field private final g:Landroid/view/ViewGroup;

.field private final h:Landroid/content/Context;

.field private final i:Lcom/google/android/material/snackbar/a;

.field private j:I

.field private k:Z

.field private l:Landroid/view/View;

.field private final m:Ljava/lang/Runnable;

.field private n:Landroid/graphics/Rect;

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/material/snackbar/BaseTransientBottomBar$a",
            "<TB;>;>;"
        }
    .end annotation
.end field

.field private u:Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;

.field private final v:Landroid/view/accessibility/AccessibilityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 221
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-gt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->d:Z

    .line 225
    new-array v0, v1, [I

    sget v1, Lcom/google/android/material/a$b;->snackbarStyle:I

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->e:[I

    .line 227
    const-class v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->f:Ljava/lang/String;

    .line 230
    new-instance v0, Landroid/os/Handler;

    .line 232
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar$1;

    invoke-direct {v2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$1;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->a:Landroid/os/Handler;

    .line 248
    return-void

    :cond_0
    move v0, v2

    .line 221
    goto :goto_0
.end method

.method protected constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Lcom/google/android/material/snackbar/a;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    new-instance v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$10;

    invoke-direct {v0, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$10;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    iput-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->m:Ljava/lang/Runnable;

    .line 676
    new-instance v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$13;

    invoke-direct {v0, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$13;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    iput-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->c:Lcom/google/android/material/snackbar/b$a;

    .line 333
    if-nez p1, :cond_0

    .line 334
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Transient bottom bar must have non-null parent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_0
    if-nez p2, :cond_1

    .line 337
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Transient bottom bar must have non-null content"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :cond_1
    if-nez p3, :cond_2

    .line 340
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Transient bottom bar must have non-null callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :cond_2
    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->g:Landroid/view/ViewGroup;

    .line 344
    iput-object p3, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->i:Lcom/google/android/material/snackbar/a;

    .line 345
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->h:Landroid/content/Context;

    .line 347
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/material/internal/i;->a(Landroid/content/Context;)V

    .line 349
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->h:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 353
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->a()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->g:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;

    iput-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;

    .line 354
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_3

    .line 355
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;

    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->n()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/h/u;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 357
    :cond_3
    instance-of v0, p2, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    if-eqz v0, :cond_4

    move-object v0, p2

    .line 358
    check-cast v0, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;

    .line 359
    invoke-virtual {v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;->getActionTextColorAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->a(F)V

    .line 361
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;

    invoke-virtual {v0, p2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;->addView(Landroid/view/View;)V

    .line 363
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 364
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_5

    .line 365
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 366
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->n:Landroid/graphics/Rect;

    .line 374
    :cond_5
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;

    invoke-static {v0, v5}, Landroidx/core/h/u;->d(Landroid/view/View;I)V

    .line 375
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;

    invoke-static {v0, v5}, Landroidx/core/h/u;->b(Landroid/view/View;I)V

    .line 378
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;

    invoke-static {v0, v5}, Landroidx/core/h/u;->b(Landroid/view/View;Z)V

    .line 379
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;

    new-instance v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$11;

    invoke-direct {v1, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$11;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    invoke-static {v0, v1}, Landroidx/core/h/u;->a(Landroid/view/View;Landroidx/core/h/q;)V

    .line 396
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;

    new-instance v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$12;

    invoke-direct {v1, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$12;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    invoke-static {v0, v1}, Landroidx/core/h/u;->a(Landroid/view/View;Landroidx/core/h/a;)V

    .line 417
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->h:Landroid/content/Context;

    const-string/jumbo v1, "accessibility"

    .line 418
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->v:Landroid/view/accessibility/AccessibilityManager;

    .line 419
    return-void
.end method

.method static synthetic a(Lcom/google/android/material/snackbar/BaseTransientBottomBar;I)I
    .locals 0

    .prologue
    .line 89
    iput p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->o:I

    return p1
.end method

.method private varargs a([F)Landroid/animation/ValueAnimator;
    .locals 2

    .prologue
    .line 904
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 905
    sget-object v1, Lcom/google/android/material/a/a;->a:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 906
    new-instance v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$4;

    invoke-direct {v1, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$4;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 913
    return-object v0
.end method

.method static synthetic a(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->h:Landroid/content/Context;

    return-object v0
.end method

.method private a(Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;)V
    .locals 2

    .prologue
    .line 787
    .line 789
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->u:Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;

    if-nez v0, :cond_2

    .line 790
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->g()Lcom/google/android/material/behavior/SwipeDismissBehavior;

    move-result-object v1

    .line 792
    :goto_0
    instance-of v0, v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 793
    check-cast v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;

    invoke-static {v0, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;->a(Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    .line 796
    :cond_0
    new-instance v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$16;

    invoke-direct {v0, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$16;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    invoke-virtual {v1, v0}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a(Lcom/google/android/material/behavior/SwipeDismissBehavior$a;)V

    .line 821
    invoke-virtual {p1, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;)V

    .line 824
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->l:Landroid/view/View;

    if-nez v0, :cond_1

    .line 825
    const/16 v0, 0x50

    iput v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->g:I

    .line 827
    :cond_1
    return-void

    .line 790
    :cond_2
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->u:Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)I
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->t()I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/google/android/material/snackbar/BaseTransientBottomBar;I)I
    .locals 0

    .prologue
    .line 89
    iput p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->p:I

    return p1
.end method

.method private varargs b([F)Landroid/animation/ValueAnimator;
    .locals 2

    .prologue
    .line 917
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 918
    sget-object v1, Lcom/google/android/material/a/a;->d:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 919
    new-instance v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$5;

    invoke-direct {v1, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$5;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 928
    return-object v0
.end method

.method static synthetic c(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)I
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->s()I

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/google/android/material/snackbar/BaseTransientBottomBar;I)I
    .locals 0

    .prologue
    .line 89
    iput p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->q:I

    return p1
.end method

.method static synthetic d(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->r:I

    return v0
.end method

.method static synthetic d(Lcom/google/android/material/snackbar/BaseTransientBottomBar;I)I
    .locals 0

    .prologue
    .line 89
    iput p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->r:I

    return p1
.end method

.method private e(I)V
    .locals 2

    .prologue
    .line 866
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;->getAnimationMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 867
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->f(I)V

    .line 871
    :goto_0
    return-void

    .line 869
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->g(I)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->o()V

    return-void
.end method

.method private f(I)V
    .locals 4

    .prologue
    .line 891
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->a([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 892
    const-wide/16 v2, 0x4b

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 893
    new-instance v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$3;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 900
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 901
    return-void

    .line 891
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic f(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->r()V

    return-void
.end method

.method private g(I)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 978
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 979
    const/4 v1, 0x2

    new-array v1, v1, [I

    aput v2, v1, v2

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->x()I

    move-result v3

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 980
    sget-object v1, Lcom/google/android/material/a/a;->b:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 981
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 982
    new-instance v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$8;

    invoke-direct {v1, p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$8;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 994
    new-instance v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$9;

    invoke-direct {v1, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$9;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1012
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1013
    return-void
.end method

.method static synthetic g(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->v()V

    return-void
.end method

.method static synthetic h(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->w()V

    return-void
.end method

.method static synthetic i(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)Lcom/google/android/material/snackbar/a;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->i:Lcom/google/android/material/snackbar/a;

    return-object v0
.end method

.method static synthetic l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m()Z
    .locals 1

    .prologue
    .line 89
    sget-boolean v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->d:Z

    return v0
.end method

.method private n()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 423
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;

    sget v1, Lcom/google/android/material/a$b;->colorSurface:I

    sget v2, Lcom/google/android/material/a$b;->colorOnSurface:I

    iget-object v3, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;

    .line 428
    invoke-virtual {v3}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;->getBackgroundOverlayColorAlpha()F

    move-result v3

    .line 424
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/material/g/a;->a(Landroid/view/View;IIF)I

    move-result v0

    .line 429
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;

    .line 430
    invoke-virtual {v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/material/a$d;->mtrl_snackbar_background_corner_radius:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 432
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 433
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 434
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 435
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 436
    return-object v2
.end method

.method private o()V
    .locals 3

    .prologue
    .line 440
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 441
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->n:Landroid/graphics/Rect;

    if-nez v1, :cond_2

    .line 442
    :cond_0
    sget-object v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->f:Ljava/lang/String;

    const-string/jumbo v1, "Unable to update margins because layout params are not MarginLayoutParams"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_1
    :goto_0
    return-void

    .line 446
    :cond_2
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->l:Landroid/view/View;

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->s:I

    .line 448
    :goto_1
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 449
    iget-object v2, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->n:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 450
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->n:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->p:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 451
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->n:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->q:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 452
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;->requestLayout()V

    .line 454
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 456
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;

    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 457
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;

    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 446
    :cond_3
    iget v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->o:I

    goto :goto_1
.end method

.method private p()Z
    .locals 1

    .prologue
    .line 462
    iget v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->r:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->k:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private q()Z
    .locals 2

    .prologue
    .line 466
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 467
    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;

    .line 468
    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->b()Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 467
    :goto_0
    return v0

    .line 468
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private r()V
    .locals 2

    .prologue
    .line 761
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 763
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->i()V

    .line 769
    :goto_0
    return-void

    .line 766
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;->setVisibility(I)V

    .line 767
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->j()V

    goto :goto_0
.end method

.method private s()I
    .locals 2

    .prologue
    .line 772
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 773
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;

    invoke-virtual {v1, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;->getLocationOnScreen([I)V

    .line 774
    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;

    invoke-virtual {v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private t()I
    .locals 2

    .prologue
    .line 779
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->h:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 780
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 781
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 782
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method private u()I
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 830
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->l:Landroid/view/View;

    if-nez v0, :cond_0

    .line 831
    const/4 v0, 0x0

    .line 842
    :goto_0
    return v0

    .line 834
    :cond_0
    new-array v0, v2, [I

    .line 835
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->l:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 836
    aget v0, v0, v3

    .line 838
    new-array v1, v2, [I

    .line 839
    iget-object v2, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->g:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 840
    aget v1, v1, v3

    iget-object v2, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->g:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    .line 842
    sub-int v0, v1, v0

    goto :goto_0
.end method

.method private v()V
    .locals 5

    .prologue
    const/4 v3, 0x2

    .line 874
    new-array v0, v3, [F

    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->a([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 875
    new-array v1, v3, [F

    fill-array-data v1, :array_1

    invoke-direct {p0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 877
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 878
    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 879
    const-wide/16 v0, 0x96

    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 880
    new-instance v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$2;

    invoke-direct {v0, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$2;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 887
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 888
    return-void

    .line 874
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 875
    :array_1
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private w()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 932
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->x()I

    move-result v0

    .line 933
    sget-boolean v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->d:Z

    if-eqz v1, :cond_0

    .line 934
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;

    invoke-static {v1, v0}, Landroidx/core/h/u;->e(Landroid/view/View;I)V

    .line 939
    :goto_0
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    .line 940
    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v0, v2, v4

    const/4 v3, 0x1

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 941
    sget-object v2, Lcom/google/android/material/a/a;->b:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 942
    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 943
    new-instance v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar$6;

    invoke-direct {v2, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$6;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 956
    new-instance v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar$7;

    invoke-direct {v2, p0, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$7;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 974
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 975
    return-void

    .line 936
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;->setTranslationY(F)V

    goto :goto_0
.end method

.method private x()I
    .locals 3

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;->getHeight()I

    move-result v1

    .line 1017
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1018
    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    .line 1019
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    .line 1021
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 474
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/google/android/material/a$h;->mtrl_layout_snackbar:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/google/android/material/a$h;->design_layout_snackbar:I

    goto :goto_0
.end method

.method public a(I)Lcom/google/android/material/snackbar/BaseTransientBottomBar;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .prologue
    .line 497
    iput p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->j:I

    .line 498
    return-object p0
.end method

.method protected b(I)V
    .locals 2

    .prologue
    .line 621
    invoke-static {}, Lcom/google/android/material/snackbar/b;->a()Lcom/google/android/material/snackbar/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->c:Lcom/google/android/material/snackbar/b$a;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/material/snackbar/b;->a(Lcom/google/android/material/snackbar/b$a;I)V

    .line 622
    return-void
.end method

.method protected b()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 483
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->h:Landroid/content/Context;

    sget-object v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->e:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 484
    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 485
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 486
    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 508
    iget v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->j:I

    return v0
.end method

.method final c(I)V
    .locals 1

    .prologue
    .line 1025
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1026
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->e(I)V

    .line 1031
    :goto_0
    return-void

    .line 1029
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->d(I)V

    goto :goto_0
.end method

.method public d()V
    .locals 3

    .prologue
    .line 612
    invoke-static {}, Lcom/google/android/material/snackbar/b;->a()Lcom/google/android/material/snackbar/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->c()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->c:Lcom/google/android/material/snackbar/b$a;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/snackbar/b;->a(ILcom/google/android/material/snackbar/b$a;)V

    .line 613
    return-void
.end method

.method d(I)V
    .locals 2

    .prologue
    .line 1047
    invoke-static {}, Lcom/google/android/material/snackbar/b;->a()Lcom/google/android/material/snackbar/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->c:Lcom/google/android/material/snackbar/b$a;

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/b;->a(Lcom/google/android/material/snackbar/b$a;)V

    .line 1048
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->t:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1051
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1052
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 1053
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->t:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$a;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$a;->a(Ljava/lang/Object;I)V

    .line 1052
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1057
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1058
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 1059
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1061
    :cond_1
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 617
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b(I)V

    .line 618
    return-void
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 673
    invoke-static {}, Lcom/google/android/material/snackbar/b;->a()Lcom/google/android/material/snackbar/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->c:Lcom/google/android/material/snackbar/b$a;

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/b;->e(Lcom/google/android/material/snackbar/b$a;)Z

    move-result v0

    return v0
.end method

.method protected g()Lcom/google/android/material/behavior/SwipeDismissBehavior;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/behavior/SwipeDismissBehavior",
            "<+",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 693
    new-instance v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;

    invoke-direct {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;-><init>()V

    return-object v0
.end method

.method final h()V
    .locals 2

    .prologue
    .line 697
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;

    new-instance v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$14;

    invoke-direct {v1, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$14;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;->setOnAttachStateChangeListener(Lcom/google/android/material/snackbar/BaseTransientBottomBar$c;)V

    .line 728
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 729
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 731
    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;

    if-eqz v1, :cond_0

    .line 732
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;

    invoke-direct {p0, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;)V

    .line 735
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->u()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->s:I

    .line 736
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->o()V

    .line 740
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;->setVisibility(I)V

    .line 741
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->g:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 744
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;

    invoke-static {v0}, Landroidx/core/h/u;->y(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 745
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->r()V

    .line 758
    :goto_0
    return-void

    .line 750
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;

    new-instance v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$15;

    invoke-direct {v1, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$15;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;->setOnLayoutChangeListener(Lcom/google/android/material/snackbar/BaseTransientBottomBar$d;)V

    goto :goto_0
.end method

.method i()V
    .locals 2

    .prologue
    .line 847
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;

    new-instance v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$17;

    invoke-direct {v1, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$17;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;->post(Ljava/lang/Runnable;)Z

    .line 863
    return-void
.end method

.method j()V
    .locals 2

    .prologue
    .line 1034
    invoke-static {}, Lcom/google/android/material/snackbar/b;->a()Lcom/google/android/material/snackbar/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->c:Lcom/google/android/material/snackbar/b$a;

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/b;->b(Lcom/google/android/material/snackbar/b$a;)V

    .line 1035
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->t:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1039
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 1040
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->t:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$a;

    invoke-virtual {v0, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$a;->a(Ljava/lang/Object;)V

    .line 1039
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1043
    :cond_0
    return-void
.end method

.method k()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1065
    .line 1066
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->v:Landroid/view/accessibility/AccessibilityManager;

    .line 1067
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v1

    .line 1068
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
