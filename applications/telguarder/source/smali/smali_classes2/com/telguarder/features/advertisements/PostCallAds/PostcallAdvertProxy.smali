.class public Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;
.super Ljava/lang/Object;
.source "PostcallAdvertProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PostcallAdvertProxy"

.field private static mInstance:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;


# instance fields
.field private mAdInfoTextView:Landroid/widget/TextView;

.field public mAdvert:Lcom/telguarder/features/advertisements/Advert;

.field private mHostActivity:Landroidx/appcompat/app/AppCompatActivity;

.field private mLoadInProgress:Z

.field public mLoadStarted:Z

.field private mNetworkCallBack:Landroid/net/ConnectivityManager$NetworkCallback;

.field public mPostcallAdvertProvider:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;

.field public mediaIsPlaying:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mediaIsPlaying:Z

    .line 42
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mLoadInProgress:Z

    .line 43
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mLoadStarted:Z

    return-void
.end method

.method static synthetic access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;Landroid/content/Context;Lcom/telguarder/features/advertisements/Advert;Z)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->preloadAd(Landroid/content/Context;Lcom/telguarder/features/advertisements/Advert;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;)Landroid/net/ConnectivityManager$NetworkCallback;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mNetworkCallBack:Landroid/net/ConnectivityManager$NetworkCallback;

    return-object p0
.end method

.method private cleanupPreloadModule(Lcom/telguarder/features/advertisements/Advert;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 88
    iget-object v0, p1, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object p1, p1, Lcom/telguarder/features/advertisements/AdvertNetwork;->name:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-static {p1}, Lcom/telguarder/ApplicationConstants;->isAdNetworkEnabled(Lcom/telguarder/features/advertisements/AdvertNetworkName;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 89
    sget-object p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy$2;->$SwitchMap$com$telguarder$features$advertisements$AdvertNetworkName:[I

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/AdvertNetwork;->name:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/AdvertNetworkName;->ordinal()I

    move-result v0

    aget p1, p1, v0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 96
    :pswitch_0
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->isInstanciated()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->onDestroy()V

    goto :goto_0

    .line 95
    :pswitch_1
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->isInstanciated()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->onDestroy()V

    goto :goto_0

    .line 94
    :pswitch_2
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->isInstanciated()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->onDestroy()V

    goto :goto_0

    .line 93
    :pswitch_3
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->isInstanciated()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->onDestroy()V

    goto :goto_0

    .line 92
    :pswitch_4
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->isInstanciated()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->onDestroy()V

    goto :goto_0

    .line 91
    :pswitch_5
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->isInstanciated()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->onDestroy()V

    goto :goto_0

    .line 90
    :pswitch_6
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->isInstanciated()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->onDestroy()V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getAdvertProvider()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;
    .locals 3

    .line 199
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/AdvertNetwork;->name:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-static {v0}, Lcom/telguarder/ApplicationConstants;->isAdNetworkEnabled(Lcom/telguarder/features/advertisements/AdvertNetworkName;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy$2;->$SwitchMap$com$telguarder$features$advertisements$AdvertNetworkName:[I

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/AdvertNetwork;->name:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-virtual {v1}, Lcom/telguarder/features/advertisements/AdvertNetworkName;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 207
    :pswitch_0
    new-instance v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mHostActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v0, v1, v2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;-><init>(Lcom/telguarder/features/advertisements/Advert;Landroidx/appcompat/app/AppCompatActivity;)V

    goto :goto_1

    .line 206
    :pswitch_1
    new-instance v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mHostActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v0, v1, v2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;-><init>(Lcom/telguarder/features/advertisements/Advert;Landroidx/appcompat/app/AppCompatActivity;)V

    goto :goto_1

    .line 205
    :pswitch_2
    new-instance v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mHostActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v0, v1, v2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;-><init>(Lcom/telguarder/features/advertisements/Advert;Landroidx/appcompat/app/AppCompatActivity;)V

    goto :goto_1

    .line 204
    :pswitch_3
    new-instance v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mHostActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v0, v1, v2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;-><init>(Lcom/telguarder/features/advertisements/Advert;Landroidx/appcompat/app/AppCompatActivity;)V

    goto :goto_1

    .line 203
    :pswitch_4
    new-instance v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mHostActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v0, v1, v2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;-><init>(Lcom/telguarder/features/advertisements/Advert;Landroidx/appcompat/app/AppCompatActivity;)V

    goto :goto_1

    .line 202
    :pswitch_5
    new-instance v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mHostActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v0, v1, v2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;-><init>(Lcom/telguarder/features/advertisements/Advert;Landroidx/appcompat/app/AppCompatActivity;)V

    goto :goto_1

    .line 201
    :pswitch_6
    new-instance v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mHostActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v0, v1, v2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;-><init>(Lcom/telguarder/features/advertisements/Advert;Landroidx/appcompat/app/AppCompatActivity;)V

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static declared-synchronized getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;
    .locals 2

    const-class v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    monitor-enter v0

    .line 55
    :try_start_0
    sget-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mInstance:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    if-nez v1, :cond_0

    .line 56
    new-instance v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    invoke-direct {v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;-><init>()V

    sput-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mInstance:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    .line 58
    :cond_0
    sget-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mInstance:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getWhyDoWeShowAdsHereText()Landroid/text/Spanned;
    .locals 3

    .line 408
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mHostActivity:Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/telguarder/ApplicationObject;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 409
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<u>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f1001ac

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</u>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/helpers/common/AppUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method private initWhyAdsHereText()V
    .locals 2

    .line 385
    invoke-static {}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->isInstantiated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    invoke-static {}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->getInstance()Lcom/telguarder/features/postCallStatistics/CSViewAdapter;

    move-result-object v0

    new-instance v1, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdvertProxy$1Bcz8fei1KSrDT6jGFo7Ndi40-k;

    invoke-direct {v1, p0}, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdvertProxy$1Bcz8fei1KSrDT6jGFo7Ndi40-k;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;)V

    invoke-virtual {v0, v1}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->setAdInfoHolderCallbackInterface(Lcom/telguarder/features/postCallStatistics/CSAdInfoRowViewHolder$AdInfoHolderCallbackInterface;)V

    :cond_0
    return-void
.end method

.method public static declared-synchronized isInstanciated()Z
    .locals 2

    const-class v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    monitor-enter v0

    .line 51
    :try_start_0
    sget-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mInstance:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private isPreloaderAdClicked()Z
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/AdvertNetwork;->name:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-static {v0}, Lcom/telguarder/ApplicationConstants;->isAdNetworkEnabled(Lcom/telguarder/features/advertisements/AdvertNetworkName;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 182
    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy$2;->$SwitchMap$com$telguarder$features$advertisements$AdvertNetworkName:[I

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/AdvertNetwork;->name:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-virtual {v1}, Lcom/telguarder/features/advertisements/AdvertNetworkName;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;

    move-result-object v0

    iget-boolean v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->adClicked:Z

    goto :goto_1

    .line 184
    :cond_1
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;

    move-result-object v0

    iget-boolean v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->adClicked:Z

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private declared-synchronized preloadAd(Landroid/content/Context;Lcom/telguarder/features/advertisements/Advert;Z)V
    .locals 2

    monitor-enter p0

    .line 124
    :try_start_0
    iget-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mLoadInProgress:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mLoadStarted:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->isInstantiated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->getInstance()Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_1

    const-string v0, " PRELOAD BACKUP STARTED"

    goto :goto_0

    :cond_1
    const-string v0, " PRELOAD STARTED"

    .line 125
    :goto_0
    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 126
    iput-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    .line 127
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdvertProxy$C8J1kVWliY19xwY4ExKqJtLie7A;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdvertProxy$C8J1kVWliY19xwY4ExKqJtLie7A;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;Lcom/telguarder/features/advertisements/Advert;Landroid/content/Context;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    monitor-exit p0

    return-void

    .line 124
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private preloadWhenNetAvailable(Landroid/content/Context;Lcom/telguarder/features/advertisements/Advert;Z)V
    .locals 2

    .line 105
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 106
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mNetworkCallBack:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_0

    invoke-static {p1, v0}, Lcom/telguarder/helpers/backend/NetworkHelper;->unregisterNetworkCallback(Landroid/content/Context;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 107
    :cond_0
    new-instance v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy$1;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;Landroid/content/Context;Lcom/telguarder/features/advertisements/Advert;Z)V

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mNetworkCallBack:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 116
    invoke-static {p1, v0}, Lcom/telguarder/helpers/backend/NetworkHelper;->registerNetworkCallback(Landroid/content/Context;Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_0

    .line 118
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->preloadAd(Landroid/content/Context;Lcom/telguarder/features/advertisements/Advert;Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized displayBackupAdvert(Landroid/content/Context;)V
    .locals 3

    monitor-enter p0

    .line 354
    :try_start_0
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 355
    monitor-exit p0

    return-void

    .line 358
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/Advert;->getAdvertForBackupNetwork()Lcom/telguarder/features/advertisements/Advert;

    move-result-object v0

    .line 360
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->hideCurrentAd()V

    if-eqz v0, :cond_3

    .line 364
    invoke-static {}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->isInstantiated()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->getInstance()Lcom/telguarder/features/postCallStatistics/CSViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->insertAdBox()V

    .line 366
    :cond_1
    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    .line 368
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mPostcallAdvertProvider:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->detachEvents()V

    .line 369
    :cond_2
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getAdvertProvider()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mPostcallAdvertProvider:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;

    if-eqz v0, :cond_4

    .line 372
    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load advert from backup ad network ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v2, v2, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v2, v2, Lcom/telguarder/features/advertisements/AdvertNetwork;->name:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-virtual {v2}, Lcom/telguarder/features/advertisements/AdvertNetworkName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 373
    invoke-virtual {p0, p1, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->onLoadAd(Landroid/content/Context;Z)V

    .line 375
    invoke-static {}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->isInstantiated()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->getInstance()Lcom/telguarder/features/postCallStatistics/CSViewAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->notifyAdBox()V

    goto :goto_0

    .line 379
    :cond_3
    invoke-static {}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->isInstantiated()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->getInstance()Lcom/telguarder/features/postCallStatistics/CSViewAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->removeAdBox()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public hideAdInfoText()V
    .locals 2

    .line 414
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mAdInfoTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 415
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 416
    invoke-static {}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->isInstantiated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->getInstance()Lcom/telguarder/features/postCallStatistics/CSViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->notifyAdInfoBox()V

    :cond_0
    return-void
.end method

.method public declared-synchronized hideCurrentAd()V
    .locals 4

    monitor-enter p0

    .line 334
    :try_start_0
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mPostcallAdvertProvider:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 335
    iput-boolean v1, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->closed:Z

    .line 338
    :cond_0
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->hideAdInfoText()V

    .line 340
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mPostcallAdvertProvider:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 342
    :try_start_1
    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->onHideViews()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 344
    :try_start_2
    sget-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "advert provider hide views error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 348
    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 349
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isAdClicked()Z
    .locals 1

    monitor-enter p0

    .line 174
    :try_start_0
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->isPresented()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mPostcallAdvertProvider:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;

    iget-boolean v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->adClicked:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->isPreloaderAdClicked()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPresented()Z
    .locals 1

    monitor-enter p0

    .line 170
    :try_start_0
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mPostcallAdvertProvider:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;

    iget-boolean v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->adPresented:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isReady()Z
    .locals 1

    monitor-enter p0

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mPostcallAdvertProvider:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthetic lambda$initWhyAdsHereText$3$PostcallAdvertProxy(Landroid/widget/TextView;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 388
    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mAdInfoTextView:Landroid/widget/TextView;

    .line 389
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->showAdInfoText()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onLoadAd$1$PostcallAdvertProxy()V
    .locals 1

    const/4 v0, 0x0

    .line 234
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mLoadInProgress:Z

    .line 236
    :try_start_0
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->showAdInfoText()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, " SHOW AD INFO TEXT ERROR"

    .line 238
    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$onLoadAd$2$PostcallAdvertProxy(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 243
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mLoadInProgress:Z

    .line 245
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->displayBackupAdvert(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, " DISPLAY BACKUP ADVERT ERROR"

    .line 247
    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$preloadAd$0$PostcallAdvertProxy(Lcom/telguarder/features/advertisements/Advert;Landroid/content/Context;Z)V
    .locals 1

    if-eqz p1, :cond_3

    .line 128
    iget-object v0, p1, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    if-eqz v0, :cond_3

    iget-object p1, p1, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object p1, p1, Lcom/telguarder/features/advertisements/AdvertNetwork;->name:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-static {p1}, Lcom/telguarder/ApplicationConstants;->isAdNetworkEnabled(Lcom/telguarder/features/advertisements/AdvertNetworkName;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 129
    invoke-static {}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->getInstance()Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->isKeepAliveRunning()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->getInstance()Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->preloadKeepAlive(Landroid/content/Context;)V

    :cond_0
    if-eqz p3, :cond_2

    .line 131
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mPostcallAdvertProvider:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->detachEvents()V

    .line 132
    :cond_1
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getAdvertProvider()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mPostcallAdvertProvider:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;

    .line 134
    :cond_2
    sget-object p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy$2;->$SwitchMap$com$telguarder$features$advertisements$AdvertNetworkName:[I

    iget-object p3, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object p3, p3, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object p3, p3, Lcom/telguarder/features/advertisements/AdvertNetwork;->name:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-virtual {p3}, Lcom/telguarder/features/advertisements/AdvertNetworkName;->ordinal()I

    move-result p3

    aget p1, p1, p3

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 141
    :pswitch_0
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    invoke-virtual {p1, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->preload(Lcom/telguarder/features/advertisements/Advert;)V

    goto :goto_0

    .line 140
    :pswitch_1
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    invoke-virtual {p1, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->preload(Lcom/telguarder/features/advertisements/Advert;)V

    goto :goto_0

    .line 139
    :pswitch_2
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    invoke-virtual {p1, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->preload(Lcom/telguarder/features/advertisements/Advert;)V

    goto :goto_0

    .line 138
    :pswitch_3
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;

    move-result-object p1

    iget-object p3, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    invoke-virtual {p1, p2, p3}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->preload(Landroid/content/Context;Lcom/telguarder/features/advertisements/Advert;)V

    goto :goto_0

    .line 137
    :pswitch_4
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    invoke-virtual {p1, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->preload(Lcom/telguarder/features/advertisements/Advert;)V

    goto :goto_0

    .line 136
    :pswitch_5
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;

    move-result-object p1

    iget-object p3, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    invoke-virtual {p1, p2, p3}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->preload(Landroid/content/Context;Lcom/telguarder/features/advertisements/Advert;)V

    goto :goto_0

    .line 135
    :pswitch_6
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;

    move-result-object p1

    iget-object p3, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    invoke-virtual {p1, p2, p3}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->preload(Landroid/content/Context;Lcom/telguarder/features/advertisements/Advert;)V

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 3

    .line 298
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    if-nez v0, :cond_0

    goto :goto_0

    .line 300
    :cond_0
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/AdvertNetwork;->name:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-virtual {v1}, Lcom/telguarder/features/advertisements/AdvertNetworkName;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertBackPressedAction(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized onDestroy()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 319
    :try_start_0
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mLoadStarted:Z

    .line 320
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mLoadInProgress:Z

    .line 321
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mPostcallAdvertProvider:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 323
    :try_start_1
    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->onDestroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 325
    :try_start_2
    sget-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "advert provider destroy error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 328
    sput-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mInstance:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 329
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onHomePressed()V
    .locals 3

    .line 305
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    if-nez v0, :cond_0

    goto :goto_0

    .line 307
    :cond_0
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/AdvertNetwork;->name:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-virtual {v1}, Lcom/telguarder/features/advertisements/AdvertNetworkName;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertHomePressedAction(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized onLoadAd(Landroid/content/Context;Z)V
    .locals 2

    monitor-enter p0

    .line 216
    :try_start_0
    iget-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mLoadStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 p2, 0x1

    .line 217
    :try_start_1
    iput-boolean p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mLoadStarted:Z

    .line 218
    iput-boolean p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mLoadInProgress:Z

    .line 219
    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mPostcallAdvertProvider:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->detachEvents()V

    .line 220
    :cond_1
    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    if-eqz p2, :cond_3

    iget-object p2, p2, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object p2, p2, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object p2, p2, Lcom/telguarder/features/advertisements/AdvertNetwork;->name:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-static {p2}, Lcom/telguarder/ApplicationConstants;->isAdNetworkEnabled(Lcom/telguarder/features/advertisements/AdvertNetworkName;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    .line 225
    :cond_2
    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mPostcallAdvertProvider:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;

    if-nez p2, :cond_4

    .line 226
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getAdvertProvider()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;

    move-result-object p2

    iput-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mPostcallAdvertProvider:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;

    goto :goto_1

    .line 221
    :cond_3
    :goto_0
    invoke-static {}, Lcom/telguarder/features/advertisements/AdvertManager;->getInstance()Lcom/telguarder/features/advertisements/AdvertManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/telguarder/features/advertisements/AdvertManager;->getPostcallAdvertFromCache()Lcom/telguarder/features/advertisements/Advert;

    move-result-object p2

    iput-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    if-eqz p2, :cond_4

    .line 223
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getAdvertProvider()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;

    move-result-object p2

    iput-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mPostcallAdvertProvider:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;

    .line 229
    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mPostcallAdvertProvider:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    if-eqz p2, :cond_6

    .line 231
    invoke-static {}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->isInstantiated()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->getInstance()Lcom/telguarder/features/postCallStatistics/CSViewAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->insertAdBox()V

    .line 233
    :cond_5
    new-instance p2, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdvertProxy$GKE5yKM4wNDeFEmjVmgsmkZCqwA;

    invoke-direct {p2, p0}, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdvertProxy$GKE5yKM4wNDeFEmjVmgsmkZCqwA;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;)V

    .line 242
    new-instance v0, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdvertProxy$SLazpz5FJdJFPt9o9l2E00B3eyI;

    invoke-direct {v0, p0, p1}, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdvertProxy$SLazpz5FJdJFPt9o9l2E00B3eyI;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 252
    :try_start_2
    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mPostcallAdvertProvider:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;

    invoke-virtual {v1, p1, p2, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->onLoadAd(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 254
    :try_start_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " LOAD ADVERT ERROR "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 255
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 258
    :cond_6
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onPause()V
    .locals 4

    monitor-enter p0

    .line 262
    :try_start_0
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mPostcallAdvertProvider:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 264
    :try_start_1
    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->onPause()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 266
    :try_start_2
    sget-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "advert provider pause error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 269
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onResume()V
    .locals 4

    monitor-enter p0

    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mPostcallAdvertProvider:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 275
    :try_start_1
    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->onResume()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 277
    :try_start_2
    sget-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "advert provider resume error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 280
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onScreenOff()V
    .locals 3

    .line 312
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    if-nez v0, :cond_0

    goto :goto_0

    .line 314
    :cond_0
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/AdvertNetwork;->name:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-virtual {v1}, Lcom/telguarder/features/advertisements/AdvertNetworkName;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertScreenOffAction(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized onStop()V
    .locals 4

    monitor-enter p0

    .line 284
    :try_start_0
    invoke-static {}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->getInstance()Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->stopPreloadKeepAlive()V

    const/4 v0, 0x0

    .line 285
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mLoadStarted:Z

    .line 286
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mLoadInProgress:Z

    .line 287
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mPostcallAdvertProvider:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 289
    :try_start_1
    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->onStop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 291
    :try_start_2
    sget-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "advert provider stop error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 294
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized preloadBackup(Landroid/content/Context;)V
    .locals 2

    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    if-nez v0, :cond_0

    .line 75
    invoke-static {}, Lcom/telguarder/features/advertisements/AdvertManager;->getInstance()Lcom/telguarder/features/advertisements/AdvertManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->getPostcallAdvertFromCache()Lcom/telguarder/features/advertisements/Advert;

    move-result-object v0

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    invoke-direct {p0, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->cleanupPreloadModule(Lcom/telguarder/features/advertisements/Advert;)V

    .line 78
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/Advert;->backupNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/Advert;->getAdvertForBackupNetwork()Lcom/telguarder/features/advertisements/Advert;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v1, v0, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/AdvertNetwork;->name:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-static {v1}, Lcom/telguarder/ApplicationConstants;->isAdNetworkEnabled(Lcom/telguarder/features/advertisements/AdvertNetworkName;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 81
    invoke-direct {p0, p1, v0, v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->preloadWhenNetAvailable(Landroid/content/Context;Lcom/telguarder/features/advertisements/Advert;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized prepareForPostcallActivity(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0

    monitor-enter p0

    .line 150
    :try_start_0
    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mHostActivity:Landroidx/appcompat/app/AppCompatActivity;

    .line 152
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->initWhyAdsHereText()V

    .line 154
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    if-nez p1, :cond_1

    .line 155
    invoke-static {}, Lcom/telguarder/features/advertisements/AdvertManager;->getInstance()Lcom/telguarder/features/advertisements/AdvertManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->getPostcallAdvertFromCache()Lcom/telguarder/features/advertisements/Advert;

    move-result-object p1

    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    if-eqz p1, :cond_1

    .line 157
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mPostcallAdvertProvider:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->detachEvents()V

    .line 158
    :cond_0
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getAdvertProvider()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mPostcallAdvertProvider:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public showAdInfoText()V
    .locals 5

    .line 397
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mAdInfoTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 398
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getWhyDoWeShowAdsHereText()Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mPostcallAdvertProvider:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->adShowBeginTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mPostcallAdvertProvider:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;

    iget-boolean v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 400
    :goto_0
    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mAdInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 401
    invoke-static {}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->isInstantiated()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->getInstance()Lcom/telguarder/features/postCallStatistics/CSViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->notifyAdInfoBox()V

    goto :goto_1

    .line 403
    :cond_1
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->initWhyAdsHereText()V

    :cond_2
    :goto_1
    return-void
.end method

.method public declared-synchronized startPreload(Landroid/content/Context;)V
    .locals 3

    monitor-enter p0

    .line 63
    :try_start_0
    invoke-static {}, Lcom/telguarder/features/advertisements/AdvertManager;->getInstance()Lcom/telguarder/features/advertisements/AdvertManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->getPostcallAdvertFromCache()Lcom/telguarder/features/advertisements/Advert;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " PRELOAD AD WATERFLOW STARTED\n        - flow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/Advert;->getFlowText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, p1, v0, v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->preloadWhenNetAvailable(Landroid/content/Context;Lcom/telguarder/features/advertisements/Advert;Z)V

    goto :goto_0

    :cond_0
    const-string p1, " PRELOAD AD WATERFLOW STARTED\n        - ADVDERT FLOW EMPTY! "

    .line 68
    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
