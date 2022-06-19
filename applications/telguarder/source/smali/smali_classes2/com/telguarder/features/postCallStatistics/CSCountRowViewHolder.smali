.class public Lcom/telguarder/features/postCallStatistics/CSCountRowViewHolder;
.super Lcom/telguarder/features/postCallStatistics/CSRowViewHolder;
.source "CSCountRowViewHolder.java"


# instance fields
.field private mData:Lcom/telguarder/features/postCallStatistics/CSCountData;

.field private mIncomingCountView:Lcom/telguarder/features/postCallStatistics/CircleProgressView;

.field private mMissedCountView:Lcom/telguarder/features/postCallStatistics/CircleProgressView;

.field private mOutgoingCountView:Lcom/telguarder/features/postCallStatistics/CircleProgressView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 25
    invoke-direct {p0, p1}, Lcom/telguarder/features/postCallStatistics/CSRowViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0800bd

    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;

    iput-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSCountRowViewHolder;->mIncomingCountView:Lcom/telguarder/features/postCallStatistics/CircleProgressView;

    const v0, 0x7f0800bf

    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/telguarder/features/postCallStatistics/CircleProgressView;

    iput-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSCountRowViewHolder;->mOutgoingCountView:Lcom/telguarder/features/postCallStatistics/CircleProgressView;

    const v0, 0x7f0800be

    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/telguarder/features/postCallStatistics/CircleProgressView;

    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSCountRowViewHolder;->mMissedCountView:Lcom/telguarder/features/postCallStatistics/CircleProgressView;

    return-void
.end method

.method private updateCountValue(Lcom/telguarder/features/postCallStatistics/CircleProgressView;JJ)V
    .locals 4

    .line 62
    invoke-virtual {p1}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050100

    invoke-static {v0, v1}, Lcom/telguarder/helpers/common/AppUtil;->getColorResource(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->showTextView(Ljava/lang/String;IIZ)V

    .line 63
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/high16 v0, 0x43820000    # 260.0f

    .line 64
    invoke-virtual {p1, v0}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->setStartAngle(F)V

    long-to-float v0, p2

    sub-long/2addr p4, p2

    long-to-float p2, p4

    const/16 p3, 0x7d0

    .line 65
    invoke-virtual {p1, v0, p2, p3, v3}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->setProgressWithAnimation(FFIZ)V

    .line 66
    new-instance p2, Lcom/telguarder/features/postCallStatistics/CSCountRowViewHolder$1;

    invoke-direct {p2, p0, p1}, Lcom/telguarder/features/postCallStatistics/CSCountRowViewHolder$1;-><init>(Lcom/telguarder/features/postCallStatistics/CSCountRowViewHolder;Lcom/telguarder/features/postCallStatistics/CircleProgressView;)V

    invoke-virtual {p1, p2}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->addAnimationListener(Lcom/telguarder/features/postCallStatistics/CircleProgressView$ProgressAnimationListener;)V

    return-void
.end method


# virtual methods
.method public bindData(Lcom/telguarder/features/postCallStatistics/CSCountData;)V
    .locals 12

    .line 33
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSCountRowViewHolder;->mData:Lcom/telguarder/features/postCallStatistics/CSCountData;

    if-nez v0, :cond_1

    iget v0, p1, Lcom/telguarder/features/postCallStatistics/CSCountData;->incomingCount:I

    if-nez v0, :cond_0

    iget v0, p1, Lcom/telguarder/features/postCallStatistics/CSCountData;->missedCount:I

    if-nez v0, :cond_0

    iget v0, p1, Lcom/telguarder/features/postCallStatistics/CSCountData;->outgoingCount:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSCountRowViewHolder;->mData:Lcom/telguarder/features/postCallStatistics/CSCountData;

    .line 37
    iget p1, p1, Lcom/telguarder/features/postCallStatistics/CSCountData;->incomingCount:I

    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSCountRowViewHolder;->mData:Lcom/telguarder/features/postCallStatistics/CSCountData;

    iget v0, v0, Lcom/telguarder/features/postCallStatistics/CSCountData;->outgoingCount:I

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSCountRowViewHolder;->mData:Lcom/telguarder/features/postCallStatistics/CSCountData;

    iget v0, v0, Lcom/telguarder/features/postCallStatistics/CSCountData;->missedCount:I

    add-int/2addr p1, v0

    .line 38
    iget-object v1, p0, Lcom/telguarder/features/postCallStatistics/CSCountRowViewHolder;->mIncomingCountView:Lcom/telguarder/features/postCallStatistics/CircleProgressView;

    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSCountRowViewHolder;->mData:Lcom/telguarder/features/postCallStatistics/CSCountData;

    iget v0, v0, Lcom/telguarder/features/postCallStatistics/CSCountData;->incomingCount:I

    int-to-long v2, v0

    int-to-long v10, p1

    move-object v0, p0

    move-wide v4, v10

    invoke-direct/range {v0 .. v5}, Lcom/telguarder/features/postCallStatistics/CSCountRowViewHolder;->updateCountValue(Lcom/telguarder/features/postCallStatistics/CircleProgressView;JJ)V

    .line 39
    iget-object v5, p0, Lcom/telguarder/features/postCallStatistics/CSCountRowViewHolder;->mOutgoingCountView:Lcom/telguarder/features/postCallStatistics/CircleProgressView;

    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSCountRowViewHolder;->mData:Lcom/telguarder/features/postCallStatistics/CSCountData;

    iget p1, p1, Lcom/telguarder/features/postCallStatistics/CSCountData;->outgoingCount:I

    int-to-long v6, p1

    move-object v4, p0

    move-wide v8, v10

    invoke-direct/range {v4 .. v9}, Lcom/telguarder/features/postCallStatistics/CSCountRowViewHolder;->updateCountValue(Lcom/telguarder/features/postCallStatistics/CircleProgressView;JJ)V

    .line 40
    iget-object v5, p0, Lcom/telguarder/features/postCallStatistics/CSCountRowViewHolder;->mMissedCountView:Lcom/telguarder/features/postCallStatistics/CircleProgressView;

    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSCountRowViewHolder;->mData:Lcom/telguarder/features/postCallStatistics/CSCountData;

    iget p1, p1, Lcom/telguarder/features/postCallStatistics/CSCountData;->missedCount:I

    int-to-long v6, p1

    invoke-direct/range {v4 .. v9}, Lcom/telguarder/features/postCallStatistics/CSCountRowViewHolder;->updateCountValue(Lcom/telguarder/features/postCallStatistics/CircleProgressView;JJ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAttachToWindow()V
    .locals 1

    .line 52
    invoke-super {p0}, Lcom/telguarder/features/postCallStatistics/CSRowViewHolder;->onAttachToWindow()V

    .line 53
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendCallStatisticsCounterAction()V

    .line 54
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSCountRowViewHolder;->mIncomingCountView:Lcom/telguarder/features/postCallStatistics/CircleProgressView;

    invoke-virtual {v0}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->startAnimation()V

    .line 55
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSCountRowViewHolder;->mOutgoingCountView:Lcom/telguarder/features/postCallStatistics/CircleProgressView;

    invoke-virtual {v0}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->startAnimation()V

    .line 56
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSCountRowViewHolder;->mMissedCountView:Lcom/telguarder/features/postCallStatistics/CircleProgressView;

    invoke-virtual {v0}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->startAnimation()V

    return-void
.end method

.method public onDetachFromWindow()V
    .locals 0

    .line 46
    invoke-super {p0}, Lcom/telguarder/features/postCallStatistics/CSRowViewHolder;->onDetachFromWindow()V

    return-void
.end method
