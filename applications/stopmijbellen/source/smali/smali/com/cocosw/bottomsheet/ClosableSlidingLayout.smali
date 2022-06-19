.class Lcom/cocosw/bottomsheet/ClosableSlidingLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cocosw/bottomsheet/ClosableSlidingLayout$c;,
        Lcom/cocosw/bottomsheet/ClosableSlidingLayout$b;
    }
.end annotation


# instance fields
.field public final a:F

.field public b:Landroid/view/View;

.field public c:Z

.field public d:Ls0/c;

.field public e:Lcom/cocosw/bottomsheet/ClosableSlidingLayout$b;

.field public f:I

.field public g:I

.field public h:I

.field public i:Z

.field public j:F

.field public k:Z

.field public l:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->c:Z

    .line 3
    iput-boolean v0, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->k:Z

    .line 4
    new-instance p1, Lcom/cocosw/bottomsheet/ClosableSlidingLayout$c;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout$c;-><init>(Lcom/cocosw/bottomsheet/ClosableSlidingLayout;Lcom/cocosw/bottomsheet/ClosableSlidingLayout$a;)V

    const p2, 0x3f4ccccd    # 0.8f

    invoke-static {p0, p2, p1}, Ls0/c;->j(Landroid/view/ViewGroup;FLs0/c$c;)Ls0/c;

    move-result-object p1

    iput-object p1, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->d:Ls0/c;

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x43c80000    # 400.0f

    mul-float p1, p1, p2

    iput p1, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->a:F

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->d:Ls0/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ls0/c;->i(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lm0/v;->a:Ljava/util/WeakHashMap;

    .line 3
    invoke-static {p0}, Lm0/v$d;->k(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 3
    iget-object v1, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->b:Landroid/view/View;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v1, 0x3

    if-eq v0, v1, :cond_a

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto/16 :goto_3

    :cond_1
    const/high16 v4, -0x40800000    # -1.0f

    if-eqz v0, :cond_6

    const/4 v5, 0x2

    if-eq v0, v5, :cond_2

    goto :goto_2

    .line 4
    :cond_2
    iget v0, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->h:I

    if-ne v0, v3, :cond_3

    return v2

    .line 5
    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_4

    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0

    .line 6
    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    :goto_0
    cmpl-float v3, v0, v4

    if-nez v3, :cond_5

    return v2

    .line 7
    :cond_5
    iget v3, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->j:F

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->l:F

    .line 8
    iget-boolean v3, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->c:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->d:Ls0/c;

    .line 9
    iget v4, v3, Ls0/c;->b:I

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-lez v0, :cond_9

    .line 10
    iget-boolean v0, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->i:Z

    if-nez v0, :cond_9

    .line 11
    iput-boolean v1, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->i:Z

    .line 12
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Ls0/c;->b(Landroid/view/View;I)V

    goto :goto_2

    .line 13
    :cond_6
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->f:I

    .line 14
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->g:I

    .line 15
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->h:I

    .line 16
    iput-boolean v2, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->i:Z

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_7

    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_1

    .line 18
    :cond_7
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    :goto_1
    cmpl-float v1, v0, v4

    if-nez v1, :cond_8

    return v2

    .line 19
    :cond_8
    iput v0, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->j:F

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->l:F

    .line 21
    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->d:Ls0/c;

    invoke-virtual {v0, p1}, Ls0/c;->w(Landroid/view/MotionEvent;)Z

    .line 22
    iget-boolean p1, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->i:Z

    return p1

    .line 23
    :cond_a
    :goto_3
    iput v3, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->h:I

    .line 24
    iput-boolean v2, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->i:Z

    .line 25
    iget-boolean p1, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->k:Z

    if-eqz p1, :cond_b

    iget p1, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->l:F

    neg-float p1, p1

    iget-object v0, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->d:Ls0/c;

    .line 26
    iget v0, v0, Ls0/c;->b:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_b

    .line 27
    iget-object p1, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->e:Lcom/cocosw/bottomsheet/ClosableSlidingLayout$b;

    if-eqz p1, :cond_b

    .line 28
    check-cast p1, Lcom/cocosw/bottomsheet/c;

    .line 29
    iget-object p1, p1, Lcom/cocosw/bottomsheet/c;->a:Lcom/cocosw/bottomsheet/h;

    invoke-static {p1}, Lcom/cocosw/bottomsheet/h;->a(Lcom/cocosw/bottomsheet/h;)V

    .line 30
    :cond_b
    iget-object p1, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->d:Ls0/c;

    invoke-virtual {p1}, Ls0/c;->a()V

    :cond_c
    :goto_4
    return v2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->b:Landroid/view/View;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->c:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->d:Ls0/c;

    invoke-virtual {v0, p1}, Ls0/c;->p(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    const/4 p1, 0x1

    return p1

    .line 5
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method
