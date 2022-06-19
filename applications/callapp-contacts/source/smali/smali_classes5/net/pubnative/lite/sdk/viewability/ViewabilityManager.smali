.class public Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewabilityManager"

.field private static VIEWABILITY_JS_SERVICE_CONTENT:Ljava/lang/String; = null

.field private static final VIEWABILITY_PARTNER_NAME:Ljava/lang/String; = "Pubnativenet"

.field private static mPubNativePartner:Lcom/iab/omid/library/pubnativenet/adsession/i;


# instance fields
.field private mShouldMeasureViewability:Z

.field private final reportingController:Lnet/pubnative/lite/sdk/analytics/ReportingController;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lnet/pubnative/lite/sdk/analytics/ReportingController;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;->mShouldMeasureViewability:Z

    .line 26
    iput-object p2, p0, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;->reportingController:Lnet/pubnative/lite/sdk/analytics/ReportingController;

    .line 28
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager$1;

    invoke-direct {v0, p0, p1}, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager$1;-><init>(Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;Landroid/app/Application;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$000()Lcom/iab/omid/library/pubnativenet/adsession/i;
    .locals 1

    .line 14
    sget-object v0, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;->mPubNativePartner:Lcom/iab/omid/library/pubnativenet/adsession/i;

    return-object v0
.end method

.method static synthetic access$002(Lcom/iab/omid/library/pubnativenet/adsession/i;)Lcom/iab/omid/library/pubnativenet/adsession/i;
    .locals 0

    .line 14
    sput-object p0, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;->mPubNativePartner:Lcom/iab/omid/library/pubnativenet/adsession/i;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 14
    sget-object v0, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;->VIEWABILITY_JS_SERVICE_CONTENT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 14
    sput-object p0, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;->VIEWABILITY_JS_SERVICE_CONTENT:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getPartner()Lcom/iab/omid/library/pubnativenet/adsession/i;
    .locals 1

    .line 61
    sget-object v0, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;->mPubNativePartner:Lcom/iab/omid/library/pubnativenet/adsession/i;

    return-object v0
.end method

.method public getReportingController()Lnet/pubnative/lite/sdk/analytics/ReportingController;
    .locals 1

    .line 77
    iget-object v0, p0, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;->reportingController:Lnet/pubnative/lite/sdk/analytics/ReportingController;

    return-object v0
.end method

.method public getServiceJs()Ljava/lang/String;
    .locals 1

    .line 73
    sget-object v0, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;->VIEWABILITY_JS_SERVICE_CONTENT:Ljava/lang/String;

    return-object v0
.end method

.method public isViewabilityMeasurementActivated()Z
    .locals 1

    .line 57
    invoke-static {}, Lcom/iab/omid/library/pubnativenet/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;->mShouldMeasureViewability:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isViewabilityMeasurementEnabled()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;->mShouldMeasureViewability:Z

    return v0
.end method

.method public setViewabilityMeasurementEnabled(Z)V
    .locals 0

    .line 65
    iput-boolean p1, p0, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;->mShouldMeasureViewability:Z

    return-void
.end method
