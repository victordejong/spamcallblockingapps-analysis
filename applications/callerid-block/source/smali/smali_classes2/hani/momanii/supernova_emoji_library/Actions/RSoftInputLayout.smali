.class public Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;
.super Landroid/view/ViewGroup;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout$d;
    }
.end annotation


# instance fields
.field b:Landroid/view/View;

.field c:Landroid/view/View;

.field d:I

.field e:I

.field f:Z

.field g:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout$d;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Z

.field private j:Ljava/lang/Runnable;

.field private k:Landroid/animation/ValueAnimator;

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->d:I

    iput p1, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->e:I

    iput-boolean p1, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->f:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->g:Ljava/util/HashSet;

    iput-boolean p1, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->h:Z

    new-instance v0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout$a;

    invoke-direct {v0, p0}, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout$a;-><init>(Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;)V

    iput-object v0, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->j:Ljava/lang/Runnable;

    iput-boolean p1, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->l:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->d:I

    iput p1, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->e:I

    iput-boolean p1, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->f:Z

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->g:Ljava/util/HashSet;

    iput-boolean p1, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->h:Z

    new-instance p2, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout$a;

    invoke-direct {p2, p0}, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout$a;-><init>(Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;)V

    iput-object p2, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->j:Ljava/lang/Runnable;

    iput-boolean p1, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->l:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->d:I

    iput p1, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->e:I

    iput-boolean p1, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->f:Z

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->g:Ljava/util/HashSet;

    iput-boolean p1, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->h:Z

    new-instance p2, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout$a;

    invoke-direct {p2, p0}, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout$a;-><init>(Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;)V

    iput-object p2, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->j:Ljava/lang/Runnable;

    iput-boolean p1, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->l:Z

    return-void
.end method

.method static synthetic a(Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;I)V
    .locals 0

    invoke-direct {p0, p1}, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->l(I)V

    return-void
.end method

.method static synthetic b(Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->k:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic c(Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->j:Ljava/lang/Runnable;

    return-object p0
.end method

.method private e(II)V
    .locals 2

    iget-object v0, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->k:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p1, v0, p2

    invoke-static {v0}, Landroid/animation/ObjectAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->k:Landroid/animation/ValueAnimator;

    new-array p2, v1, [I

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object p1, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->k:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->k:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->k:Landroid/animation/ValueAnimator;

    new-instance p2, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout$b;

    invoke-direct {p2, p0}, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout$b;-><init>(Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->k:Landroid/animation/ValueAnimator;

    new-instance p2, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout$c;

    invoke-direct {p2, p0}, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout$c;-><init>(Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->k:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private k(ZZI)V
    .locals 2

    iget-object v0, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->g:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout$d;

    invoke-interface {v1, p1, p2, p3}, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout$d;->a(ZZI)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private l(I)V
    .locals 1

    iget-boolean v0, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->f:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->e:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-lez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->f:Z

    iput p1, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->e:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method private n(I)V
    .locals 3

    iget-boolean v0, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->f:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->e:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->i()Z

    move-result v0

    iget v1, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->e:I

    if-lez p1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->f:Z

    iput p1, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->e:I

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->g()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    iget-boolean v0, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->l:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, v1}, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->e(II)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->j:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method


# virtual methods
.method public d(Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout$d;)V
    .locals 1

    iget-object v0, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->g:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public f()V
    .locals 1

    iget-boolean v0, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->h:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->f:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->n(I)V

    :cond_1
    return-void
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result p1

    iget-object v0, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->j:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return p1
.end method

.method public g()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public getKeyboardHeight()I
    .locals 1

    iget v0, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->d:I

    return v0
.end method

.method public getPaddingTop()I
    .locals 1

    iget-boolean v0, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method public getShowEmojiHeight()I
    .locals 1

    iget v0, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->e:I

    return v0
.end method

.method public getSoftKeyboardHeight()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->f:Z

    return v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->h:Z

    return v0
.end method

.method public j()Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0}, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->getSoftKeyboardHeight()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/16 v0, 0x64

    if-le v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()V
    .locals 1

    iget v0, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->d:I

    invoke-direct {p0, v0}, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->n(I)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->b:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->c:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    invoke-virtual {p0, v0}, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->setClipToPadding(Z)V

    iget v0, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->d:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x437a0000    # 250.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->d:I

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u5fc5\u987b\u542b\u67092\u4e2a\u5b50View."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-virtual {p0}, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->getPaddingTop()I

    move-result p1

    add-int/2addr p3, p1

    iget-object p5, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->b:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p5, p2, p3, p4, v0}, Landroid/view/View;->layout(IIII)V

    iget-object p3, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->c:Landroid/view/View;

    iget-object p5, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->b:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    add-int/2addr p5, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p3, p2, p5, p4, p1}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p0}, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->j()Z

    move-result v1

    iput-boolean v1, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->h:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->getSoftKeyboardHeight()I

    move-result v1

    iput v1, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->d:I

    iput-boolean v2, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->f:Z

    :cond_0
    iget-boolean v1, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->f:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->getShowEmojiHeight()I

    move-result v1

    if-nez v1, :cond_1

    iget v2, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->d:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->getShowEmojiHeight()I

    move-result v2

    :cond_2
    :goto_0
    iget-boolean v1, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->h:Z

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    sub-int/2addr v0, v2

    :goto_1
    iget-object v1, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->b:Landroid/view/View;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v1, v4, v0}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->c:Landroid/view/View;

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    iget-object p1, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->j:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-boolean p1, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->f:Z

    iget-boolean p2, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->h:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->getSoftKeyboardHeight()I

    move-result p3

    goto :goto_0

    :cond_0
    iget p3, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->e:I

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->k(ZZI)V

    return-void
.end method

.method public setAnimToShow(Z)V
    .locals 0

    iput-boolean p1, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->l:Z

    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iput-boolean p1, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->i:Z

    return-void
.end method
