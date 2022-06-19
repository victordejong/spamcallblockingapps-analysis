.class public Lnet/pubnative/lite/sdk/reporting/ReportingEventBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field reportingEvent:Lnet/pubnative/lite/sdk/analytics/ReportingEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-class v0, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/lite/sdk/reporting/ReportingEventBridge;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;

    invoke-direct {v0}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;-><init>()V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/reporting/ReportingEventBridge;->reportingEvent:Lnet/pubnative/lite/sdk/analytics/ReportingEvent;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;

    invoke-direct {v0}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;-><init>()V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/reporting/ReportingEventBridge;->reportingEvent:Lnet/pubnative/lite/sdk/analytics/ReportingEvent;

    const-string v0, "ad_format"

    .line 23
    invoke-virtual {p0, v0, p1}, Lnet/pubnative/lite/sdk/reporting/ReportingEventBridge;->setCustomString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnet/pubnative/lite/sdk/models/AdSize;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;

    invoke-direct {v0}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;-><init>()V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/reporting/ReportingEventBridge;->reportingEvent:Lnet/pubnative/lite/sdk/analytics/ReportingEvent;

    .line 29
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ad_format"

    .line 30
    invoke-virtual {p0, v0, p1}, Lnet/pubnative/lite/sdk/reporting/ReportingEventBridge;->setCustomString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_0
    invoke-virtual {p2}, Lnet/pubnative/lite/sdk/models/AdSize;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ad_size"

    invoke-virtual {p0, p2, p1}, Lnet/pubnative/lite/sdk/reporting/ReportingEventBridge;->setCustomString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAdFormat()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lnet/pubnative/lite/sdk/reporting/ReportingEventBridge;->reportingEvent:Lnet/pubnative/lite/sdk/analytics/ReportingEvent;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;->getAdFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdSize()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lnet/pubnative/lite/sdk/reporting/ReportingEventBridge;->reportingEvent:Lnet/pubnative/lite/sdk/analytics/ReportingEvent;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;->getAdSize()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormattedEventJson()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lnet/pubnative/lite/sdk/reporting/ReportingEventBridge;->reportingEvent:Lnet/pubnative/lite/sdk/analytics/ReportingEvent;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReportingEvent()Lnet/pubnative/lite/sdk/analytics/ReportingEvent;
    .locals 1

    .line 68
    iget-object v0, p0, Lnet/pubnative/lite/sdk/reporting/ReportingEventBridge;->reportingEvent:Lnet/pubnative/lite/sdk/analytics/ReportingEvent;

    return-object v0
.end method

.method public setAdSize(Ljava/lang/Object;)V
    .locals 1

    .line 40
    instance-of v0, p1, Lnet/pubnative/lite/sdk/models/AdSize;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lnet/pubnative/lite/sdk/reporting/ReportingEventBridge;->reportingEvent:Lnet/pubnative/lite/sdk/analytics/ReportingEvent;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;->setAdSize(Ljava/lang/String;)V

    return-void

    .line 43
    :cond_0
    sget-object p1, Lnet/pubnative/lite/sdk/reporting/ReportingEventBridge;->TAG:Ljava/lang/String;

    const-string v0, "object must be an instance of AdSize"

    invoke-static {p1, v0}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCustomBoolean(Ljava/lang/String;Z)V
    .locals 1

    .line 64
    iget-object v0, p0, Lnet/pubnative/lite/sdk/reporting/ReportingEventBridge;->reportingEvent:Lnet/pubnative/lite/sdk/analytics/ReportingEvent;

    invoke-virtual {v0, p1, p2}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;->setCustomBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setCustomDecimal(Ljava/lang/String;D)V
    .locals 1

    .line 60
    iget-object v0, p0, Lnet/pubnative/lite/sdk/reporting/ReportingEventBridge;->reportingEvent:Lnet/pubnative/lite/sdk/analytics/ReportingEvent;

    invoke-virtual {v0, p1, p2, p3}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;->setCustomDecimal(Ljava/lang/String;D)V

    return-void
.end method

.method public setCustomInteger(Ljava/lang/String;J)V
    .locals 1

    .line 56
    iget-object v0, p0, Lnet/pubnative/lite/sdk/reporting/ReportingEventBridge;->reportingEvent:Lnet/pubnative/lite/sdk/analytics/ReportingEvent;

    invoke-virtual {v0, p1, p2, p3}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;->setCustomInteger(Ljava/lang/String;J)V

    return-void
.end method

.method public setCustomString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lnet/pubnative/lite/sdk/reporting/ReportingEventBridge;->reportingEvent:Lnet/pubnative/lite/sdk/analytics/ReportingEvent;

    invoke-virtual {v0, p1, p2}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;->setCustomString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
