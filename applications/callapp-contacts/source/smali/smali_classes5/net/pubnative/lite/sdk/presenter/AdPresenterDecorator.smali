.class public Lnet/pubnative/lite/sdk/presenter/AdPresenterDecorator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/lite/sdk/presenter/AdPresenter;
.implements Lnet/pubnative/lite/sdk/presenter/AdPresenter$ImpressionListener;
.implements Lnet/pubnative/lite/sdk/presenter/AdPresenter$Listener;


# static fields
.field private static final TAG:Ljava/lang/String; = "AdPresenterDecorator"


# instance fields
.field private final mAdPresenter:Lnet/pubnative/lite/sdk/presenter/AdPresenter;

.field private final mAdTrackingDelegate:Lnet/pubnative/lite/sdk/utils/AdTracker;

.field private mIsDestroyed:Z

.field private final mListener:Lnet/pubnative/lite/sdk/presenter/AdPresenter$Listener;

.field private final mReportingController:Lnet/pubnative/lite/sdk/analytics/ReportingController;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lnet/pubnative/lite/sdk/presenter/AdPresenter;Lnet/pubnative/lite/sdk/utils/AdTracker;Lnet/pubnative/lite/sdk/analytics/ReportingController;Lnet/pubnative/lite/sdk/presenter/AdPresenter$Listener;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lnet/pubnative/lite/sdk/presenter/AdPresenterDecorator;->mAdPresenter:Lnet/pubnative/lite/sdk/presenter/AdPresenter;

    .line 52
    iput-object p2, p0, Lnet/pubnative/lite/sdk/presenter/AdPresenterDecorator;->mAdTrackingDelegate:Lnet/pubnative/lite/sdk/utils/AdTracker;

    .line 53
    iput-object p3, p0, Lnet/pubnative/lite/sdk/presenter/AdPresenterDecorator;->mReportingController:Lnet/pubnative/lite/sdk/analytics/ReportingController;

    .line 54
    iput-object p4, p0, Lnet/pubnative/lite/sdk/presenter/AdPresenterDecorator;->mListener:Lnet/pubnative/lite/sdk/presenter/AdPresenter$Listener;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 83
    iget-object v0, p0, Lnet/pubnative/lite/sdk/presenter/AdPresenterDecorator;->mAdPresenter:Lnet/pubnative/lite/sdk/presenter/AdPresenter;

    invoke-interface {v0}, Lnet/pubnative/lite/sdk/presenter/AdPresenter;->destroy()V

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lnet/pubnative/lite/sdk/presenter/AdPresenterDecorator;->mIsDestroyed:Z

    return-void
.end method

.method public getAd()Lnet/pubnative/lite/sdk/models/Ad;
    .locals 1

    .line 69
    iget-object v0, p0, Lnet/pubnative/lite/sdk/presenter/AdPresenterDecorator;->mAdPresenter:Lnet/pubnative/lite/sdk/presenter/AdPresenter;

    invoke-interface {v0}, Lnet/pubnative/lite/sdk/presenter/AdPresenter;->getAd()Lnet/pubnative/lite/sdk/models/Ad;

    move-result-object v0

    return-object v0
.end method

.method public load()V
    .locals 2

    .line 74
    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/presenter/AdPresenterDecorator;->mIsDestroyed:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "AdPresenterDecorator is destroyed"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/CheckUtils$NoThrow;->checkArgument(ZLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/presenter/AdPresenterDecorator;->mAdPresenter:Lnet/pubnative/lite/sdk/presenter/AdPresenter;

    invoke-interface {v0}, Lnet/pubnative/lite/sdk/presenter/AdPresenter;->load()V

    return-void
.end method

.method public onAdClicked(Lnet/pubnative/lite/sdk/presenter/AdPresenter;)V
    .locals 3

    .line 115
    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/presenter/AdPresenterDecorator;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/presenter/AdPresenterDecorator;->mReportingController:Lnet/pubnative/lite/sdk/analytics/ReportingController;

    if-eqz v0, :cond_1

    .line 120
    new-instance v0, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;

    invoke-direct {v0}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;-><init>()V

    const-string v1, "click"

    .line 121
    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;->setEventType(Ljava/lang/String;)V

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;->setTimestamp(Ljava/lang/String;)V

    const-string v1, "banner"

    .line 123
    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;->setAdFormat(Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lnet/pubnative/lite/sdk/presenter/AdPresenterDecorator;->mReportingController:Lnet/pubnative/lite/sdk/analytics/ReportingController;

    invoke-virtual {v1, v0}, Lnet/pubnative/lite/sdk/analytics/ReportingController;->reportEvent(Lnet/pubnative/lite/sdk/analytics/ReportingEvent;)V

    .line 127
    :cond_1
    iget-object v0, p0, Lnet/pubnative/lite/sdk/presenter/AdPresenterDecorator;->mAdTrackingDelegate:Lnet/pubnative/lite/sdk/utils/AdTracker;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/utils/AdTracker;->trackClick()V

    .line 128
    iget-object v0, p0, Lnet/pubnative/lite/sdk/presenter/AdPresenterDecorator;->mListener:Lnet/pubnative/lite/sdk/presenter/AdPresenter$Listener;

    invoke-interface {v0, p1}, Lnet/pubnative/lite/sdk/presenter/AdPresenter$Listener;->onAdClicked(Lnet/pubnative/lite/sdk/presenter/AdPresenter;)V

    return-void
.end method

.method public onAdError(Lnet/pubnative/lite/sdk/presenter/AdPresenter;)V
    .locals 3

    .line 133
    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/presenter/AdPresenterDecorator;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/presenter/AdPresenterDecorator;->mReportingController:Lnet/pubnative/lite/sdk/analytics/ReportingController;

    if-eqz v0, :cond_1

    .line 138
    new-instance v0, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;

    invoke-direct {v0}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;-><init>()V

    const-string v1, "error"

    .line 139
    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;->setEventType(Ljava/lang/String;)V

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;->setTimestamp(Ljava/lang/String;)V

    const-string v1, "banner"

    .line 141
    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;->setAdFormat(Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lnet/pubnative/lite/sdk/presenter/AdPresenterDecorator;->mReportingController:Lnet/pubnative/lite/sdk/analytics/ReportingController;

    invoke-virtual {v1, v0}, Lnet/pubnative/lite/sdk/analytics/ReportingController;->reportEvent(Lnet/pubnative/lite/sdk/analytics/ReportingEvent;)V

    .line 146
    :cond_1
    sget-object v0, Lnet/pubnative/lite/sdk/presenter/AdPresenterDecorator;->TAG:Ljava/lang/String;

    const-string v1, "Banner error for zone id: "

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lnet/pubnative/lite/sdk/presenter/AdPresenterDecorator;->mListener:Lnet/pubnative/lite/sdk/presenter/AdPresenter$Listener;

    invoke-interface {v0, p1}, Lnet/pubnative/lite/sdk/presenter/AdPresenter$Listener;->onAdError(Lnet/pubnative/lite/sdk/presenter/AdPresenter;)V

    return-void
.end method

.method public onAdLoaded(Lnet/pubnative/lite/sdk/presenter/AdPresenter;Landroid/view/View;)V
    .locals 1

    .line 106
    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/presenter/AdPresenterDecorator;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/presenter/AdPresenterDecorator;->mListener:Lnet/pubnative/lite/sdk/presenter/AdPresenter$Listener;

    invoke-interface {v0, p1, p2}, Lnet/pubnative/lite/sdk/presenter/AdPresenter$Listener;->onAdLoaded(Lnet/pubnative/lite/sdk/presenter/AdPresenter;Landroid/view/View;)V

    return-void
.end method

.method public onImpression()V
    .locals 3

    .line 152
    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/presenter/AdPresenterDecorator;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/presenter/AdPresenterDecorator;->mReportingController:Lnet/pubnative/lite/sdk/analytics/ReportingController;

    if-eqz v0, :cond_1

    .line 157
    new-instance v0, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;

    invoke-direct {v0}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;-><init>()V

    const-string v1, "impression"

    .line 158
    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;->setEventType(Ljava/lang/String;)V

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;->setTimestamp(Ljava/lang/String;)V

    const-string v1, "banner"

    .line 160
    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;->setAdFormat(Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lnet/pubnative/lite/sdk/presenter/AdPresenterDecorator;->mReportingController:Lnet/pubnative/lite/sdk/analytics/ReportingController;

    invoke-virtual {v1, v0}, Lnet/pubnative/lite/sdk/analytics/ReportingController;->reportEvent(Lnet/pubnative/lite/sdk/analytics/ReportingEvent;)V

    .line 164
    :cond_1
    iget-object v0, p0, Lnet/pubnative/lite/sdk/presenter/AdPresenterDecorator;->mAdTrackingDelegate:Lnet/pubnative/lite/sdk/utils/AdTracker;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/utils/AdTracker;->trackImpression()V

    return-void
.end method

.method public setImpressionListener(Lnet/pubnative/lite/sdk/presenter/AdPresenter$ImpressionListener;)V
    .locals 0

    return-void
.end method

.method public setListener(Lnet/pubnative/lite/sdk/presenter/AdPresenter$Listener;)V
    .locals 0

    return-void
.end method

.method public startTracking()V
    .locals 2

    .line 89
    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/presenter/AdPresenterDecorator;->mIsDestroyed:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "AdPresenterDecorator is destroyed"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/CheckUtils$NoThrow;->checkArgument(ZLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/presenter/AdPresenterDecorator;->mAdPresenter:Lnet/pubnative/lite/sdk/presenter/AdPresenter;

    invoke-interface {v0}, Lnet/pubnative/lite/sdk/presenter/AdPresenter;->startTracking()V

    return-void
.end method

.method public stopTracking()V
    .locals 2

    .line 97
    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/presenter/AdPresenterDecorator;->mIsDestroyed:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "AdPresenterDecorator is destroyed"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/CheckUtils$NoThrow;->checkArgument(ZLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/presenter/AdPresenterDecorator;->mAdPresenter:Lnet/pubnative/lite/sdk/presenter/AdPresenter;

    invoke-interface {v0}, Lnet/pubnative/lite/sdk/presenter/AdPresenter;->stopTracking()V

    return-void
.end method
