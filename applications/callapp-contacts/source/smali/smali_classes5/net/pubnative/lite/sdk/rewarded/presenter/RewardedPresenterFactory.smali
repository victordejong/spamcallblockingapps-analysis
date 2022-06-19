.class public Lnet/pubnative/lite/sdk/rewarded/presenter/RewardedPresenterFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "RewardedPresenterFactory"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mZoneId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lnet/pubnative/lite/sdk/rewarded/presenter/RewardedPresenterFactory;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lnet/pubnative/lite/sdk/rewarded/presenter/RewardedPresenterFactory;->mZoneId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createRewardedPresenter(Lnet/pubnative/lite/sdk/models/Ad;Lnet/pubnative/lite/sdk/rewarded/presenter/RewardedPresenter$Listener;)Lnet/pubnative/lite/sdk/rewarded/presenter/RewardedPresenter;
    .locals 5

    .line 47
    iget v0, p1, Lnet/pubnative/lite/sdk/models/Ad;->assetgroupid:I

    invoke-virtual {p0, v0, p1}, Lnet/pubnative/lite/sdk/rewarded/presenter/RewardedPresenterFactory;->fromCreativeType(ILnet/pubnative/lite/sdk/models/Ad;)Lnet/pubnative/lite/sdk/rewarded/presenter/RewardedPresenter;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 52
    :cond_0
    new-instance v1, Lnet/pubnative/lite/sdk/rewarded/presenter/RewardedPresenterDecorator;

    new-instance v2, Lnet/pubnative/lite/sdk/utils/AdTracker;

    const-string v3, "impression"

    .line 54
    invoke-virtual {p1, v3}, Lnet/pubnative/lite/sdk/models/Ad;->getBeacons(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const-string v4, "click"

    .line 55
    invoke-virtual {p1, v4}, Lnet/pubnative/lite/sdk/models/Ad;->getBeacons(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Lnet/pubnative/lite/sdk/utils/AdTracker;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 56
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getReportingController()Lnet/pubnative/lite/sdk/analytics/ReportingController;

    move-result-object p1

    invoke-direct {v1, v0, v2, p1, p2}, Lnet/pubnative/lite/sdk/rewarded/presenter/RewardedPresenterDecorator;-><init>(Lnet/pubnative/lite/sdk/rewarded/presenter/RewardedPresenter;Lnet/pubnative/lite/sdk/utils/AdTracker;Lnet/pubnative/lite/sdk/analytics/ReportingController;Lnet/pubnative/lite/sdk/rewarded/presenter/RewardedPresenter$Listener;)V

    .line 58
    invoke-interface {v0, v1}, Lnet/pubnative/lite/sdk/rewarded/presenter/RewardedPresenter;->setListener(Lnet/pubnative/lite/sdk/rewarded/presenter/RewardedPresenter$Listener;)V

    return-object v1
.end method

.method fromCreativeType(ILnet/pubnative/lite/sdk/models/Ad;)Lnet/pubnative/lite/sdk/rewarded/presenter/RewardedPresenter;
    .locals 2

    const/16 v0, 0xf

    if-eq p1, v0, :cond_0

    .line 68
    sget-object p2, Lnet/pubnative/lite/sdk/rewarded/presenter/RewardedPresenterFactory;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Incompatible asset group type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", for rewarded ad format."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 65
    :cond_0
    new-instance p1, Lnet/pubnative/lite/sdk/rewarded/presenter/VastRewardedPresenter;

    iget-object v0, p0, Lnet/pubnative/lite/sdk/rewarded/presenter/RewardedPresenterFactory;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/rewarded/presenter/RewardedPresenterFactory;->mZoneId:Ljava/lang/String;

    invoke-direct {p1, v0, p2, v1}, Lnet/pubnative/lite/sdk/rewarded/presenter/VastRewardedPresenter;-><init>(Landroid/content/Context;Lnet/pubnative/lite/sdk/models/Ad;Ljava/lang/String;)V

    return-object p1
.end method
