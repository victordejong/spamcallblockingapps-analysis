.class public Lcom/telguarder/features/postCallStatistics/CSHistHeaderRowViewHolder;
.super Lcom/telguarder/features/postCallStatistics/CSRowViewHolder;
.source "CSHistHeaderRowViewHolder.java"


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/telguarder/features/postCallStatistics/CSRowViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public bindData(Lcom/telguarder/features/postCallStatistics/CSHistHeaderData;)V
    .locals 0

    return-void
.end method

.method public onAttachToWindow()V
    .locals 1

    .line 36
    invoke-super {p0}, Lcom/telguarder/features/postCallStatistics/CSRowViewHolder;->onAttachToWindow()V

    .line 37
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendCallStatisticsCallHistoryAction()V

    return-void
.end method

.method public onDetachFromWindow()V
    .locals 0

    .line 29
    invoke-super {p0}, Lcom/telguarder/features/postCallStatistics/CSRowViewHolder;->onDetachFromWindow()V

    return-void
.end method
