.class public Lcom/github/jdsjlzx/view/ArrowRefreshHeader;
.super Landroid/widget/LinearLayout;
.source "ArrowRefreshHeader.java"

# interfaces
.implements Lc/b/a/g/b;


# instance fields
.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/ImageView;

.field private f:Lcom/github/jdsjlzx/view/SimpleViewSwitcher;

.field private g:Landroid/widget/TextView;

.field private h:I

.field private i:Landroid/widget/TextView;

.field private j:Landroid/view/animation/Animation;

.field private k:Landroid/view/animation/Animation;

.field public l:I

.field private m:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->h:I

    .line 3
    invoke-direct {p0}, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->f()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->h:I

    .line 6
    invoke-direct {p0}, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->f()V

    return-void
.end method

.method private e(I)Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lc/b/a/c;->layout_indicator_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/jdsjlzx/progressindicator/AVLoadingIndicatorView;

    .line 2
    invoke-virtual {v0, p1}, Lcom/github/jdsjlzx/progressindicator/AVLoadingIndicatorView;->setIndicatorId(I)V

    const p1, -0x777778

    .line 3
    invoke-virtual {v0, p1}, Lcom/github/jdsjlzx/progressindicator/AVLoadingIndicatorView;->setIndicatorColor(I)V

    return-object v0
.end method

.method private f()V
    .locals 12

    .line 1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x0

    .line 2
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    invoke-virtual {p0, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v4, Lc/b/a/c;->listview_header:I

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->d:Landroid/widget/LinearLayout;

    .line 6
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x50

    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 8
    sget v0, Lc/b/a/b;->listview_header_arrow:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->e:Landroid/widget/ImageView;

    .line 9
    sget v0, Lc/b/a/b;->refresh_status_textview:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->g:Landroid/widget/TextView;

    .line 10
    sget v0, Lc/b/a/b;->listview_header_progressbar:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/jdsjlzx/view/SimpleViewSwitcher;

    iput-object v0, p0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->f:Lcom/github/jdsjlzx/view/SimpleViewSwitcher;

    const/16 v1, 0x16

    .line 11
    invoke-direct {p0, v1}, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->e(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/jdsjlzx/view/SimpleViewSwitcher;->setView(Landroid/view/View;)V

    .line 12
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v4, 0x0

    const/high16 v5, -0x3ccc0000    # -180.0f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->j:Landroid/view/animation/Animation;

    const-wide/16 v3, 0xb4

    .line 13
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 14
    iget-object v0, p0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->j:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 15
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v6, -0x3ccc0000    # -180.0f

    const/4 v7, 0x0

    const/4 v10, 0x1

    const/high16 v11, 0x3f000000    # 0.5f

    move-object v5, v0

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->k:Landroid/view/animation/Animation;

    .line 16
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 17
    iget-object v0, p0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->k:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 18
    sget v0, Lc/b/a/b;->last_refresh_time:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->i:Landroid/widget/TextView;

    .line 19
    invoke-virtual {p0, v2, v2}, Landroid/widget/LinearLayout;->measure(II)V

    .line 20
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->l:I

    const/high16 v0, 0x1060000

    .line 21
    iput v0, p0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->m:I

    return-void
.end method

.method private j(I)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    invoke-virtual {p0}, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->getVisibleHeight()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 3
    new-instance v0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader$c;

    invoke-direct {v0, p0}, Lcom/github/jdsjlzx/view/ArrowRefreshHeader$c;-><init>(Lcom/github/jdsjlzx/view/ArrowRefreshHeader;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public a(FF)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->getVisibleHeight()I

    move-result p2

    if-gtz p2, :cond_0

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-lez p2, :cond_2

    :cond_0
    float-to-int p1, p1

    .line 2
    invoke-virtual {p0}, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->getVisibleHeight()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->setVisibleHeight(I)V

    .line 3
    iget p1, p0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->h:I

    const/4 p2, 0x1

    if-gt p1, p2, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->getVisibleHeight()I

    move-result p1

    iget p2, p0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->l:I

    if-le p1, p2, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->g()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->h()V

    :cond_2
    :goto_0
    return-void
.end method

.method public b()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->getVisibleHeight()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->getVisibleHeight()I

    move-result v1

    iget v2, p0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->l:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-le v1, v2, :cond_0

    iget v1, p0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->h:I

    if-ge v1, v4, :cond_0

    .line 3
    invoke-virtual {p0, v4}, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->setState(I)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    iget v2, p0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->h:I

    if-ne v2, v4, :cond_1

    iget v2, p0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->l:I

    if-le v0, v2, :cond_1

    .line 5
    invoke-direct {p0, v2}, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->j(I)V

    .line 6
    :cond_1
    iget v0, p0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->h:I

    if-eq v0, v4, :cond_2

    .line 7
    invoke-direct {p0, v3}, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->j(I)V

    .line 8
    :cond_2
    iget v0, p0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->h:I

    if-ne v0, v4, :cond_3

    .line 9
    iget v0, p0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->l:I

    .line 10
    invoke-direct {p0, v0}, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->j(I)V

    :cond_3
    return v1
.end method

.method public c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->i:Landroid/widget/TextView;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v1}, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->d(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->setState(I)V

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/github/jdsjlzx/view/ArrowRefreshHeader$a;

    invoke-direct {v1, p0}, Lcom/github/jdsjlzx/view/ArrowRefreshHeader$a;-><init>(Lcom/github/jdsjlzx/view/ArrowRefreshHeader;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public d(Ljava/util/Date;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int p1, v0

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lc/b/a/d;->text_just:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v0, 0x3c

    if-lez p1, :cond_1

    if-ge p1, v0, :cond_1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lc/b/a/d;->text_seconds_ago:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 v1, 0xe10

    if-lt p1, v0, :cond_2

    if-ge p1, v1, :cond_2

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    div-int/2addr p1, v0

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lc/b/a/d;->text_minute_ago:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const v0, 0x15180

    if-lt p1, v1, :cond_3

    if-ge p1, v0, :cond_3

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lc/b/a/d;->text_hour_ago:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const v1, 0x278d00

    if-lt p1, v0, :cond_4

    if-ge p1, v1, :cond_4

    .line 6
    div-int/2addr p1, v0

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lc/b/a/d;->text_day_ago:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const v0, 0x1da9c00

    if-lt p1, v1, :cond_5

    if-ge p1, v0, :cond_5

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lc/b/a/d;->text_month_ago:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 9
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    div-int/2addr p1, v0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lc/b/a/d;->text_year_ago:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->setState(I)V

    return-void
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->h:I

    return v0
.end method

.method public getVisibleHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2
    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    return v0
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->setState(I)V

    return-void
.end method

.method public i()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->j(I)V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/github/jdsjlzx/view/ArrowRefreshHeader$b;

    invoke-direct {v1, p0}, Lcom/github/jdsjlzx/view/ArrowRefreshHeader$b;-><init>(Lcom/github/jdsjlzx/view/ArrowRefreshHeader;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setArrowImageView(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setHintTextColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->m:I

    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->f:Lcom/github/jdsjlzx/view/SimpleViewSwitcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/github/jdsjlzx/progressindicator/AVLoadingIndicatorView;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->f:Lcom/github/jdsjlzx/view/SimpleViewSwitcher;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/jdsjlzx/progressindicator/AVLoadingIndicatorView;

    .line 3
    invoke-virtual {v0, p1}, Lcom/github/jdsjlzx/progressindicator/AVLoadingIndicatorView;->setIndicatorColor(I)V

    :cond_0
    return-void
.end method

.method public setProgressStyle(I)V
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1
    new-instance p1, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x1010077

    invoke-direct {p1, v0, v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    iget-object v0, p0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->f:Lcom/github/jdsjlzx/view/SimpleViewSwitcher;

    invoke-virtual {v0, p1}, Lcom/github/jdsjlzx/view/SimpleViewSwitcher;->setView(Landroid/view/View;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->f:Lcom/github/jdsjlzx/view/SimpleViewSwitcher;

    invoke-direct {p0, p1}, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->e(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/github/jdsjlzx/view/SimpleViewSwitcher;->setView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public setState(I)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->h:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x4

    if-ne p1, v2, :cond_1

    .line 2
    iget-object v4, p0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->e:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->clearAnimation()V

    .line 3
    iget-object v4, p0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->e:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v3, p0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->f:Lcom/github/jdsjlzx/view/SimpleViewSwitcher;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5
    iget v0, p0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->l:I

    invoke-direct {p0, v0}, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->j(I)V

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    .line 6
    iget-object v0, p0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->f:Lcom/github/jdsjlzx/view/SimpleViewSwitcher;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v4, p0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->e:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->f:Lcom/github/jdsjlzx/view/SimpleViewSwitcher;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->m:I

    invoke-static {v3, v4}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    if-eq p1, v0, :cond_5

    if-eq p1, v2, :cond_4

    if-eq p1, v1, :cond_3

    goto :goto_1

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->g:Landroid/widget/TextView;

    sget v1, Lc/b/a/d;->refresh_done:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->g:Landroid/widget/TextView;

    sget v1, Lc/b/a/d;->refreshing:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 13
    :cond_5
    iget v1, p0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->h:I

    if-eq v1, v0, :cond_9

    .line 14
    iget-object v0, p0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 15
    iget-object v0, p0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->e:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->j:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 16
    iget-object v0, p0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->g:Landroid/widget/TextView;

    sget v1, Lc/b/a/d;->listview_header_hint_release:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 17
    :cond_6
    iget v1, p0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->h:I

    if-ne v1, v0, :cond_7

    .line 18
    iget-object v0, p0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->e:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->k:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 19
    :cond_7
    iget v0, p0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->h:I

    if-ne v0, v2, :cond_8

    .line 20
    iget-object v0, p0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 21
    :cond_8
    iget-object v0, p0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->g:Landroid/widget/TextView;

    sget v1, Lc/b/a/d;->listview_header_hint_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 22
    :cond_9
    :goto_1
    iput p1, p0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->h:I

    return-void
.end method

.method public setViewBackgroundColor(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    return-void
.end method

.method public setVisibleHeight(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 3
    iget-object p1, p0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
