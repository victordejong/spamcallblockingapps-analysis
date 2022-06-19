.class public Lcom/victor/loading/book/BookLoading;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/victor/loading/book/BookLoading$c;
    }
.end annotation


# instance fields
.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/victor/loading/book/PageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/victor/loading/book/BookLoading;->c(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/victor/loading/book/BookLoading;->c(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/victor/loading/book/BookLoading;->c(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/victor/loading/book/BookLoading;)V
    .locals 0

    invoke-direct {p0}, Lcom/victor/loading/book/BookLoading;->d()V

    return-void
.end method

.method private b()V
    .locals 5

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    new-instance v2, Lcom/victor/loading/book/PageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/victor/loading/book/PageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v3, Le/h/a/e;->app_name:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/victor/loading/book/BookLoading;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Le/h/a/d;->book_loading:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/victor/loading/book/BookLoading;->b:Ljava/util/ArrayList;

    new-instance p1, Lcom/victor/loading/book/BookLoading$c;

    invoke-direct {p1, p0}, Lcom/victor/loading/book/BookLoading$c;-><init>(Lcom/victor/loading/book/BookLoading;)V

    return-void
.end method

.method private d()V
    .locals 6

    iget-object v0, p0, Lcom/victor/loading/book/BookLoading;->b:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const-wide/16 v2, 0xc8

    invoke-direct {p0, v0, v2, v3}, Lcom/victor/loading/book/BookLoading;->e(Landroid/view/View;J)V

    iget-object v0, p0, Lcom/victor/loading/book/BookLoading;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const-wide/16 v2, 0x4b0

    invoke-direct {p0, v0, v2, v3}, Lcom/victor/loading/book/BookLoading;->e(Landroid/view/View;J)V

    iget-object v0, p0, Lcom/victor/loading/book/BookLoading;->b:Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const-wide/16 v2, 0x578

    invoke-direct {p0, v0, v2, v3}, Lcom/victor/loading/book/BookLoading;->e(Landroid/view/View;J)V

    :goto_0
    if-ltz v1, :cond_0

    iget-object v0, p0, Lcom/victor/loading/book/BookLoading;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const-wide/16 v2, 0xbb8

    rsub-int/lit8 v4, v1, 0x4

    mul-int/lit16 v4, v4, 0xc8

    div-int/lit8 v4, v4, 0x2

    int-to-long v4, v4

    add-long/2addr v4, v2

    invoke-direct {p0, v0, v4, v5}, Lcom/victor/loading/book/BookLoading;->e(Landroid/view/View;J)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private e(Landroid/view/View;J)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "rotationY"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p2, Lcom/victor/loading/book/BookLoading$a;

    invoke-direct {p2, p0, p1}, Lcom/victor/loading/book/BookLoading$a;-><init>(Lcom/victor/loading/book/BookLoading;Landroid/view/View;)V

    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p2, Lcom/victor/loading/book/BookLoading$b;

    invoke-direct {p2, p0, p1}, Lcom/victor/loading/book/BookLoading$b;-><init>(Lcom/victor/loading/book/BookLoading;Landroid/view/View;)V

    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        -0x3ccc0000    # -180.0f
    .end array-data
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-direct {p0}, Lcom/victor/loading/book/BookLoading;->b()V

    return-void
.end method
