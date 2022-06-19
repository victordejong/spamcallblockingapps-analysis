.class public Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;
.super Ljava/lang/Object;
.source "PostcallAdmobListener.java"


# static fields
.field private static mInstance:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;


# instance fields
.field public ADMOB:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private adListener:Lcom/google/android/gms/ads/AdListener;

.field private mContext:Landroid/content/Context;

.field private mPreloader:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;

.field private mProvider:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener$1;

    invoke-direct {v0, p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener$1;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;)V

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->adListener:Lcom/google/android/gms/ads/AdListener;

    return-void
.end method

.method static synthetic access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;)Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->mProvider:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;

    return-object p0
.end method

.method static synthetic access$100(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;)Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->mPreloader:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;

    return-object p0
.end method

.method static synthetic access$300(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;)Landroid/content/Context;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;
    .locals 2

    const-class v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->mInstance:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    invoke-direct {v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;-><init>()V

    sput-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->mInstance:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    .line 37
    :cond_0
    sget-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->mInstance:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;
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
.method public getAdListener()Lcom/google/android/gms/ads/AdListener;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->adListener:Lcom/google/android/gms/ads/AdListener;

    return-object v0
.end method

.method public initListener(Landroid/content/Context;Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->mPreloader:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;

    .line 44
    iput-object p3, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->mProvider:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;

    if-eqz p2, :cond_0

    .line 45
    sget-object p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->TAG:Ljava/lang/String;

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    sget-object p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->TAG:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-class p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->TAG:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 46
    iget-object p1, p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->ADMOB:Ljava/lang/String;

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_3

    iget-object p1, p3, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->ADMOB:Ljava/lang/String;

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/telguarder/features/advertisements/AdvertNetworkName;->ADMOB:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-virtual {p1}, Lcom/telguarder/features/advertisements/AdvertNetworkName;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->ADMOB:Ljava/lang/String;

    return-void
.end method
