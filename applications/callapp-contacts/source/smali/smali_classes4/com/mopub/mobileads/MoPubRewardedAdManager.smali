.class public Lcom/mopub/mobileads/MoPubRewardedAdManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/MoPubRewardedAdManager$b;,
        Lcom/mopub/mobileads/MoPubRewardedAdManager$a;,
        Lcom/mopub/mobileads/MoPubRewardedAdManager$RequestParameters;
    }
.end annotation


# static fields
.field public static final API_VERSION:I = 0x1

.field private static a:Lcom/mopub/mobileads/MoPubRewardedAdManager;

.field private static b:Landroid/content/SharedPreferences;


# instance fields
.field private final c:Landroid/os/Handler;

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/content/Context;

.field private final f:Lcom/mopub/mobileads/d;

.field private g:Lcom/mopub/mobileads/MoPubRewardedAdListener;

.field private final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mopub/common/MediationSettings;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/mopub/common/MediationSettings;",
            ">;>;"
        }
    .end annotation
.end field

.field private final j:Landroid/os/Handler;

.field private final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lcom/mopub/mobileads/RewardedAdsLoaders;


# direct methods
.method private varargs constructor <init>(Landroid/app/Activity;[Lcom/mopub/common/MediationSettings;)V
    .locals 2

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->d:Ljava/lang/ref/WeakReference;

    .line 155
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->e:Landroid/content/Context;

    .line 156
    new-instance v0, Lcom/mopub/mobileads/d;

    invoke-direct {v0}, Lcom/mopub/mobileads/d;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->f:Lcom/mopub/mobileads/d;

    .line 157
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->c:Landroid/os/Handler;

    .line 158
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->h:Ljava/util/Set;

    .line 159
    invoke-static {v0, p2}, Lcom/mopub/common/util/MoPubCollections;->addAllNonNull(Ljava/util/Collection;[Ljava/lang/Object;)V

    .line 160
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->i:Ljava/util/Map;

    .line 161
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->j:Landroid/os/Handler;

    .line 162
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Ljava/util/Map;

    .line 164
    new-instance p2, Lcom/mopub/mobileads/RewardedAdsLoaders;

    invoke-direct {p2, p0}, Lcom/mopub/mobileads/RewardedAdsLoaders;-><init>(Lcom/mopub/mobileads/MoPubRewardedAdManager;)V

    iput-object p2, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->l:Lcom/mopub/mobileads/RewardedAdsLoaders;

    const-string p2, "mopubBaseAdSettings"

    .line 167
    invoke-static {p1, p2}, Lcom/mopub/common/SharedPreferencesHelper;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    sput-object p1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->b:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic a(Lcom/mopub/mobileads/MoPubRewardedAdManager;)Lcom/mopub/mobileads/MoPubRewardedAdListener;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->g:Lcom/mopub/mobileads/MoPubRewardedAdListener;

    return-object p0
.end method

.method static synthetic a()Lcom/mopub/mobileads/MoPubRewardedAdManager;
    .locals 1

    .line 68
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    return-object v0
.end method

.method private static synthetic a(Lcom/mopub/mobileads/AdAdapter;)V
    .locals 4

    .line 611
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Base Ad failed to load rewarded ad in a timely fashion."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 612
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_TIMEOUT:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/AdAdapter;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 613
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/mopub/mobileads/-$$Lambda$6esjqDhxQMGUPrXCHOK0_N2vQdc;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/-$$Lambda$6esjqDhxQMGUPrXCHOK0_N2vQdc;-><init>(Lcom/mopub/mobileads/AdAdapter;)V

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic a(Lcom/mopub/mobileads/AdAdapter;Lcom/mopub/common/MoPubReward;Ljava/lang/String;)V
    .locals 3

    .line 920
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->f:Lcom/mopub/mobileads/d;

    .line 12167
    iget-object v0, v0, Lcom/mopub/mobileads/d;->e:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/common/MoPubReward;

    .line 12945
    invoke-virtual {p1}, Lcom/mopub/common/MoPubReward;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    move-object p1, v0

    .line 924
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 925
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 926
    sget-object p2, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object p2, p2, Lcom/mopub/mobileads/MoPubRewardedAdManager;->f:Lcom/mopub/mobileads/d;

    invoke-virtual {p2, p0}, Lcom/mopub/mobileads/d;->a(Lcom/mopub/mobileads/AdAdapter;)Ljava/util/Set;

    move-result-object p0

    .line 928
    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 932
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 935
    :goto_0
    sget-object p0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->SHOULD_REWARD:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/mopub/common/MoPubReward;->getAmount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p2, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/mopub/common/MoPubReward;->getLabel()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v1

    invoke-static {p0, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 936
    sget-object p0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object p0, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->g:Lcom/mopub/mobileads/MoPubRewardedAdListener;

    if-eqz p0, :cond_2

    .line 937
    invoke-interface {p0, v0, p1}, Lcom/mopub/mobileads/MoPubRewardedAdListener;->onRewardedAdCompleted(Ljava/util/Set;Lcom/mopub/common/MoPubReward;)V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/mopub/mobileads/MoPubRewardedAdManager;Ljava/lang/String;)V
    .locals 1

    .line 13704
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 13706
    iget-object p0, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->j:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/mopub/mobileads/MoPubRewardedAdManager;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 0

    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method private static a(Ljava/lang/Runnable;)V
    .locals 1

    .line 958
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    if-eqz v0, :cond_0

    .line 959
    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->c:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 2

    .line 13766
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 13767
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->g:Lcom/mopub/mobileads/MoPubRewardedAdListener;

    if-eqz v0, :cond_0

    .line 13768
    invoke-interface {v0, p0}, Lcom/mopub/mobileads/MoPubRewardedAdListener;->onRewardedAdStarted(Ljava/lang/String;)V

    .line 13770
    :cond_0
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object v1, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->l:Lcom/mopub/mobileads/RewardedAdsLoaders;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->e:Landroid/content/Context;

    .line 14088
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 14089
    invoke-static {v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 14091
    iget-object v1, v1, Lcom/mopub/mobileads/RewardedAdsLoaders;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mopub/mobileads/a;

    if-eqz p0, :cond_1

    .line 14096
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/a;->a(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1

    .line 326
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    if-nez v0, :cond_0

    .line 327
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->b()V

    return-void

    .line 331
    :cond_0
    invoke-direct {v0, p0, p1, p2}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->b(Ljava/lang/String;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/mopub/mobileads/AdAdapter;)Z
    .locals 1

    .line 403
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->l:Lcom/mopub/mobileads/RewardedAdsLoaders;

    .line 404
    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/RewardedAdsLoaders;->c(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 406
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdAdapter;->isReady()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic b(Lcom/mopub/mobileads/MoPubRewardedAdManager;)Lcom/mopub/mobileads/RewardedAdsLoaders;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->l:Lcom/mopub/mobileads/RewardedAdsLoaders;

    return-object p0
.end method

.method private static b()V
    .locals 4

    .line 964
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "MoPub rewarded ad was not initialized. You must call MoPub.initializeSdk() with an Activity Context before loading or attempting to show rewarded ads."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Ljava/lang/String;)V
    .locals 2

    .line 14824
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 14826
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->g:Lcom/mopub/mobileads/MoPubRewardedAdListener;

    if-eqz v0, :cond_0

    .line 14827
    invoke-interface {v0, p0}, Lcom/mopub/mobileads/MoPubRewardedAdListener;->onRewardedAdClicked(Ljava/lang/String;)V

    .line 14830
    :cond_0
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object v1, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->l:Lcom/mopub/mobileads/RewardedAdsLoaders;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->e:Landroid/content/Context;

    .line 15100
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 15101
    invoke-static {v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 15103
    iget-object v1, v1, Lcom/mopub/mobileads/RewardedAdsLoaders;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mopub/mobileads/a;

    if-eqz p0, :cond_1

    .line 15108
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/a;->b(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method static synthetic b(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1

    .line 14795
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 14796
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 14797
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->l:Lcom/mopub/mobileads/RewardedAdsLoaders;

    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/RewardedAdsLoaders;->b(Ljava/lang/String;)V

    .line 14798
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->g:Lcom/mopub/mobileads/MoPubRewardedAdListener;

    if-eqz v0, :cond_0

    .line 14799
    invoke-interface {v0, p0, p1}, Lcom/mopub/mobileads/MoPubRewardedAdListener;->onRewardedAdShowError(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 6

    .line 335
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->l:Lcom/mopub/mobileads/RewardedAdsLoaders;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/RewardedAdsLoaders;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 336
    sget-object p2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array p3, v2, [Ljava/lang/Object;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "Did not queue rewarded ad request for ad unit %s. A request is already pending."

    invoke-static {v0, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v1

    invoke-static {p2, p3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 342
    :cond_0
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v3, v2, [Ljava/lang/Object;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v1

    aput-object p2, v5, v2

    const-string v2, "Loading rewarded ad request for ad unit %s with URL %s"

    invoke-static {v4, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 344
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->l:Lcom/mopub/mobileads/RewardedAdsLoaders;

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->e:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/mopub/mobileads/RewardedAdsLoaders;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)Lcom/mopub/volley/Request;

    return-void
.end method

.method static synthetic c(Lcom/mopub/mobileads/MoPubRewardedAdManager;)Lcom/mopub/mobileads/d;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->f:Lcom/mopub/mobileads/d;

    return-object p0
.end method

.method static synthetic c(Ljava/lang/String;)V
    .locals 1

    .line 15855
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 15857
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->l:Lcom/mopub/mobileads/RewardedAdsLoaders;

    .line 16082
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 16084
    iget-object v0, v0, Lcom/mopub/mobileads/RewardedAdsLoaders;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15858
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->g:Lcom/mopub/mobileads/MoPubRewardedAdListener;

    if-eqz v0, :cond_0

    .line 15859
    invoke-interface {v0, p0}, Lcom/mopub/mobileads/MoPubRewardedAdListener;->onRewardedAdClosed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/mopub/mobileads/MoPubRewardedAdManager;)Landroid/content/Context;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->e:Landroid/content/Context;

    return-object p0
.end method

.method public static getAvailableRewards(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/mopub/common/MoPubReward;",
            ">;"
        }
    .end annotation

    .line 417
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->f:Lcom/mopub/mobileads/d;

    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/d;->c(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 420
    :cond_0
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->b()V

    .line 421
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static getGlobalMediationSettings(Ljava/lang/Class;)Lcom/mopub/common/MediationSettings;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/mopub/common/MediationSettings;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 198
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 199
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->b()V

    return-object v1

    .line 203
    :cond_0
    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mopub/common/MediationSettings;

    .line 205
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 206
    invoke-virtual {p0, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mopub/common/MediationSettings;

    return-object p0

    :cond_2
    return-object v1
.end method

.method public static getInstanceMediationSettings(Ljava/lang/Class;Ljava/lang/String;)Lcom/mopub/common/MediationSettings;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/mopub/common/MediationSettings;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 225
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 226
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->b()V

    return-object v1

    .line 230
    :cond_0
    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->i:Ljava/util/Map;

    .line 231
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-nez p1, :cond_1

    return-object v1

    .line 236
    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/common/MediationSettings;

    .line 238
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 239
    invoke-virtual {p0, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mopub/common/MediationSettings;

    return-object p0

    :cond_3
    return-object v1
.end method

.method public static hasAd(Ljava/lang/String;)Z
    .locals 1

    .line 348
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->f:Lcom/mopub/mobileads/d;

    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/d;->a(Ljava/lang/String;)Lcom/mopub/mobileads/AdAdapter;

    move-result-object v0

    .line 350
    invoke-static {p0, v0}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a(Ljava/lang/String;Lcom/mopub/mobileads/AdAdapter;)Z

    move-result p0

    return p0

    .line 352
    :cond_0
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->b()V

    const/4 p0, 0x0

    return p0
.end method

.method public static varargs declared-synchronized init(Landroid/app/Activity;[Lcom/mopub/common/MediationSettings;)V
    .locals 3

    const-class v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;

    monitor-enter v0

    .line 171
    :try_start_0
    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    if-nez v1, :cond_0

    .line 172
    new-instance v1, Lcom/mopub/mobileads/MoPubRewardedAdManager;

    invoke-direct {v1, p0, p1}, Lcom/mopub/mobileads/MoPubRewardedAdManager;-><init>(Landroid/app/Activity;[Lcom/mopub/common/MediationSettings;)V

    sput-object v1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a:Lcom/mopub/mobileads/MoPubRewardedAdManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    .line 174
    :cond_0
    :try_start_1
    sget-object p0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Tried to call init more than once. Only the first initialization call has any effect."

    aput-object v2, p1, v1

    invoke-static {p0, p1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static synthetic lambda$5WyK8KMUFpwszZ-cG0Pd5FiLhTE(Lcom/mopub/mobileads/AdAdapter;)V
    .locals 0

    invoke-static {p0}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a(Lcom/mopub/mobileads/AdAdapter;)V

    return-void
.end method

.method public static synthetic lambda$iGCzXzGJytxCmY0Kq-uWMSXDuNw(Lcom/mopub/mobileads/AdAdapter;Lcom/mopub/common/MoPubReward;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a(Lcom/mopub/mobileads/AdAdapter;Lcom/mopub/common/MoPubReward;Ljava/lang/String;)V

    return-void
.end method

.method public static varargs loadAd(Ljava/lang/String;Lcom/mopub/mobileads/MoPubRewardedAdManager$RequestParameters;[Lcom/mopub/common/MediationSettings;)V
    .locals 4

    .line 272
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 274
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    if-nez v0, :cond_0

    .line 275
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->b()V

    return-void

    .line 279
    :cond_0
    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->f:Lcom/mopub/mobileads/d;

    .line 1290
    iget-object v0, v0, Lcom/mopub/mobileads/d;->f:Ljava/lang/String;

    .line 281
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 282
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array p2, v2, [Ljava/lang/Object;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    const-string p0, "Did not queue rewarded ad request for ad unit %s. The ad is already showing."

    invoke-static {v0, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v1

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 287
    :cond_1
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->l:Lcom/mopub/mobileads/RewardedAdsLoaders;

    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/RewardedAdsLoaders;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 288
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array p2, v2, [Ljava/lang/Object;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    const-string v3, "Did not queue rewarded ad request for ad unit %s. This ad unit already finished loading and is ready to show."

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v1

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 290
    new-instance p1, Lcom/mopub/mobileads/MoPubRewardedAdManager$1;

    invoke-direct {p1, p0}, Lcom/mopub/mobileads/MoPubRewardedAdManager$1;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a(Ljava/lang/Runnable;)V

    return-void

    .line 305
    :cond_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 306
    invoke-static {v0, p2}, Lcom/mopub/common/util/MoPubCollections;->addAllNonNull(Ljava/util/Collection;[Ljava/lang/Object;)V

    .line 307
    sget-object p2, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object p2, p2, Lcom/mopub/mobileads/MoPubRewardedAdManager;->i:Ljava/util/Map;

    invoke-interface {p2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x0

    if-nez p1, :cond_3

    move-object v0, p2

    goto :goto_0

    .line 309
    :cond_3
    iget-object v0, p1, Lcom/mopub/mobileads/MoPubRewardedAdManager$RequestParameters;->mCustomerId:Ljava/lang/String;

    .line 310
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 311
    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object v1, v1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->f:Lcom/mopub/mobileads/d;

    .line 1294
    iput-object v0, v1, Lcom/mopub/mobileads/d;->g:Ljava/lang/String;

    .line 314
    :cond_4
    new-instance v0, Lcom/mopub/mobileads/WebViewAdUrlGenerator;

    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object v1, v1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;-><init>(Landroid/content/Context;)V

    .line 315
    invoke-virtual {v0, p0}, Lcom/mopub/common/AdUrlGenerator;->withAdUnitId(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;

    move-result-object v1

    if-nez p1, :cond_5

    move-object v2, p2

    goto :goto_1

    :cond_5
    iget-object v2, p1, Lcom/mopub/mobileads/MoPubRewardedAdManager$RequestParameters;->mKeywords:Ljava/lang/String;

    .line 316
    :goto_1
    invoke-virtual {v1, v2}, Lcom/mopub/common/AdUrlGenerator;->withKeywords(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;

    move-result-object v1

    if-eqz p1, :cond_7

    .line 318
    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    iget-object p1, p1, Lcom/mopub/mobileads/MoPubRewardedAdManager$RequestParameters;->mUserDataKeywords:Ljava/lang/String;

    goto :goto_3

    :cond_7
    :goto_2
    move-object p1, p2

    .line 317
    :goto_3
    invoke-virtual {v1, p1}, Lcom/mopub/common/AdUrlGenerator;->withUserDataKeywords(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;

    .line 1442
    invoke-static {v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 1445
    sget-object p1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object p1, p1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->e:Landroid/content/Context;

    invoke-static {p1}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getDeviceDimensions()Landroid/graphics/Point;

    move-result-object p1

    .line 1446
    invoke-virtual {v0, p1}, Lcom/mopub/common/AdUrlGenerator;->withRequestedAdSize(Landroid/graphics/Point;)Lcom/mopub/common/AdUrlGenerator;

    .line 1449
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt p1, v1, :cond_8

    .line 1450
    sget-object p1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object p1, p1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-eqz p1, :cond_8

    .line 1454
    sget-object p1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object p1, p1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 1458
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 1462
    invoke-virtual {v0, p1}, Lcom/mopub/common/AdUrlGenerator;->withWindowInsets(Landroid/view/WindowInsets;)Lcom/mopub/common/AdUrlGenerator;

    .line 322
    :cond_8
    sget-object p1, Lcom/mopub/common/Constants;->HOST:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/mopub/common/AdUrlGenerator;->generateUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public static onRewardedAdClicked(Lcom/mopub/mobileads/AdAdapter;Ljava/lang/String;)V
    .locals 1

    .line 804
    sget-object p1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object p1, p1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->f:Lcom/mopub/mobileads/d;

    .line 8290
    iget-object p1, p1, Lcom/mopub/mobileads/d;->f:Ljava/lang/String;

    .line 806
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 807
    new-instance p1, Lcom/mopub/mobileads/MoPubRewardedAdManager$12;

    invoke-direct {p1, p0}, Lcom/mopub/mobileads/MoPubRewardedAdManager$12;-><init>(Lcom/mopub/mobileads/AdAdapter;)V

    invoke-static {p1}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a(Ljava/lang/Runnable;)V

    return-void

    .line 814
    :cond_0
    new-instance p0, Lcom/mopub/mobileads/MoPubRewardedAdManager$13;

    invoke-direct {p0, p1}, Lcom/mopub/mobileads/MoPubRewardedAdManager$13;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onRewardedAdClosed(Lcom/mopub/mobileads/AdAdapter;Ljava/lang/String;)V
    .locals 1

    .line 834
    sget-object p1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object p1, p1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->f:Lcom/mopub/mobileads/d;

    .line 9290
    iget-object p1, p1, Lcom/mopub/mobileads/d;->f:Ljava/lang/String;

    .line 836
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 837
    new-instance p1, Lcom/mopub/mobileads/MoPubRewardedAdManager$2;

    invoke-direct {p1, p0}, Lcom/mopub/mobileads/MoPubRewardedAdManager$2;-><init>(Lcom/mopub/mobileads/AdAdapter;)V

    invoke-static {p1}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 844
    :cond_0
    new-instance p0, Lcom/mopub/mobileads/MoPubRewardedAdManager$3;

    invoke-direct {p0, p1}, Lcom/mopub/mobileads/MoPubRewardedAdManager$3;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a(Ljava/lang/Runnable;)V

    .line 851
    :goto_0
    sget-object p0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object p0, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->f:Lcom/mopub/mobileads/d;

    const/4 p1, 0x0

    .line 10278
    iput-object p1, p0, Lcom/mopub/mobileads/d;->f:Ljava/lang/String;

    return-void
.end method

.method public static onRewardedAdCompleted(Lcom/mopub/mobileads/AdAdapter;Ljava/lang/String;Lcom/mopub/common/MoPubReward;)V
    .locals 1

    .line 867
    sget-object p1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object p1, p1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->f:Lcom/mopub/mobileads/d;

    .line 10290
    iget-object p1, p1, Lcom/mopub/mobileads/d;->f:Ljava/lang/String;

    .line 10919
    new-instance v0, Lcom/mopub/mobileads/-$$Lambda$MoPubRewardedAdManager$iGCzXzGJytxCmY0Kq-uWMSXDuNw;

    invoke-direct {v0, p0, p2, p1}, Lcom/mopub/mobileads/-$$Lambda$MoPubRewardedAdManager$iGCzXzGJytxCmY0Kq-uWMSXDuNw;-><init>(Lcom/mopub/mobileads/AdAdapter;Lcom/mopub/common/MoPubReward;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a(Ljava/lang/Runnable;)V

    .line 11875
    sget-object p0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object p0, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->f:Lcom/mopub/mobileads/d;

    .line 12159
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 12162
    :cond_0
    iget-object p0, p0, Lcom/mopub/mobileads/d;->c:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 11877
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 11878
    new-instance p2, Lcom/mopub/mobileads/MoPubRewardedAdManager$4;

    invoke-direct {p2, p1, p0}, Lcom/mopub/mobileads/MoPubRewardedAdManager$4;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public static onRewardedAdLoadFailure(Lcom/mopub/mobileads/AdAdapter;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 0

    .line 733
    new-instance p1, Lcom/mopub/mobileads/MoPubRewardedAdManager$7;

    invoke-direct {p1, p0, p2}, Lcom/mopub/mobileads/MoPubRewardedAdManager$7;-><init>(Lcom/mopub/mobileads/AdAdapter;Lcom/mopub/mobileads/MoPubErrorCode;)V

    invoke-static {p1}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onRewardedAdLoadSuccess(Lcom/mopub/mobileads/AdAdapter;Ljava/lang/String;)V
    .locals 0

    .line 720
    new-instance p1, Lcom/mopub/mobileads/MoPubRewardedAdManager$6;

    invoke-direct {p1, p0}, Lcom/mopub/mobileads/MoPubRewardedAdManager$6;-><init>(Lcom/mopub/mobileads/AdAdapter;)V

    invoke-static {p1}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onRewardedAdShowError(Lcom/mopub/mobileads/AdAdapter;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1

    .line 774
    sget-object p1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object p1, p1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->f:Lcom/mopub/mobileads/d;

    .line 7290
    iget-object p1, p1, Lcom/mopub/mobileads/d;->f:Ljava/lang/String;

    .line 776
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 777
    new-instance p1, Lcom/mopub/mobileads/MoPubRewardedAdManager$10;

    invoke-direct {p1, p0, p2}, Lcom/mopub/mobileads/MoPubRewardedAdManager$10;-><init>(Lcom/mopub/mobileads/AdAdapter;Lcom/mopub/mobileads/MoPubErrorCode;)V

    invoke-static {p1}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 784
    :cond_0
    new-instance p0, Lcom/mopub/mobileads/MoPubRewardedAdManager$11;

    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/MoPubRewardedAdManager$11;-><init>(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    invoke-static {p0}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a(Ljava/lang/Runnable;)V

    .line 791
    :goto_0
    sget-object p0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object p0, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->f:Lcom/mopub/mobileads/d;

    const/4 p1, 0x0

    .line 8278
    iput-object p1, p0, Lcom/mopub/mobileads/d;->f:Ljava/lang/String;

    return-void
.end method

.method public static onRewardedAdStarted(Lcom/mopub/mobileads/AdAdapter;Ljava/lang/String;)V
    .locals 1

    .line 746
    sget-object p1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object p1, p1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->f:Lcom/mopub/mobileads/d;

    .line 6290
    iget-object p1, p1, Lcom/mopub/mobileads/d;->f:Ljava/lang/String;

    .line 748
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 749
    new-instance p1, Lcom/mopub/mobileads/MoPubRewardedAdManager$8;

    invoke-direct {p1, p0}, Lcom/mopub/mobileads/MoPubRewardedAdManager$8;-><init>(Lcom/mopub/mobileads/AdAdapter;)V

    invoke-static {p1}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a(Ljava/lang/Runnable;)V

    return-void

    .line 756
    :cond_0
    new-instance p0, Lcom/mopub/mobileads/MoPubRewardedAdManager$9;

    invoke-direct {p0, p1}, Lcom/mopub/mobileads/MoPubRewardedAdManager$9;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static selectReward(Ljava/lang/String;Lcom/mopub/common/MoPubReward;)V
    .locals 5

    .line 434
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    if-eqz v0, :cond_3

    .line 435
    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->f:Lcom/mopub/mobileads/d;

    .line 4122
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 4123
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 4125
    iget-object v1, v0, Lcom/mopub/mobileads/d;->b:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 4126
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 4132
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4133
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v0, v3, [Ljava/lang/Object;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    const-string p0, "Selected reward is invalid for AdUnit %s."

    invoke-static {v1, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v2

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 4138
    :cond_1
    invoke-virtual {p1}, Lcom/mopub/common/MoPubReward;->getLabel()Ljava/lang/String;

    move-result-object v1

    .line 4139
    invoke-virtual {p1}, Lcom/mopub/common/MoPubReward;->getAmount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 4138
    invoke-virtual {v0, p0, v1, p1}, Lcom/mopub/mobileads/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4127
    :cond_2
    :goto_0
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v0, v3, [Ljava/lang/Object;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    const-string p0, "AdUnit %s does not have any rewards."

    invoke-static {v1, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v2

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 437
    :cond_3
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->b()V

    return-void
.end method

.method public static setRewardedAdListener(Lcom/mopub/mobileads/MoPubRewardedAdListener;)V
    .locals 1

    .line 251
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    if-eqz v0, :cond_0

    .line 252
    iput-object p0, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->g:Lcom/mopub/mobileads/MoPubRewardedAdListener;

    return-void

    .line 254
    :cond_0
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->b()V

    return-void
.end method

.method public static showAd(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 358
    invoke-static {p0, v0}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->showAd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static showAd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 363
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    if-nez v0, :cond_0

    .line 364
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->b()V

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 368
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x2000

    if-le v2, v3, :cond_1

    .line 369
    sget-object v2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v4, v1, [Ljava/lang/Object;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 373
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v1

    const-string v3, "Provided rewarded ad custom data parameter longer than supported(%d bytes, %d maximum)"

    .line 369
    invoke-static {v5, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v0

    invoke-static {v2, v4}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 376
    :cond_1
    sget-object v2, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object v2, v2, Lcom/mopub/mobileads/MoPubRewardedAdManager;->f:Lcom/mopub/mobileads/d;

    invoke-virtual {v2, p0}, Lcom/mopub/mobileads/d;->a(Ljava/lang/String;)Lcom/mopub/mobileads/AdAdapter;

    move-result-object v2

    .line 377
    invoke-static {p0, v2}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a(Ljava/lang/String;Lcom/mopub/mobileads/AdAdapter;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 379
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->f:Lcom/mopub/mobileads/d;

    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/d;->c(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->f:Lcom/mopub/mobileads/d;

    .line 380
    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/d;->b(Ljava/lang/String;)Lcom/mopub/common/MoPubReward;

    move-result-object v0

    if-nez v0, :cond_2

    .line 381
    sget-object p1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->REWARD_NOT_SELECTED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p1, p0, v0}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    .line 385
    :cond_2
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->f:Lcom/mopub/mobileads/d;

    .line 387
    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/d;->b(Ljava/lang/String;)Lcom/mopub/common/MoPubReward;

    move-result-object v1

    .line 2241
    invoke-static {v2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 2242
    iget-object v0, v0, Lcom/mopub/mobileads/d;->e:Ljava/util/Map;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->f:Lcom/mopub/mobileads/d;

    .line 2283
    invoke-static {p0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;)Z

    .line 2285
    iget-object v0, v0, Lcom/mopub/mobileads/d;->d:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    sget-object p1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object p1, p1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->f:Lcom/mopub/mobileads/d;

    .line 3278
    iput-object p0, p1, Lcom/mopub/mobileads/d;->f:Ljava/lang/String;

    const/4 p0, 0x0

    .line 390
    invoke-virtual {v2, p0}, Lcom/mopub/mobileads/AdAdapter;->a(Lcom/mopub/mobileads/MoPubAd;)V

    return-void

    .line 392
    :cond_3
    sget-object p1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object p1, p1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->l:Lcom/mopub/mobileads/RewardedAdsLoaders;

    invoke-virtual {p1, p0}, Lcom/mopub/mobileads/RewardedAdsLoaders;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 393
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Rewarded ad is not ready to be shown yet."

    aput-object v2, v1, v0

    invoke-static {p1, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    goto :goto_0

    .line 395
    :cond_4
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "No rewarded ad loading or loaded."

    aput-object v2, v1, v0

    invoke-static {p1, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 398
    :goto_0
    sget-object p1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->AD_NOT_AVAILABLE:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p1, p0, v0}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public static updateActivity(Landroid/app/Activity;)V
    .locals 2

    .line 181
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    if-eqz v0, :cond_0

    .line 182
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->d:Ljava/lang/ref/WeakReference;

    return-void

    .line 184
    :cond_0
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->b()V

    return-void
.end method


# virtual methods
.method final a(Lcom/mopub/network/AdResponse;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 468
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/network/AdResponse;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x7530

    .line 470
    invoke-virtual {v1, v3}, Lcom/mopub/network/AdResponse;->getAdTimeoutMillis(I)Ljava/lang/Integer;

    move-result-object v4

    .line 471
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/network/AdResponse;->getBaseAdClassName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_0

    .line 474
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "Couldn\'t create base ad, class name was null."

    aput-object v4, v3, v6

    invoke-static {v1, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 475
    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {v0, v2, v1}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    .line 481
    :cond_0
    iget-object v8, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->f:Lcom/mopub/mobileads/d;

    invoke-virtual {v8, v2}, Lcom/mopub/mobileads/d;->a(Ljava/lang/String;)Lcom/mopub/mobileads/AdAdapter;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 483
    invoke-virtual {v8}, Lcom/mopub/mobileads/AdAdapter;->b()V

    .line 487
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/network/AdResponse;->getRewardedCurrencies()Ljava/lang/String;

    move-result-object v8

    .line 490
    iget-object v9, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->f:Lcom/mopub/mobileads/d;

    .line 4143
    invoke-static {v2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 4144
    iget-object v9, v9, Lcom/mopub/mobileads/d;->b:Ljava/util/Map;

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    if-eqz v9, :cond_2

    .line 4145
    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    .line 4146
    invoke-interface {v9}, Ljava/util/Set;->clear()V

    .line 493
    :cond_2
    iget-object v9, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->f:Lcom/mopub/mobileads/d;

    .line 4151
    invoke-static {v2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    const/4 v10, 0x0

    .line 4154
    invoke-virtual {v9, v2, v10, v10}, Lcom/mopub/mobileads/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 498
    iget-object v8, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->f:Lcom/mopub/mobileads/d;

    .line 499
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/network/AdResponse;->getRewardedAdCurrencyName()Ljava/lang/String;

    move-result-object v9

    .line 500
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/network/AdResponse;->getRewardedAdCurrencyAmount()Ljava/lang/String;

    move-result-object v11

    .line 498
    invoke-virtual {v8, v2, v9, v11}, Lcom/mopub/mobileads/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 4668
    :cond_3
    :try_start_0
    invoke-static {v8}, Lcom/mopub/common/util/Json;->jsonStringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v9

    const-string v11, "rewards"

    .line 4670
    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Lcom/mopub/common/util/Json;->jsonArrayToStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 4673
    array-length v11, v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const-string v12, "amount"

    const-string v13, "name"

    if-ne v11, v7, :cond_4

    .line 4674
    :try_start_1
    aget-object v11, v9, v6

    invoke-static {v11}, Lcom/mopub/common/util/Json;->jsonStringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v11

    .line 4675
    iget-object v14, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->f:Lcom/mopub/mobileads/d;

    .line 4677
    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 4678
    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 4675
    invoke-virtual {v14, v2, v15, v11}, Lcom/mopub/mobileads/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4682
    :cond_4
    array-length v11, v9

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v11, :cond_9

    aget-object v15, v9, v14

    .line 4683
    invoke-static {v15}, Lcom/mopub/common/util/Json;->jsonStringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v15

    .line 4684
    iget-object v3, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->f:Lcom/mopub/mobileads/d;

    .line 4686
    invoke-interface {v15, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v10, v16

    check-cast v10, Ljava/lang/String;

    .line 4687
    invoke-interface {v15, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 5082
    invoke-static {v2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    if-eqz v10, :cond_8

    if-nez v15, :cond_5

    goto/16 :goto_2

    .line 5091
    :cond_5
    :try_start_2
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-gez v6, :cond_6

    .line 5099
    :try_start_3
    sget-object v3, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v6, v7, [Ljava/lang/Object;

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v17, v9

    const-string v9, "Currency amount cannot be negative: %s"

    move/from16 v18, v11

    new-array v11, v7, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v15, v11, v16

    invoke-static {v10, v9, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v16

    invoke-static {v3, v6}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    move-object/from16 v17, v9

    move/from16 v18, v11

    .line 5104
    iget-object v9, v3, Lcom/mopub/mobileads/d;->b:Ljava/util/Map;

    invoke-interface {v9, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 5105
    iget-object v3, v3, Lcom/mopub/mobileads/d;->b:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 5106
    invoke-static {v10, v6}, Lcom/mopub/common/MoPubReward;->success(Ljava/lang/String;I)Lcom/mopub/common/MoPubReward;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5108
    :cond_7
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 5109
    invoke-static {v10, v6}, Lcom/mopub/common/MoPubReward;->success(Ljava/lang/String;I)Lcom/mopub/common/MoPubReward;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5110
    iget-object v3, v3, Lcom/mopub/mobileads/d;->b:Ljava/util/Map;

    invoke-interface {v3, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-object/from16 v17, v9

    move/from16 v18, v11

    .line 5093
    sget-object v3, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v6, v7, [Ljava/lang/Object;

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "Currency amount must be an integer: %s"

    new-array v11, v7, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v15, v11, v16

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v16

    invoke-static {v3, v6}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_1
    move-object/from16 v19, v12

    goto :goto_3

    :cond_8
    :goto_2
    move-object/from16 v17, v9

    move/from16 v18, v11

    .line 5084
    sget-object v3, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v6, v7, [Ljava/lang/Object;

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "Currency name and amount cannot be null: name = %s, amount = %s"

    move-object/from16 v19, v12

    const/4 v7, 0x2

    new-array v12, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v10, v12, v7

    const/4 v10, 0x1

    aput-object v15, v12, v10

    invoke-static {v9, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-static {v3, v6}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v9, v17

    move/from16 v11, v18

    move-object/from16 v12, v19

    const/16 v3, 0x7530

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto/16 :goto_0

    .line 511
    :cond_9
    :goto_4
    iget-object v3, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->f:Lcom/mopub/mobileads/d;

    .line 512
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/network/AdResponse;->getRewardedAdCompletionUrl()Ljava/lang/String;

    move-result-object v6

    .line 5225
    invoke-static {v2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 5226
    iget-object v3, v3, Lcom/mopub/mobileads/d;->c:Ljava/util/Map;

    invoke-interface {v3, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    iget-object v3, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    if-nez v3, :cond_a

    .line 516
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Could not load base ad because Activity reference was null. Call MoPub#updateActivity before requesting more rewarded ads."

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 521
    iget-object v1, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->l:Lcom/mopub/mobileads/RewardedAdsLoaders;

    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/RewardedAdsLoaders;->b(Ljava/lang/String;)V

    return-void

    .line 526
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/network/AdResponse;->getServerExtras()Ljava/util/Map;

    move-result-object v3

    .line 531
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .line 532
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/network/AdResponse;->getImpressionMinVisibleDips()Ljava/lang/String;

    move-result-object v7

    .line 533
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/network/AdResponse;->getImpressionMinVisibleMs()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x7530

    .line 534
    invoke-virtual {v1, v9}, Lcom/mopub/network/AdResponse;->getAdTimeoutMillis(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 536
    sget-object v10, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v14, 0x2

    new-array v15, v14, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v5, v15, v14

    aput-object v6, v15, v11

    const-string v11, "Updating init settings for base ad %s with params %s"

    invoke-static {v13, v11, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v12, v14

    invoke-static {v10, v12}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 540
    sget-object v10, Lcom/mopub/mobileads/MoPubRewardedAdManager;->b:Landroid/content/SharedPreferences;

    .line 541
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 542
    invoke-interface {v10, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 543
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v6, "html-response-body"

    .line 545
    invoke-interface {v3, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 547
    new-instance v10, Lcom/mopub/mobileads/AdData$Builder;

    invoke-direct {v10}, Lcom/mopub/mobileads/AdData$Builder;-><init>()V

    .line 548
    invoke-virtual {v10, v2}, Lcom/mopub/mobileads/AdData$Builder;->adUnit(Ljava/lang/String;)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v10

    const/4 v11, 0x1

    .line 549
    invoke-virtual {v10, v11}, Lcom/mopub/mobileads/AdData$Builder;->isRewarded(Z)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v10

    .line 552
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/network/AdResponse;->getFullAdType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/mopub/mobileads/AdData$Builder;->adType(Ljava/lang/String;)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v10

    if-eqz v6, :cond_b

    goto :goto_5

    :cond_b
    const-string v6, ""

    .line 553
    :goto_5
    invoke-virtual {v10, v6}, Lcom/mopub/mobileads/AdData$Builder;->adPayload(Ljava/lang/String;)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v6

    .line 554
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/network/AdResponse;->getRewardedAdCurrencyName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/mopub/mobileads/AdData$Builder;->currencyName(Ljava/lang/String;)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v6

    .line 555
    invoke-virtual {v6, v7}, Lcom/mopub/mobileads/AdData$Builder;->impressionMinVisibleDips(Ljava/lang/String;)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v6

    .line 556
    invoke-virtual {v6, v8}, Lcom/mopub/mobileads/AdData$Builder;->impressionMinVisibleMs(Ljava/lang/String;)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v6

    .line 557
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/network/AdResponse;->getDspCreativeId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mopub/mobileads/AdData$Builder;->dspCreativeId(Ljava/lang/String;)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v6

    .line 558
    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/mopub/mobileads/AdData$Builder;->broadcastIdentifier(J)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v6

    .line 559
    invoke-virtual {v6, v9}, Lcom/mopub/mobileads/AdData$Builder;->timeoutDelayMillis(I)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v6

    iget-object v7, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->f:Lcom/mopub/mobileads/d;

    .line 5299
    iget-object v7, v7, Lcom/mopub/mobileads/d;->g:Ljava/lang/String;

    .line 560
    invoke-virtual {v6, v7}, Lcom/mopub/mobileads/AdData$Builder;->customerId(Ljava/lang/String;)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v6

    const/4 v7, 0x0

    .line 561
    invoke-virtual {v6, v7}, Lcom/mopub/mobileads/AdData$Builder;->allowCustomClose(Z)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v6

    .line 562
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/network/AdResponse;->getViewabilityVendors()Ljava/util/Set;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mopub/mobileads/AdData$Builder;->viewabilityVendors(Ljava/util/Set;)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v6

    .line 563
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/network/AdResponse;->getFullAdType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mopub/mobileads/AdData$Builder;->fullAdType(Ljava/lang/String;)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v6

    .line 564
    invoke-virtual {v6, v3}, Lcom/mopub/mobileads/AdData$Builder;->extras(Ljava/util/Map;)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v3

    .line 566
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/network/AdResponse;->getRewardedDuration()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_c

    .line 568
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/mopub/mobileads/AdData$Builder;->rewardedDurationSeconds(I)Lcom/mopub/mobileads/AdData$Builder;

    .line 571
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/network/AdResponse;->getRewardedAdCurrencyAmount()Ljava/lang/String;

    move-result-object v1

    .line 573
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 575
    :try_start_4
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1

    const/16 v16, 0x0

    goto :goto_7

    .line 577
    :catch_1
    sget-object v6, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "Unable to convert currency amount: "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Using the default reward amount: 0"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v16, 0x0

    aput-object v1, v8, v16

    invoke-static {v6, v8}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    goto :goto_6

    :cond_d
    const/16 v16, 0x0

    :goto_6
    const/4 v1, 0x0

    .line 583
    :goto_7
    invoke-virtual {v3, v1}, Lcom/mopub/mobileads/AdData$Builder;->currencyAmount(I)Lcom/mopub/mobileads/AdData$Builder;

    .line 586
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v9, v6, [Ljava/lang/Object;

    aput-object v5, v9, v16

    const-string v6, "Loading base ad with class name %s"

    invoke-static {v8, v6, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v16

    invoke-static {v1, v7}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :try_start_5
    const-string v1, "com.mopub.mobileads.FullscreenAdAdapter"

    .line 591
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v6, Lcom/mopub/mobileads/AdAdapter;

    .line 592
    invoke-virtual {v1, v6}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/Class;

    .line 593
    const-class v8, Landroid/content/Context;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const-class v8, Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const-class v8, Lcom/mopub/mobileads/AdData;

    const/4 v10, 0x2

    aput-object v8, v7, v10

    invoke-virtual {v1, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 600
    invoke-virtual {v1, v9}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v6, v6, [Ljava/lang/Object;

    .line 601
    sget-object v7, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object v7, v7, Lcom/mopub/mobileads/MoPubRewardedAdManager;->d:Ljava/lang/ref/WeakReference;

    .line 602
    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/4 v7, 0x1

    aput-object v5, v6, v7

    .line 604
    invoke-virtual {v3}, Lcom/mopub/mobileads/AdData$Builder;->build()Lcom/mopub/mobileads/AdData;

    move-result-object v3

    const/4 v7, 0x2

    aput-object v3, v6, v7

    .line 601
    invoke-virtual {v1, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/mobileads/AdAdapter;

    .line 607
    new-instance v3, Lcom/mopub/mobileads/MoPubRewardedAdManager$b;

    invoke-direct {v3, v1}, Lcom/mopub/mobileads/MoPubRewardedAdManager$b;-><init>(Lcom/mopub/mobileads/AdAdapter;)V

    .line 610
    new-instance v6, Lcom/mopub/mobileads/-$$Lambda$MoPubRewardedAdManager$5WyK8KMUFpwszZ-cG0Pd5FiLhTE;

    invoke-direct {v6, v1}, Lcom/mopub/mobileads/-$$Lambda$MoPubRewardedAdManager$5WyK8KMUFpwszZ-cG0Pd5FiLhTE;-><init>(Lcom/mopub/mobileads/AdAdapter;)V

    .line 616
    iget-object v7, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->j:Landroid/os/Handler;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v8, v4

    invoke-virtual {v7, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 617
    iget-object v4, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Ljava/util/Map;

    invoke-interface {v4, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    invoke-virtual {v1, v3}, Lcom/mopub/mobileads/AdAdapter;->load(Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;)V

    .line 620
    invoke-virtual {v1, v3}, Lcom/mopub/mobileads/AdAdapter;->a(Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;)V

    .line 622
    invoke-virtual {v1}, Lcom/mopub/mobileads/AdAdapter;->d()Ljava/lang/String;

    .line 623
    iget-object v3, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->f:Lcom/mopub/mobileads/d;

    .line 6187
    invoke-static {v2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 6188
    invoke-static {v1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 6190
    iget-object v4, v3, Lcom/mopub/mobileads/d;->a:Ljava/util/Map;

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6191
    invoke-virtual {v3, v1, v2}, Lcom/mopub/mobileads/d;->a(Lcom/mopub/mobileads/AdAdapter;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    return-void

    .line 625
    :catch_2
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v3, v7

    const-string v5, "Couldn\'t create base ad with class name %s"

    invoke-static {v6, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v7

    invoke-static {v1, v4}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 627
    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {v0, v2, v1}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    .line 505
    :catch_3
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Error parsing rewarded currencies JSON header: "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 506
    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->REWARDED_CURRENCIES_PARSING_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {v0, v2, v1}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method final a(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1

    .line 692
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 693
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 695
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->l:Lcom/mopub/mobileads/RewardedAdsLoaders;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/RewardedAdsLoaders;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->EXPIRED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/MoPubErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 696
    invoke-static {p1, v0, p2}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    .line 697
    :cond_0
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->g:Lcom/mopub/mobileads/MoPubRewardedAdListener;

    if-eqz v0, :cond_1

    .line 698
    invoke-interface {v0, p1, p2}, Lcom/mopub/mobileads/MoPubRewardedAdListener;->onRewardedAdLoadFailure(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 699
    iget-object p2, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->l:Lcom/mopub/mobileads/RewardedAdsLoaders;

    invoke-virtual {p2, p1}, Lcom/mopub/mobileads/RewardedAdsLoaders;->b(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
