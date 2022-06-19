.class public Lcom/callapp/contacts/widget/RetractableViewImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/widget/RetractableView;


# instance fields
.field private final a:Landroid/animation/ValueAnimator;

.field private final b:Landroid/animation/ValueAnimator;

.field private final c:Landroid/view/View;

.field private d:Landroid/animation/Animator$AnimatorListener;

.field private e:Landroid/animation/Animator$AnimatorListener;

.field private f:I

.field private g:I

.field private h:I

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    .line 16
    iput v0, p0, Lcom/callapp/contacts/widget/RetractableViewImpl;->f:I

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/callapp/contacts/widget/RetractableViewImpl;->g:I

    .line 18
    iput v0, p0, Lcom/callapp/contacts/widget/RetractableViewImpl;->h:I

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/callapp/contacts/widget/RetractableViewImpl;->i:Z

    .line 22
    iput-object p1, p0, Lcom/callapp/contacts/widget/RetractableViewImpl;->c:Landroid/view/View;

    .line 24
    invoke-static {p1}, Lcom/callapp/contacts/widget/RetractableViewImpl;->a(Landroid/view/View;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/widget/RetractableViewImpl;->a:Landroid/animation/ValueAnimator;

    .line 25
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 26
    new-instance v1, Lcom/callapp/contacts/widget/RetractableViewImpl$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/widget/RetractableViewImpl$1;-><init>(Lcom/callapp/contacts/widget/RetractableViewImpl;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 58
    invoke-static {p1}, Lcom/callapp/contacts/widget/RetractableViewImpl;->a(Landroid/view/View;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/widget/RetractableViewImpl;->b:Landroid/animation/ValueAnimator;

    .line 59
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 60
    new-instance v0, Lcom/callapp/contacts/widget/RetractableViewImpl$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/widget/RetractableViewImpl$2;-><init>(Lcom/callapp/contacts/widget/RetractableViewImpl;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/RetractableViewImpl;)Landroid/animation/Animator$AnimatorListener;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/callapp/contacts/widget/RetractableViewImpl;->d:Landroid/animation/Animator$AnimatorListener;

    return-object p0
.end method

.method private static a(Landroid/view/View;)Landroid/animation/ValueAnimator;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 187
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 188
    new-instance v1, Lcom/callapp/contacts/widget/RetractableViewImpl$3;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/widget/RetractableViewImpl$3;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v1, 0xfa

    .line 196
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method static synthetic a(Landroid/view/View;I)V
    .locals 0

    .line 9
    invoke-static {p0, p1}, Lcom/callapp/contacts/widget/RetractableViewImpl;->b(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/widget/RetractableViewImpl;)Landroid/animation/Animator$AnimatorListener;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/callapp/contacts/widget/RetractableViewImpl;->e:Landroid/animation/Animator$AnimatorListener;

    return-object p0
.end method

.method private static b(Landroid/view/View;I)V
    .locals 1

    .line 201
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 202
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 203
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 106
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/RetractableViewImpl;->a(Z)V

    return-void
.end method

.method public final a(II)V
    .locals 2

    .line 92
    iget v0, p0, Lcom/callapp/contacts/widget/RetractableViewImpl;->f:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/callapp/contacts/widget/RetractableViewImpl;->i:Z

    if-eqz v0, :cond_0

    if-eq p1, p2, :cond_0

    const/4 p2, 0x0

    .line 93
    iput-boolean p2, p0, Lcom/callapp/contacts/widget/RetractableViewImpl;->i:Z

    .line 94
    iput p1, p0, Lcom/callapp/contacts/widget/RetractableViewImpl;->g:I

    :cond_0
    return-void
.end method

.method public final declared-synchronized a(Z)V
    .locals 3

    monitor-enter p0

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/widget/RetractableViewImpl;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    if-eqz p1, :cond_1

    .line 155
    iget-object p1, p0, Lcom/callapp/contacts/widget/RetractableViewImpl;->d:Landroid/animation/Animator$AnimatorListener;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 156
    invoke-interface {p1, v0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 157
    iget-object p1, p0, Lcom/callapp/contacts/widget/RetractableViewImpl;->d:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {p1, v0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 159
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/widget/RetractableViewImpl;->c:Landroid/view/View;

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/RetractableViewImpl;->getExpandMaxHeight()I

    move-result v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/widget/RetractableViewImpl;->b(Landroid/view/View;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 162
    :cond_1
    :try_start_1
    iget-object p1, p0, Lcom/callapp/contacts/widget/RetractableViewImpl;->a:Landroid/animation/ValueAnimator;

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/callapp/contacts/widget/RetractableViewImpl;->c:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/RetractableViewImpl;->getExpandMaxHeight()I

    move-result v2

    aput v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 163
    iget-object p1, p0, Lcom/callapp/contacts/widget/RetractableViewImpl;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    .line 116
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/RetractableViewImpl;->b(Z)V

    return-void
.end method

.method public final declared-synchronized b(Z)V
    .locals 4

    monitor-enter p0

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/widget/RetractableViewImpl;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 169
    iget-object v0, p0, Lcom/callapp/contacts/widget/RetractableViewImpl;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez p1, :cond_1

    .line 171
    iget p1, p0, Lcom/callapp/contacts/widget/RetractableViewImpl;->h:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/callapp/contacts/widget/RetractableViewImpl;->b:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput p1, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 180
    iget-object p1, p0, Lcom/callapp/contacts/widget/RetractableViewImpl;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    monitor-exit p0

    return-void

    .line 172
    :cond_1
    :goto_0
    :try_start_1
    iget-object p1, p0, Lcom/callapp/contacts/widget/RetractableViewImpl;->e:Landroid/animation/Animator$AnimatorListener;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 173
    invoke-interface {p1, v0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 174
    iget-object p1, p0, Lcom/callapp/contacts/widget/RetractableViewImpl;->e:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {p1, v0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 176
    :cond_2
    iget-object p1, p0, Lcom/callapp/contacts/widget/RetractableViewImpl;->c:Landroid/view/View;

    iget v0, p0, Lcom/callapp/contacts/widget/RetractableViewImpl;->h:I

    invoke-static {p1, v0}, Lcom/callapp/contacts/widget/RetractableViewImpl;->b(Landroid/view/View;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    .line 125
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/RetractableViewImpl;->b(Z)V

    return-void
.end method

.method public getExpandMaxHeight()I
    .locals 2

    .line 144
    iget v0, p0, Lcom/callapp/contacts/widget/RetractableViewImpl;->f:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    return v0

    .line 148
    :cond_0
    iget v0, p0, Lcom/callapp/contacts/widget/RetractableViewImpl;->g:I

    return v0
.end method

.method public isCollapsed()Z
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/callapp/contacts/widget/RetractableViewImpl;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/callapp/contacts/widget/RetractableViewImpl;->h:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/callapp/contacts/widget/RetractableViewImpl;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public setCollapseListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/callapp/contacts/widget/RetractableViewImpl;->e:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method public setCollapseMinHeight(I)V
    .locals 0

    .line 140
    iput p1, p0, Lcom/callapp/contacts/widget/RetractableViewImpl;->h:I

    return-void
.end method

.method public setExpandListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/callapp/contacts/widget/RetractableViewImpl;->d:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method public setExpandMaxHeight(I)V
    .locals 0

    .line 100
    iput p1, p0, Lcom/callapp/contacts/widget/RetractableViewImpl;->f:I

    .line 101
    iget-object p1, p0, Lcom/callapp/contacts/widget/RetractableViewImpl;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method
