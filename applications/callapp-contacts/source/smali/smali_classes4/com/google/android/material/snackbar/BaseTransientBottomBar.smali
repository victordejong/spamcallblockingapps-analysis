.class public abstract Lcom/google/android/material/snackbar/BaseTransientBottomBar;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$a;,
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;,
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;,
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$b;,
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/google/android/material/snackbar/BaseTransientBottomBar<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final a:Landroid/os/Handler;

.field private static final d:Z

.field private static final e:[I

.field private static final f:Ljava/lang/String;


# instance fields
.field protected final b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

.field c:Lcom/google/android/material/snackbar/b$a;

.field private final g:Landroid/view/ViewGroup;

.field private final h:Landroid/content/Context;

.field private final i:Lcom/google/android/material/snackbar/a;

.field private j:I

.field private k:Z

.field private l:Landroid/view/View;

.field private m:Z

.field private final n:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final o:Ljava/lang/Runnable;

.field private p:Landroid/graphics/Rect;

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object<",
            "TB;>;>;"
        }
    .end annotation
.end field

.field private w:Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;

.field private final x:Landroid/view/accessibility/AccessibilityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 227
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x10

    if-lt v0, v3, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-gt v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->d:Z

    new-array v0, v1, [I

    .line 231
    sget v1, Lcom/google/android/material/a$b;->snackbarStyle:I

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->e:[I

    .line 233
    const-class v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->f:Ljava/lang/String;

    .line 236
    new-instance v0, Landroid/os/Handler;

    .line 238
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar$1;

    invoke-direct {v2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$1;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->a:Landroid/os/Handler;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Lcom/google/android/material/snackbar/a;)V
    .locals 4

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 266
    iput-boolean v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->m:Z

    .line 267
    new-instance v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$11;

    invoke-direct {v1, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$11;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    iput-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->n:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 279
    new-instance v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$12;

    invoke-direct {v1, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$12;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    iput-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->o:Ljava/lang/Runnable;

    .line 712
    new-instance v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$15;

    invoke-direct {v1, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$15;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    iput-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->c:Lcom/google/android/material/snackbar/b$a;

    if-eqz p2, :cond_6

    if-eqz p3, :cond_5

    if-eqz p4, :cond_4

    .line 371
    iput-object p2, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->g:Landroid/view/ViewGroup;

    .line 372
    iput-object p4, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->i:Lcom/google/android/material/snackbar/a;

    .line 373
    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->h:Landroid/content/Context;

    .line 375
    invoke-static {p1}, Lcom/google/android/material/internal/l;->a(Landroid/content/Context;)V

    .line 377
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p4

    .line 3490
    sget-object v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->e:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, -0x1

    .line 3491
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 3492
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v1, 0x1

    if-eq v3, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 3481
    sget v2, Lcom/google/android/material/a$h;->mtrl_layout_snackbar:I

    goto :goto_1

    :cond_1
    sget v2, Lcom/google/android/material/a$h;->design_layout_snackbar:I

    .line 381
    :goto_1
    invoke-virtual {p4, v2, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    iput-object p2, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    .line 382
    instance-of p4, p3, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    if-eqz p4, :cond_2

    .line 383
    move-object p4, p3

    check-cast p4, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    .line 4269
    iget v0, p2, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->d:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_2

    .line 5074
    iget-object v2, p4, Lcom/google/android/material/snackbar/SnackbarContentLayout;->b:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getCurrentTextColor()I

    move-result v2

    .line 5075
    sget v3, Lcom/google/android/material/a$b;->colorSurface:I

    .line 6053
    invoke-static {p4, v3}, Lcom/google/android/material/h/b;->a(Landroid/view/View;I)I

    move-result v3

    .line 5077
    invoke-static {v3, v2, v0}, Lcom/google/android/material/b/a;->a(IIF)I

    move-result v0

    .line 5078
    iget-object p4, p4, Lcom/google/android/material/snackbar/SnackbarContentLayout;->b:Landroid/widget/Button;

    invoke-virtual {p4, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 386
    :cond_2
    invoke-virtual {p2, p3}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->addView(Landroid/view/View;)V

    .line 388
    invoke-virtual {p2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 389
    instance-of p4, p3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p4, :cond_3

    .line 390
    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 391
    new-instance p4, Landroid/graphics/Rect;

    iget v0, p3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, p3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget p3, p3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-direct {p4, v0, v2, v3, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p4, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->p:Landroid/graphics/Rect;

    .line 399
    :cond_3
    invoke-static {p2}, Landroidx/core/view/v;->h(Landroid/view/View;)V

    .line 400
    invoke-static {p2, v1}, Landroidx/core/view/v;->c(Landroid/view/View;I)V

    .line 403
    invoke-static {p2, v1}, Landroidx/core/view/v;->b(Landroid/view/View;Z)V

    .line 404
    new-instance p3, Lcom/google/android/material/snackbar/BaseTransientBottomBar$13;

    invoke-direct {p3, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$13;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    invoke-static {p2, p3}, Landroidx/core/view/v;->a(Landroid/view/View;Landroidx/core/view/r;)V

    .line 421
    new-instance p3, Lcom/google/android/material/snackbar/BaseTransientBottomBar$14;

    invoke-direct {p3, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$14;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    invoke-static {p2, p3}, Landroidx/core/view/v;->a(Landroid/view/View;Landroidx/core/view/a;)V

    const-string p2, "accessibility"

    .line 443
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->x:Landroid/view/accessibility/AccessibilityManager;

    return-void

    .line 368
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Transient bottom bar must have non-null callback"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 365
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Transient bottom bar must have non-null content"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 362
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Transient bottom bar must have non-null parent"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Lcom/google/android/material/snackbar/a;)V
    .locals 1

    .line 353
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Lcom/google/android/material/snackbar/a;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/snackbar/BaseTransientBottomBar;I)I
    .locals 0

    .line 95
    iput p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->u:I

    return p1
.end method

.method private varargs a([F)Landroid/animation/ValueAnimator;
    .locals 1

    .line 946
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 947
    sget-object v0, Lcom/google/android/material/a/a;->a:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 948
    new-instance v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$5;

    invoke-direct {v0, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$5;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)Z
    .locals 0

    .line 95
    iget-boolean p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->m:Z

    return p0
.end method

.method static synthetic b(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)I
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->m()I

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/google/android/material/snackbar/BaseTransientBottomBar;I)I
    .locals 0

    .line 95
    iput p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->q:I

    return p1
.end method

.method static synthetic c(Lcom/google/android/material/snackbar/BaseTransientBottomBar;I)I
    .locals 0

    .line 95
    iput p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->r:I

    return p1
.end method

.method static synthetic c(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->k()V

    return-void
.end method

.method static synthetic d(Lcom/google/android/material/snackbar/BaseTransientBottomBar;I)I
    .locals 0

    .line 95
    iput p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->s:I

    return p1
.end method

.method static synthetic d(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)Landroid/content/Context;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->h:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)I
    .locals 1

    .line 11817
    iget-object p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->h:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 11818
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 11819
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 11820
    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0
.end method

.method static synthetic e(Lcom/google/android/material/snackbar/BaseTransientBottomBar;I)I
    .locals 0

    .line 95
    iput p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->t:I

    return p1
.end method

.method static synthetic f(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)I
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 12811
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v1, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getLocationOnScreen([I)V

    const/4 v1, 0x1

    .line 12812
    aget v0, v0, v1

    iget-object p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getHeight()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method static synthetic g(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)I
    .locals 0

    .line 95
    iget p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->t:I

    return p0
.end method

.method static synthetic h(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->l()V

    return-void
.end method

.method static synthetic i()Ljava/lang/String;
    .locals 1

    .line 95
    sget-object v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 12916
    fill-array-data v1, :array_0

    invoke-direct {p0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->a([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-array v2, v0, [F

    .line 12917
    fill-array-data v2, :array_1

    .line 12959
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 12960
    sget-object v3, Lcom/google/android/material/a/a;->d:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 12961
    new-instance v3, Lcom/google/android/material/snackbar/BaseTransientBottomBar$6;

    invoke-direct {v3, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$6;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 12919
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v1, v0, v4

    const/4 v1, 0x1

    aput-object v2, v0, v1

    .line 12920
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0x96

    .line 12921
    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 12922
    new-instance v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$3;

    invoke-direct {v0, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$3;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 12929
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic j(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .locals 5

    .line 12974
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->o()I

    move-result v0

    .line 12975
    sget-boolean v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->d:Z

    if-eqz v1, :cond_0

    .line 12976
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-static {v1, v0}, Landroidx/core/view/v;->e(Landroid/view/View;I)V

    goto :goto_0

    .line 12978
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setTranslationY(F)V

    .line 12981
    :goto_0
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v4, 0x1

    aput v3, v2, v4

    .line 12982
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 12983
    sget-object v2, Lcom/google/android/material/a/a;->b:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0xfa

    .line 12984
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 12985
    new-instance v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar$7;

    invoke-direct {v2, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$7;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 12998
    new-instance v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar$8;

    invoke-direct {v2, p0, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$8;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 13016
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method static synthetic j()Z
    .locals 1

    .line 95
    sget-boolean v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->d:Z

    return v0
.end method

.method static synthetic k(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)Lcom/google/android/material/snackbar/a;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->i:Lcom/google/android/material/snackbar/a;

    return-object p0
.end method

.method private k()V
    .locals 4

    .line 447
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 448
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->p:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    goto :goto_3

    .line 453
    :cond_0
    iget-object v2, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->l:Landroid/view/View;

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->u:I

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->q:I

    .line 455
    :goto_0
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 456
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 457
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->p:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->r:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 458
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->p:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->s:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 459
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->requestLayout()V

    .line 461
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_4

    .line 6469
    iget v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->t:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->k:Z

    if-nez v0, :cond_3

    .line 6473
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 6474
    instance-of v3, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$d;

    if-eqz v3, :cond_2

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$d;

    .line 6952
    iget-object v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$d;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 6475
    instance-of v0, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_4

    .line 463
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 464
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void

    .line 449
    :cond_5
    :goto_3
    sget-object v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->f:Ljava/lang/String;

    const-string v1, "Unable to update margins because layout params are not MarginLayoutParams"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private l()V
    .locals 2

    .line 797
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 799
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->n()V

    return-void

    .line 802
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 803
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setVisibility(I)V

    .line 805
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->g()V

    return-void
.end method

.method private m()I
    .locals 4

    .line 870
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->l:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 875
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v0, 0x1

    .line 876
    aget v2, v2, v0

    new-array v1, v1, [I

    .line 879
    iget-object v3, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->g:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 880
    aget v0, v1, v0

    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->g:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, v2

    return v0
.end method

.method private n()V
    .locals 2

    .line 887
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    new-instance v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$2;

    invoke-direct {v1, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$2;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private o()I
    .locals 3

    .line 1058
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getHeight()I

    move-result v0

    .line 1059
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1060
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    .line 1061
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method private p()Z
    .locals 2

    .line 1107
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->x:Landroid/view/accessibility/AccessibilityManager;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 1112
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1113
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 515
    iget v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->j:I

    return v0
.end method

.method public final a(I)Lcom/google/android/material/snackbar/BaseTransientBottomBar;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    const/4 p1, -0x2

    .line 504
    iput p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->j:I

    return-object p0
.end method

.method public final b()Landroid/view/View;
    .locals 1

    .line 643
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    return-object v0
.end method

.method protected final b(I)V
    .locals 2

    .line 657
    invoke-static {}, Lcom/google/android/material/snackbar/b;->a()Lcom/google/android/material/snackbar/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->c:Lcom/google/android/material/snackbar/b$a;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/material/snackbar/b;->a(Lcom/google/android/material/snackbar/b$a;I)V

    return-void
.end method

.method public c()V
    .locals 5

    .line 648
    invoke-static {}, Lcom/google/android/material/snackbar/b;->a()Lcom/google/android/material/snackbar/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->a()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->c:Lcom/google/android/material/snackbar/b$a;

    .line 7075
    iget-object v3, v0, Lcom/google/android/material/snackbar/b;->a:Ljava/lang/Object;

    monitor-enter v3

    .line 7076
    :try_start_0
    invoke-virtual {v0, v2}, Lcom/google/android/material/snackbar/b;->f(Lcom/google/android/material/snackbar/b$a;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7078
    iget-object v2, v0, Lcom/google/android/material/snackbar/b;->c:Lcom/google/android/material/snackbar/b$b;

    iput v1, v2, Lcom/google/android/material/snackbar/b$b;->b:I

    .line 7082
    iget-object v1, v0, Lcom/google/android/material/snackbar/b;->b:Landroid/os/Handler;

    iget-object v2, v0, Lcom/google/android/material/snackbar/b;->c:Lcom/google/android/material/snackbar/b$b;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 7083
    iget-object v1, v0, Lcom/google/android/material/snackbar/b;->c:Lcom/google/android/material/snackbar/b$b;

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/b;->a(Lcom/google/android/material/snackbar/b$b;)V

    .line 7084
    monitor-exit v3

    return-void

    .line 7085
    :cond_0
    invoke-virtual {v0, v2}, Lcom/google/android/material/snackbar/b;->g(Lcom/google/android/material/snackbar/b$a;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7087
    iget-object v2, v0, Lcom/google/android/material/snackbar/b;->d:Lcom/google/android/material/snackbar/b$b;

    iput v1, v2, Lcom/google/android/material/snackbar/b$b;->b:I

    goto :goto_0

    .line 7090
    :cond_1
    new-instance v4, Lcom/google/android/material/snackbar/b$b;

    invoke-direct {v4, v1, v2}, Lcom/google/android/material/snackbar/b$b;-><init>(ILcom/google/android/material/snackbar/b$a;)V

    iput-object v4, v0, Lcom/google/android/material/snackbar/b;->d:Lcom/google/android/material/snackbar/b$b;

    .line 7093
    :goto_0
    iget-object v1, v0, Lcom/google/android/material/snackbar/b;->c:Lcom/google/android/material/snackbar/b$b;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/google/android/material/snackbar/b;->c:Lcom/google/android/material/snackbar/b$b;

    const/4 v2, 0x4

    .line 7094
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/snackbar/b;->a(Lcom/google/android/material/snackbar/b$b;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7096
    monitor-exit v3

    return-void

    :cond_2
    const/4 v1, 0x0

    .line 7099
    iput-object v1, v0, Lcom/google/android/material/snackbar/b;->c:Lcom/google/android/material/snackbar/b$b;

    .line 7101
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/b;->b()V

    .line 7103
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final c(I)V
    .locals 4

    .line 1067
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 9908
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    .line 10257
    iget v0, v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->c:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    new-array v0, v1, [F

    .line 10933
    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->a([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x4b

    .line 10934
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 10935
    new-instance v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$4;

    invoke-direct {v1, p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$4;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 10942
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 11020
    :cond_0
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v1, v1, [I

    const/4 v3, 0x0

    aput v3, v1, v3

    .line 11021
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->o()I

    move-result v3

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 11022
    sget-object v1, Lcom/google/android/material/a/a;->b:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xfa

    .line 11023
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 11024
    new-instance v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$9;

    invoke-direct {v1, p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$9;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 11036
    new-instance p1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$10;

    invoke-direct {p1, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$10;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 11054
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 1071
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->h()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x3

    .line 653
    invoke-virtual {p0, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b(I)V

    return-void
.end method

.method public e()Z
    .locals 2

    .line 701
    invoke-static {}, Lcom/google/android/material/snackbar/b;->a()Lcom/google/android/material/snackbar/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->c:Lcom/google/android/material/snackbar/b$a;

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/b;->d(Lcom/google/android/material/snackbar/b$a;)Z

    move-result v0

    return v0
.end method

.method final f()V
    .locals 3

    .line 733
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    new-instance v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$16;

    invoke-direct {v1, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$16;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    .line 7252
    iput-object v1, v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$b;

    .line 764
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_3

    .line 765
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 767
    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$d;

    if-eqz v1, :cond_2

    .line 768
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$d;

    .line 7827
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->w:Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;

    if-nez v1, :cond_0

    .line 8729
    new-instance v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;

    invoke-direct {v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;-><init>()V

    .line 7830
    :cond_0
    instance-of v2, v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;

    if-eqz v2, :cond_1

    .line 7831
    move-object v2, v1

    check-cast v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;

    invoke-static {v2, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;->a(Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    .line 7834
    :cond_1
    new-instance v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar$18;

    invoke-direct {v2, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$18;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    .line 9117
    iput-object v2, v1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->b:Lcom/google/android/material/behavior/SwipeDismissBehavior$a;

    .line 7861
    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$d;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    .line 7864
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->l:Landroid/view/View;

    if-nez v1, :cond_2

    const/16 v1, 0x50

    .line 7865
    iput v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$d;->g:I

    .line 771
    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->m()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->u:I

    .line 772
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->k()V

    .line 776
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setVisibility(I)V

    .line 777
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->g:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 780
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-static {v0}, Landroidx/core/view/v;->B(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 781
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->l()V

    return-void

    .line 786
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    new-instance v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$17;

    invoke-direct {v1, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$17;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    .line 9247
    iput-object v1, v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar$c;

    return-void
.end method

.method final g()V
    .locals 2

    .line 1076
    invoke-static {}, Lcom/google/android/material/snackbar/b;->a()Lcom/google/android/material/snackbar/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->c:Lcom/google/android/material/snackbar/b$a;

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/b;->a(Lcom/google/android/material/snackbar/b$a;)V

    .line 1077
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->v:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1080
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1082
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->v:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method final h()V
    .locals 3

    .line 1089
    invoke-static {}, Lcom/google/android/material/snackbar/b;->a()Lcom/google/android/material/snackbar/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->c:Lcom/google/android/material/snackbar/b$a;

    .line 11121
    iget-object v2, v0, Lcom/google/android/material/snackbar/b;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 11122
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/b;->f(Lcom/google/android/material/snackbar/b$a;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 11124
    iput-object v1, v0, Lcom/google/android/material/snackbar/b;->c:Lcom/google/android/material/snackbar/b$b;

    .line 11125
    iget-object v1, v0, Lcom/google/android/material/snackbar/b;->d:Lcom/google/android/material/snackbar/b$b;

    if-eqz v1, :cond_0

    .line 11126
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/b;->b()V

    .line 11129
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1090
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->v:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1093
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1095
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->v:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1099
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1100
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 1101
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 11129
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
