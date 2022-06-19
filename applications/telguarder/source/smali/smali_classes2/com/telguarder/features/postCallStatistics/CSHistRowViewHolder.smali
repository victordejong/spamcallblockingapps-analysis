.class public Lcom/telguarder/features/postCallStatistics/CSHistRowViewHolder;
.super Lcom/telguarder/features/postCallStatistics/CSRowViewHolder;
.source "CSHistRowViewHolder.java"


# instance fields
.field private dateTimeText:Landroid/widget/TextView;

.field private durationValue:Landroid/widget/TextView;

.field private incomingIcon:Landroid/widget/ImageView;

.field private mData:Lcom/telguarder/features/postCallStatistics/CSHistData;

.field private missedicon:Landroid/widget/ImageView;

.field private outgoingIcon:Landroid/widget/ImageView;

.field private pbDuration:Landroid/widget/ProgressBar;

.field private rejectedIcon:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 36
    invoke-direct {p0, p1}, Lcom/telguarder/features/postCallStatistics/CSRowViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0801d3

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSHistRowViewHolder;->outgoingIcon:Landroid/widget/ImageView;

    const v0, 0x7f08019a

    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSHistRowViewHolder;->missedicon:Landroid/widget/ImageView;

    const v0, 0x7f080144

    .line 39
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSHistRowViewHolder;->incomingIcon:Landroid/widget/ImageView;

    const v0, 0x7f08020a

    .line 40
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSHistRowViewHolder;->rejectedIcon:Landroid/widget/ImageView;

    const v0, 0x7f08010c

    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSHistRowViewHolder;->durationValue:Landroid/widget/TextView;

    const v0, 0x7f0800e8

    .line 42
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSHistRowViewHolder;->dateTimeText:Landroid/widget/TextView;

    const v0, 0x7f0801e2

    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSHistRowViewHolder;->pbDuration:Landroid/widget/ProgressBar;

    return-void
.end method

.method private getTimeValueText(J)Ljava/lang/String;
    .locals 6

    const-string v0, " "

    const-wide/16 v1, 0x3c

    const-wide/32 v3, 0x34bc0

    cmp-long v5, p1, v3

    if-lez v5, :cond_0

    .line 67
    div-long/2addr p1, v1

    div-long/2addr p1, v1

    const-wide/16 v1, 0x18

    div-long/2addr p1, v1

    long-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 68
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    const-wide/32 v3, 0x8ca0

    cmp-long v5, p1, v3

    if-lez v5, :cond_1

    .line 70
    div-long/2addr p1, v1

    div-long/2addr p1, v1

    long-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 71
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/telguarder/ApplicationObject;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f100047

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    cmp-long v3, p1, v1

    if-lez v3, :cond_2

    .line 73
    div-long/2addr p1, v1

    long-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 74
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/telguarder/ApplicationObject;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f100049

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 76
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/telguarder/ApplicationObject;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f10004b

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private setProgressBarColor(Landroid/widget/ProgressBar;I)V
    .locals 2

    .line 140
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 141
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_0
    return-void
.end method

.method private showBlockedCallData()V
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSHistRowViewHolder;->outgoingIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSHistRowViewHolder;->missedicon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSHistRowViewHolder;->incomingIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSHistRowViewHolder;->rejectedIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSHistRowViewHolder;->pbDuration:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f05010e

    invoke-static {v1, v2}, Lcom/telguarder/helpers/common/AppUtil;->getColorResource(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/telguarder/features/postCallStatistics/CSHistRowViewHolder;->setProgressBarColor(Landroid/widget/ProgressBar;I)V

    return-void
.end method

.method private showIncomingCallData()V
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSHistRowViewHolder;->outgoingIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSHistRowViewHolder;->missedicon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSHistRowViewHolder;->incomingIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSHistRowViewHolder;->rejectedIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSHistRowViewHolder;->pbDuration:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f05010e

    invoke-static {v1, v2}, Lcom/telguarder/helpers/common/AppUtil;->getColorResource(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/telguarder/features/postCallStatistics/CSHistRowViewHolder;->setProgressBarColor(Landroid/widget/ProgressBar;I)V

    return-void
.end method

.method private showMissedCallData()V
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSHistRowViewHolder;->outgoingIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSHistRowViewHolder;->missedicon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSHistRowViewHolder;->incomingIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSHistRowViewHolder;->rejectedIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSHistRowViewHolder;->pbDuration:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f05010e

    invoke-static {v1, v2}, Lcom/telguarder/helpers/common/AppUtil;->getColorResource(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/telguarder/features/postCallStatistics/CSHistRowViewHolder;->setProgressBarColor(Landroid/widget/ProgressBar;I)V

    return-void
.end method

.method private showOutgoingCallData()V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSHistRowViewHolder;->outgoingIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSHistRowViewHolder;->missedicon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSHistRowViewHolder;->incomingIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSHistRowViewHolder;->rejectedIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSHistRowViewHolder;->pbDuration:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f05010f

    invoke-static {v1, v2}, Lcom/telguarder/helpers/common/AppUtil;->getColorResource(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/telguarder/features/postCallStatistics/CSHistRowViewHolder;->setProgressBarColor(Landroid/widget/ProgressBar;I)V

    return-void
.end method

.method private showRejectedCallData()V
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSHistRowViewHolder;->outgoingIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSHistRowViewHolder;->missedicon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSHistRowViewHolder;->incomingIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSHistRowViewHolder;->rejectedIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSHistRowViewHolder;->pbDuration:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f05010e

    invoke-static {v1, v2}, Lcom/telguarder/helpers/common/AppUtil;->getColorResource(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/telguarder/features/postCallStatistics/CSHistRowViewHolder;->setProgressBarColor(Landroid/widget/ProgressBar;I)V

    return-void
.end method


# virtual methods
.method public bindData(Lcom/telguarder/features/postCallStatistics/CSHistData;)V
    .locals 3

    .line 48
    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSHistRowViewHolder;->mData:Lcom/telguarder/features/postCallStatistics/CSHistData;

    .line 49
    iget p1, p1, Lcom/telguarder/features/postCallStatistics/CSHistData;->callType:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    invoke-direct {p0}, Lcom/telguarder/features/postCallStatistics/CSHistRowViewHolder;->showBlockedCallData()V

    goto :goto_0

    .line 53
    :cond_1
    invoke-direct {p0}, Lcom/telguarder/features/postCallStatistics/CSHistRowViewHolder;->showRejectedCallData()V

    goto :goto_0

    .line 52
    :cond_2
    invoke-direct {p0}, Lcom/telguarder/features/postCallStatistics/CSHistRowViewHolder;->showMissedCallData()V

    goto :goto_0

    .line 51
    :cond_3
    invoke-direct {p0}, Lcom/telguarder/features/postCallStatistics/CSHistRowViewHolder;->showOutgoingCallData()V

    goto :goto_0

    .line 50
    :cond_4
    invoke-direct {p0}, Lcom/telguarder/features/postCallStatistics/CSHistRowViewHolder;->showIncomingCallData()V

    .line 57
    :goto_0
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSHistRowViewHolder;->dateTimeText:Landroid/widget/TextView;

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "EEE, d MMM yyyy HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object v1, p0, Lcom/telguarder/features/postCallStatistics/CSHistRowViewHolder;->mData:Lcom/telguarder/features/postCallStatistics/CSHistData;

    iget-wide v1, v1, Lcom/telguarder/features/postCallStatistics/CSHistData;->callDate:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSHistRowViewHolder;->pbDuration:Landroid/widget/ProgressBar;

    const/16 v0, 0x384

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 60
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSHistRowViewHolder;->pbDuration:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSHistRowViewHolder;->mData:Lcom/telguarder/features/postCallStatistics/CSHistData;

    iget v0, v0, Lcom/telguarder/features/postCallStatistics/CSHistData;->callDuration:I

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 61
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSHistRowViewHolder;->durationValue:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSHistRowViewHolder;->mData:Lcom/telguarder/features/postCallStatistics/CSHistData;

    iget v0, v0, Lcom/telguarder/features/postCallStatistics/CSHistData;->callDuration:I

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/telguarder/features/postCallStatistics/CSHistRowViewHolder;->getTimeValueText(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onAttachToWindow()V
    .locals 0

    .line 90
    invoke-super {p0}, Lcom/telguarder/features/postCallStatistics/CSRowViewHolder;->onAttachToWindow()V

    return-void
.end method

.method public onDetachFromWindow()V
    .locals 0

    .line 83
    invoke-super {p0}, Lcom/telguarder/features/postCallStatistics/CSRowViewHolder;->onDetachFromWindow()V

    return-void
.end method
