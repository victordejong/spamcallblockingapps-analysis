.class public Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;
.super Ljava/lang/Object;
.source "PostcallFacebookBannerAdListener.java"


# static fields
.field private static mInstance:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;


# instance fields
.field private mAdListener:Lcom/facebook/ads/AdListener;

.field private mInternalListener:Lcom/facebook/ads/AdListener;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;->mInternalListener:Lcom/facebook/ads/AdListener;

    .line 25
    new-instance v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener$1;

    invoke-direct {v0, p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener$1;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;)V

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;->mAdListener:Lcom/facebook/ads/AdListener;

    return-void
.end method

.method static synthetic access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;)Lcom/facebook/ads/AdListener;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;->mInternalListener:Lcom/facebook/ads/AdListener;

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;
    .locals 2

    const-class v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;

    monitor-enter v0

    .line 18
    :try_start_0
    sget-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;->mInstance:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;

    if-nez v1, :cond_0

    .line 19
    new-instance v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;

    invoke-direct {v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;-><init>()V

    sput-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;->mInstance:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;

    .line 21
    :cond_0
    sget-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;->mInstance:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getAdListener(Lcom/facebook/ads/AdListener;)Lcom/facebook/ads/AdListener;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;->mInternalListener:Lcom/facebook/ads/AdListener;

    .line 39
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;->mAdListener:Lcom/facebook/ads/AdListener;

    return-object p1
.end method

.method public setInternalAdListener(Lcom/facebook/ads/AdListener;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;->mInternalListener:Lcom/facebook/ads/AdListener;

    return-void
.end method
