.class public Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenterFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "InterstitialPresenterFactory"


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

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenterFactory;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenterFactory;->mZoneId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createInterstitialPresenter(Lnet/pubnative/lite/sdk/models/Ad;ILnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter$Listener;)Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter;
    .locals 4

    .line 58
    iget v0, p1, Lnet/pubnative/lite/sdk/models/Ad;->assetgroupid:I

    invoke-virtual {p0, v0, p1, p2}, Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenterFactory;->fromCreativeType(ILnet/pubnative/lite/sdk/models/Ad;I)Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 63
    :cond_0
    new-instance v0, Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenterDecorator;

    new-instance v1, Lnet/pubnative/lite/sdk/utils/AdTracker;

    const-string v2, "impression"

    .line 65
    invoke-virtual {p1, v2}, Lnet/pubnative/lite/sdk/models/Ad;->getBeacons(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    const-string v3, "click"

    .line 66
    invoke-virtual {p1, v3}, Lnet/pubnative/lite/sdk/models/Ad;->getBeacons(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lnet/pubnative/lite/sdk/utils/AdTracker;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 67
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getReportingController()Lnet/pubnative/lite/sdk/analytics/ReportingController;

    move-result-object p1

    invoke-direct {v0, p2, v1, p1, p3}, Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenterDecorator;-><init>(Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter;Lnet/pubnative/lite/sdk/utils/AdTracker;Lnet/pubnative/lite/sdk/analytics/ReportingController;Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter$Listener;)V

    .line 69
    invoke-interface {p2, v0}, Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter;->setListener(Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter$Listener;)V

    return-object v0
.end method

.method public createInterstitialPresenter(Lnet/pubnative/lite/sdk/models/Ad;Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter$Listener;)Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter;
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-virtual {p0, p1, v0, p2}, Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenterFactory;->createInterstitialPresenter(Lnet/pubnative/lite/sdk/models/Ad;ILnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter$Listener;)Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter;

    move-result-object p1

    return-object p1
.end method

.method fromCreativeType(ILnet/pubnative/lite/sdk/models/Ad;I)Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenter;
    .locals 2

    const/16 v0, 0xf

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1d

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 86
    sget-object p2, Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenterFactory;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Incompatible asset group type: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", for interstitial ad format."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 80
    :cond_0
    :pswitch_0
    new-instance p1, Lnet/pubnative/lite/sdk/interstitial/presenter/MraidInterstitialPresenter;

    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenterFactory;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenterFactory;->mZoneId:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, v0, p2, v1, p3}, Lnet/pubnative/lite/sdk/interstitial/presenter/MraidInterstitialPresenter;-><init>(Landroid/content/Context;Lnet/pubnative/lite/sdk/models/Ad;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object p1

    .line 83
    :cond_1
    new-instance p1, Lnet/pubnative/lite/sdk/interstitial/presenter/VastInterstitialPresenter;

    iget-object v0, p0, Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenterFactory;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenterFactory;->mZoneId:Ljava/lang/String;

    invoke-direct {p1, v0, p2, v1, p3}, Lnet/pubnative/lite/sdk/interstitial/presenter/VastInterstitialPresenter;-><init>(Landroid/content/Context;Lnet/pubnative/lite/sdk/models/Ad;Ljava/lang/String;I)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
