.class public Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdListener;
.super Ljava/lang/Object;
.source "ListbannerFacebookAdListener.java"


# static fields
.field private static mInstance:Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdListener;


# instance fields
.field private final mAdListener:Lcom/facebook/ads/NativeAdListener;

.field private mInternalListener:Lcom/facebook/ads/NativeAdListener;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdListener;->mInternalListener:Lcom/facebook/ads/NativeAdListener;

    .line 25
    new-instance v0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdListener$1;

    invoke-direct {v0, p0}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdListener$1;-><init>(Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdListener;)V

    iput-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdListener;->mAdListener:Lcom/facebook/ads/NativeAdListener;

    return-void
.end method

.method static synthetic access$000(Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdListener;)Lcom/facebook/ads/NativeAdListener;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdListener;->mInternalListener:Lcom/facebook/ads/NativeAdListener;

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdListener;
    .locals 2

    const-class v0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdListener;

    monitor-enter v0

    .line 18
    :try_start_0
    sget-object v1, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdListener;->mInstance:Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdListener;

    if-nez v1, :cond_0

    .line 19
    new-instance v1, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdListener;

    invoke-direct {v1}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdListener;-><init>()V

    sput-object v1, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdListener;->mInstance:Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdListener;

    .line 21
    :cond_0
    sget-object v1, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdListener;->mInstance:Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdListener;
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
.method public getAdListener(Lcom/facebook/ads/NativeAdListener;)Lcom/facebook/ads/NativeAdListener;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdListener;->mInternalListener:Lcom/facebook/ads/NativeAdListener;

    .line 41
    iget-object p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdListener;->mAdListener:Lcom/facebook/ads/NativeAdListener;

    return-object p1
.end method

.method public setInternalAdListener(Lcom/facebook/ads/NativeAdListener;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdListener;->mInternalListener:Lcom/facebook/ads/NativeAdListener;

    return-void
.end method
