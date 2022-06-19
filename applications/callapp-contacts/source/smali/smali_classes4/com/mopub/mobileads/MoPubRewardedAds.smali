.class public final Lcom/mopub/mobileads/MoPubRewardedAds;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0007J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0007H\u0007J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0003J7\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0016\u0010\u0013\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00150\u0014\"\u0004\u0018\u00010\u0015H\u0007\u00a2\u0006\u0002\u0010\u0016J-\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u00072\u0016\u0010\u0013\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00150\u0014\"\u0004\u0018\u00010\u0015H\u0007\u00a2\u0006\u0002\u0010\u0017J\u0018\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u0005H\u0007J\u0012\u0010\u001a\u001a\u00020\u000b2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0007J\u0010\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u0007H\u0007J\u001a\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0007H\u0007\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/mopub/mobileads/MoPubRewardedAds;",
        "",
        "()V",
        "getAvailableRewards",
        "",
        "Lcom/mopub/common/MoPubReward;",
        "adUnitId",
        "",
        "hasRewardedAd",
        "",
        "initializeRewardedAds",
        "",
        "activity",
        "Landroid/app/Activity;",
        "sdkConfiguration",
        "Lcom/mopub/common/SdkConfiguration;",
        "loadRewardedAd",
        "requestParameters",
        "Lcom/mopub/mobileads/MoPubRewardedAdManager$RequestParameters;",
        "mediationSettings",
        "",
        "Lcom/mopub/common/MediationSettings;",
        "(Ljava/lang/String;Lcom/mopub/mobileads/MoPubRewardedAdManager$RequestParameters;[Lcom/mopub/common/MediationSettings;)V",
        "(Ljava/lang/String;[Lcom/mopub/common/MediationSettings;)V",
        "selectReward",
        "selectedReward",
        "setRewardedAdListener",
        "listener",
        "Lcom/mopub/mobileads/MoPubRewardedAdListener;",
        "showRewardedAd",
        "customData",
        "mopub-sdk-fullscreen_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/mopub/mobileads/MoPubRewardedAds;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/mopub/mobileads/MoPubRewardedAds;

    invoke-direct {v0}, Lcom/mopub/mobileads/MoPubRewardedAds;-><init>()V

    sput-object v0, Lcom/mopub/mobileads/MoPubRewardedAds;->INSTANCE:Lcom/mopub/mobileads/MoPubRewardedAds;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getAvailableRewards(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation runtime Lcom/mopub/common/util/ReflectionTarget;
    .end annotation

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

    const-string v0, "adUnitId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-static {p0}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->getAvailableRewards(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    const-string v0, "MoPubRewardedAdManager.g\u2026vailableRewards(adUnitId)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final hasRewardedAd(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Lcom/mopub/common/util/ReflectionTarget;
    .end annotation

    const-string v0, "adUnitId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-static {p0}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->hasAd(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static final initializeRewardedAds(Landroid/app/Activity;Lcom/mopub/common/SdkConfiguration;)V
    .locals 1
    .annotation runtime Lcom/mopub/common/util/ReflectionTarget;
    .end annotation

    .line 25
    invoke-virtual {p1}, Lcom/mopub/common/SdkConfiguration;->getMediationSettings()[Lcom/mopub/common/MediationSettings;

    move-result-object p1

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/mopub/common/MediationSettings;

    invoke-static {p0, p1}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->init(Landroid/app/Activity;[Lcom/mopub/common/MediationSettings;)V

    return-void
.end method

.method public static final varargs loadRewardedAd(Ljava/lang/String;Lcom/mopub/mobileads/MoPubRewardedAdManager$RequestParameters;[Lcom/mopub/common/MediationSettings;)V
    .locals 1
    .annotation runtime Lcom/mopub/common/util/ReflectionTarget;
    .end annotation

    const-string v0, "adUnitId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediationSettings"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/mopub/common/MediationSettings;

    invoke-static {p0, p1, p2}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->loadAd(Ljava/lang/String;Lcom/mopub/mobileads/MoPubRewardedAdManager$RequestParameters;[Lcom/mopub/common/MediationSettings;)V

    return-void
.end method

.method public static final varargs loadRewardedAd(Ljava/lang/String;[Lcom/mopub/common/MediationSettings;)V
    .locals 1
    .annotation runtime Lcom/mopub/common/util/ReflectionTarget;
    .end annotation

    const-string v0, "adUnitId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediationSettings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/mopub/common/MediationSettings;

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->loadAd(Ljava/lang/String;Lcom/mopub/mobileads/MoPubRewardedAdManager$RequestParameters;[Lcom/mopub/common/MediationSettings;)V

    return-void
.end method

.method public static final selectReward(Ljava/lang/String;Lcom/mopub/common/MoPubReward;)V
    .locals 1
    .annotation runtime Lcom/mopub/common/util/ReflectionTarget;
    .end annotation

    const-string v0, "adUnitId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectedReward"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-static {p0, p1}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->selectReward(Ljava/lang/String;Lcom/mopub/common/MoPubReward;)V

    return-void
.end method

.method public static final setRewardedAdListener(Lcom/mopub/mobileads/MoPubRewardedAdListener;)V
    .locals 0
    .annotation runtime Lcom/mopub/common/util/ReflectionTarget;
    .end annotation

    .line 35
    invoke-static {p0}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->setRewardedAdListener(Lcom/mopub/mobileads/MoPubRewardedAdListener;)V

    return-void
.end method

.method public static final showRewardedAd(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/mopub/common/util/ReflectionTarget;
    .end annotation

    const-string v0, "adUnitId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-static {p0}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->showAd(Ljava/lang/String;)V

    return-void
.end method

.method public static final showRewardedAd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/mopub/common/util/ReflectionTarget;
    .end annotation

    const-string v0, "adUnitId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-static {p0, p1}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->showAd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
