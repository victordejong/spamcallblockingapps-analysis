.class public Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;
.super Lcom/telguarder/features/postCallStatistics/CSRowViewHolder;
.source "CSDurRowViewHolder.java"


# static fields
.field private static final STATISTICS_ANIMATION_DURATION:I = 0x5dc


# instance fields
.field private isVisible:Z

.field private mCurrentCallAnimator:Landroid/animation/ValueAnimator;

.field private mCurrentCallDurAnimEnded:Z

.field private mData:Lcom/telguarder/features/postCallStatistics/CSDurData;

.field private mDurationValueText:Landroid/widget/TextView;

.field private mIncomingProgressAnimEnded:Z

.field private mIncomingProgressAnimator:Landroid/animation/ObjectAnimator;

.field private mIncomingProgressTextAnimEnded:Z

.field private mIncomingProgressTextAnimator:Landroid/animation/ValueAnimator;

.field private mIncomingTotalProgress:Landroid/widget/ProgressBar;

.field private mIncomingTotalText:Landroid/widget/TextView;

.field private mOutgoingProgressAnimator:Landroid/animation/ObjectAnimator;

.field private mOutgoingProgressTextAnimEnded:Z

.field private mOutgoingProgressTextAnimator:Landroid/animation/ValueAnimator;

.field private mOutgoingProgresstAnimEnded:Z

.field private mOutgoingTotalProgress:Landroid/widget/ProgressBar;

.field private mOutgoingTotalText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 3

    .line 51
    invoke-direct {p0, p1}, Lcom/telguarder/features/postCallStatistics/CSRowViewHolder;-><init>(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->mCurrentCallDurAnimEnded:Z

    .line 38
    iput-boolean v0, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->mOutgoingProgresstAnimEnded:Z

    .line 39
    iput-boolean v0, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->mIncomingProgressAnimEnded:Z

    .line 40
    iput-boolean v0, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->mOutgoingProgressTextAnimEnded:Z

    .line 41
    iput-boolean v0, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->mIncomingProgressTextAnimEnded:Z

    .line 47
    iput-boolean v0, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->isVisible:Z

    const v0, 0x7f08010d

    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->mDurationValueText:Landroid/widget/TextView;

    const v0, 0x7f0801d5

    .line 53
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->mOutgoingTotalText:Landroid/widget/TextView;

    const v0, 0x7f080146

    .line 54
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->mIncomingTotalText:Landroid/widget/TextView;

    const v0, 0x7f0801d4

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->mOutgoingTotalProgress:Landroid/widget/ProgressBar;

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f05010f

    invoke-static {v1, v2}, Lcom/telguarder/helpers/common/AppUtil;->getColorResource(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->setProgressBarColor(Landroid/widget/ProgressBar;I)V

    const v0, 0x7f080145

    .line 57
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->mIncomingTotalProgress:Landroid/widget/ProgressBar;

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f05010e

    invoke-static {p1, v1}, Lcom/telguarder/helpers/common/AppUtil;->getColorResource(Landroid/content/Context;I)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->setProgressBarColor(Landroid/widget/ProgressBar;I)V

    return-void
.end method

.method static synthetic access$002(Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->mCurrentCallDurAnimEnded:Z

    return p1
.end method

.method static synthetic access$100(Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;)Landroid/widget/ProgressBar;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->mOutgoingTotalProgress:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$202(Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->mOutgoingProgresstAnimEnded:Z

    return p1
.end method

.method static synthetic access$300(Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;)Landroid/widget/ProgressBar;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->mIncomingTotalProgress:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$402(Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->mIncomingProgressAnimEnded:Z

    return p1
.end method

.method static synthetic access$500(Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->mOutgoingTotalText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$602(Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->mOutgoingProgressTextAnimEnded:Z

    return p1
.end method

.method static synthetic access$700(Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->mIncomingTotalText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$802(Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->mIncomingProgressTextAnimEnded:Z

    return p1
.end method

.method private getTimeValueText(J)Ljava/lang/String;
    .locals 6

    const-wide/16 v0, 0x3c

    const-string v2, " "

    const-wide/32 v3, 0x8ca0

    cmp-long v5, p1, v3

    if-lez v5, :cond_0

    .line 203
    div-long/2addr p1, v0

    const-wide/16 v0, 0x18

    div-long/2addr p1, v0

    long-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 204
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/telguarder/ApplicationObject;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f100045

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/16 v3, 0x258

    cmp-long v5, p1, v3

    if-lez v5, :cond_1

    .line 206
    div-long/2addr p1, v0

    long-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 207
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/telguarder/ApplicationObject;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f100047

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 209
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/telguarder/ApplicationObject;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f100049

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private setProgressAnimate(Landroid/widget/ProgressBar;I)Landroid/animation/ObjectAnimator;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 150
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    mul-int/lit8 p2, p2, 0x64

    const/4 v1, 0x1

    aput p2, v0, v1

    const-string p2, "progress"

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-wide/16 v0, 0x5dc

    .line 151
    invoke-virtual {p2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 152
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 153
    new-instance v0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder$2;

    invoke-direct {v0, p0, p1}, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder$2;-><init>(Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;Landroid/widget/ProgressBar;)V

    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p2
.end method

.method private setProgressBarColor(Landroid/widget/ProgressBar;I)V
    .locals 2

    .line 97
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 98
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_0
    return-void
.end method

.method private setProgressTextAnimate(Landroid/widget/TextView;I)Landroid/animation/ValueAnimator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 174
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    const-wide/16 v0, 0x5dc

    .line 175
    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 176
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 177
    new-instance v0, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSDurRowViewHolder$e6PIY-8237i1LR7iU11eWq1EqS4;

    invoke-direct {v0, p0, p1}, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSDurRowViewHolder$e6PIY-8237i1LR7iU11eWq1EqS4;-><init>(Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;Landroid/widget/TextView;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 181
    new-instance v0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder$3;

    invoke-direct {v0, p0, p1}, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder$3;-><init>(Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;Landroid/widget/TextView;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p2
.end method

.method private showCallDurationHistory(JJ)V
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    cmp-long v3, p3, v0

    if-lez v3, :cond_0

    add-long v3, p1, p3

    goto :goto_0

    .line 135
    :cond_0
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    :goto_0
    const-wide/16 v5, 0x64

    mul-long v3, v3, v5

    if-lez v2, :cond_1

    .line 137
    iget-object v2, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->mOutgoingTotalProgress:Landroid/widget/ProgressBar;

    long-to-int v5, v3

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 138
    iget-object v2, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->mOutgoingTotalProgress:Landroid/widget/ProgressBar;

    long-to-int p2, p1

    invoke-direct {p0, v2, p2}, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->setProgressAnimate(Landroid/widget/ProgressBar;I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->mOutgoingProgressAnimator:Landroid/animation/ObjectAnimator;

    .line 139
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->mOutgoingTotalText:Landroid/widget/TextView;

    invoke-direct {p0, p1, p2}, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->setProgressTextAnimate(Landroid/widget/TextView;I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->mOutgoingProgressTextAnimator:Landroid/animation/ValueAnimator;

    :cond_1
    cmp-long p1, p3, v0

    if-lez p1, :cond_2

    .line 142
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->mIncomingTotalProgress:Landroid/widget/ProgressBar;

    long-to-int p2, v3

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 143
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->mIncomingTotalProgress:Landroid/widget/ProgressBar;

    long-to-int p2, p3

    invoke-direct {p0, p1, p2}, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->setProgressAnimate(Landroid/widget/ProgressBar;I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->mIncomingProgressAnimator:Landroid/animation/ObjectAnimator;

    .line 144
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->mIncomingTotalText:Landroid/widget/TextView;

    invoke-direct {p0, p1, p2}, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->setProgressTextAnimate(Landroid/widget/TextView;I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->mIncomingProgressTextAnimator:Landroid/animation/ValueAnimator;

    :cond_2
    return-void
.end method

.method private showCurrentCallDuration(J)V
    .locals 4

    .line 106
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->mDurationValueText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->mData:Lcom/telguarder/features/postCallStatistics/CSDurData;

    iget v1, v1, Lcom/telguarder/features/postCallStatistics/CSDurData;->mCallType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->mDurationValueText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f05010f

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->mDurationValueText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f05010e

    :goto_0
    invoke-static {v1, v3}, Lcom/telguarder/helpers/common/AppUtil;->getColorResource(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    new-array v0, v2, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v1, 0x1

    long-to-int p2, p1

    aput p2, v0, v1

    .line 107
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->mCurrentCallAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x5dc

    .line 108
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 109
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->mCurrentCallAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 110
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->mCurrentCallAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSDurRowViewHolder$kWcY_Be8e9eEw3DqZ-eQNGP_tJE;

    invoke-direct {p2, p0}, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSDurRowViewHolder$kWcY_Be8e9eEw3DqZ-eQNGP_tJE;-><init>(Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 119
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->mCurrentCallAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder$1;

    invoke-direct {p2, p0}, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder$1;-><init>(Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method


# virtual methods
.method public bindData(Lcom/telguarder/features/postCallStatistics/CSDurData;)V
    .locals 4

    .line 63
    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->mData:Lcom/telguarder/features/postCallStatistics/CSDurData;

    .line 64
    iget-wide v0, p1, Lcom/telguarder/features/postCallStatistics/CSDurData;->mDuration:J

    invoke-direct {p0, v0, v1}, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->showCurrentCallDuration(J)V

    .line 65
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->mData:Lcom/telguarder/features/postCallStatistics/CSDurData;

    iget-wide v0, p1, Lcom/telguarder/features/postCallStatistics/CSDurData;->mMinutesOut:J

    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->mData:Lcom/telguarder/features/postCallStatistics/CSDurData;

    iget-wide v2, p1, Lcom/telguarder/features/postCallStatistics/CSDurData;->mMinutesIn:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->showCallDurationHistory(JJ)V

    .line 66
    iget-boolean p1, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->isVisible:Z

    if-eqz p1, :cond_4

    .line 67
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->mCurrentCallAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 68
    :cond_0
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->mIncomingProgressAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 69
    :cond_1
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->mIncomingProgressTextAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 70
    :cond_2
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->mOutgoingProgressAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 71
    :cond_3
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->mOutgoingProgressTextAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_4
    return-void
.end method

.method public synthetic lambda$setProgressTextAnimate$1$CSDurRowViewHolder(Landroid/widget/TextView;Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 178
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long v0, p2

    .line 179
    invoke-direct {p0, v0, v1}, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->getTimeValueText(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic lambda$showCurrentCallDuration$0$CSDurRowViewHolder(Landroid/animation/ValueAnimator;)V
    .locals 17

    move-object/from16 v0, p0

    .line 111
    invoke-virtual/range {p1 .. p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x1

    const/16 v7, 0xe10

    if-ge v1, v7, :cond_0

    .line 113
    iget-object v7, v0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->mDurationValueText:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v10, v1

    invoke-virtual {v9, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v12

    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v14

    rem-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v2, v4

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    rem-long/2addr v10, v4

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v2, v3

    const-string v1, "%02d:%02d"

    invoke-static {v8, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 115
    :cond_0
    iget-object v7, v0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->mDurationValueText:Landroid/widget/TextView;

    const/high16 v8, 0x41b00000    # 22.0f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 116
    iget-object v7, v0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->mDurationValueText:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v11, v1

    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v9, v4

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v13

    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v15

    rem-long/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v9, v3

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v3

    rem-long/2addr v11, v3

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v9, v2

    const-string v1, "%02d:%02d:%02d"

    invoke-static {v8, v1, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public onAttachToWindow()V
    .locals 2

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->isVisible:Z

    .line 86
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->mCurrentCallAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->mCurrentCallDurAnimEnded:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->mIncomingProgressAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->mIncomingProgressAnimEnded:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->mIncomingProgressTextAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->mIncomingProgressTextAnimEnded:Z

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->mOutgoingProgressAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->mOutgoingProgresstAnimEnded:Z

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 90
    :cond_3
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->mOutgoingProgressTextAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->mOutgoingProgressTextAnimEnded:Z

    if-nez v1, :cond_4

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 91
    :cond_4
    invoke-super {p0}, Lcom/telguarder/features/postCallStatistics/CSRowViewHolder;->onAttachToWindow()V

    .line 92
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendCallStatisticsDurationAction()V

    return-void
.end method

.method public onDetachFromWindow()V
    .locals 1

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->isVisible:Z

    .line 79
    invoke-super {p0}, Lcom/telguarder/features/postCallStatistics/CSRowViewHolder;->onDetachFromWindow()V

    return-void
.end method
