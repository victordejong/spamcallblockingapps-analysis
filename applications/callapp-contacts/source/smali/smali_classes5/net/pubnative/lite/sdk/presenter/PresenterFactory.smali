.class public abstract Lnet/pubnative/lite/sdk/presenter/PresenterFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lnet/pubnative/lite/sdk/presenter/PresenterFactory;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public createPresenter(Lnet/pubnative/lite/sdk/models/Ad;Lnet/pubnative/lite/sdk/presenter/AdPresenter$Listener;)Lnet/pubnative/lite/sdk/presenter/AdPresenter;
    .locals 5

    .line 40
    iget v0, p1, Lnet/pubnative/lite/sdk/models/Ad;->assetgroupid:I

    invoke-virtual {p0, v0, p1}, Lnet/pubnative/lite/sdk/presenter/PresenterFactory;->fromCreativeType(ILnet/pubnative/lite/sdk/models/Ad;)Lnet/pubnative/lite/sdk/presenter/AdPresenter;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 45
    :cond_0
    new-instance v1, Lnet/pubnative/lite/sdk/presenter/AdPresenterDecorator;

    new-instance v2, Lnet/pubnative/lite/sdk/utils/AdTracker;

    const-string v3, "impression"

    .line 46
    invoke-virtual {p1, v3}, Lnet/pubnative/lite/sdk/models/Ad;->getBeacons(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const-string v4, "click"

    invoke-virtual {p1, v4}, Lnet/pubnative/lite/sdk/models/Ad;->getBeacons(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Lnet/pubnative/lite/sdk/utils/AdTracker;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getReportingController()Lnet/pubnative/lite/sdk/analytics/ReportingController;

    move-result-object p1

    invoke-direct {v1, v0, v2, p1, p2}, Lnet/pubnative/lite/sdk/presenter/AdPresenterDecorator;-><init>(Lnet/pubnative/lite/sdk/presenter/AdPresenter;Lnet/pubnative/lite/sdk/utils/AdTracker;Lnet/pubnative/lite/sdk/analytics/ReportingController;Lnet/pubnative/lite/sdk/presenter/AdPresenter$Listener;)V

    .line 47
    invoke-interface {v0, v1}, Lnet/pubnative/lite/sdk/presenter/AdPresenter;->setListener(Lnet/pubnative/lite/sdk/presenter/AdPresenter$Listener;)V

    .line 48
    invoke-interface {v0, v1}, Lnet/pubnative/lite/sdk/presenter/AdPresenter;->setImpressionListener(Lnet/pubnative/lite/sdk/presenter/AdPresenter$ImpressionListener;)V

    return-object v1
.end method

.method protected abstract fromCreativeType(ILnet/pubnative/lite/sdk/models/Ad;)Lnet/pubnative/lite/sdk/presenter/AdPresenter;
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .line 53
    iget-object v0, p0, Lnet/pubnative/lite/sdk/presenter/PresenterFactory;->mContext:Landroid/content/Context;

    return-object v0
.end method
