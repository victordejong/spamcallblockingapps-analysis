.class public Lcom/mopub/common/SdkConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/SdkConfiguration$Builder;
    }
.end annotation


# instance fields
.field private final mAdUnitId:Ljava/lang/String;

.field private final mAdapterConfigurationClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLegitimateInterestAllowed:Z

.field private final mLogLevel:Lcom/mopub/common/logging/MoPubLog$LogLevel;

.field private final mMediatedNetworkConfigurations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mMediationSettings:[Lcom/mopub/common/MediationSettings;

.field private final mMoPubRequestOptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/Set;[Lcom/mopub/common/MediationSettings;Lcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;[",
            "Lcom/mopub/common/MediationSettings;",
            "Lcom/mopub/common/logging/MoPubLog$LogLevel;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;Z)V"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 75
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 76
    invoke-static {p5}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 77
    invoke-static {p6}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 79
    iput-object p1, p0, Lcom/mopub/common/SdkConfiguration;->mAdUnitId:Ljava/lang/String;

    .line 80
    iput-object p2, p0, Lcom/mopub/common/SdkConfiguration;->mAdapterConfigurationClasses:Ljava/util/Set;

    .line 81
    iput-object p3, p0, Lcom/mopub/common/SdkConfiguration;->mMediationSettings:[Lcom/mopub/common/MediationSettings;

    .line 82
    iput-object p4, p0, Lcom/mopub/common/SdkConfiguration;->mLogLevel:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    .line 83
    iput-object p5, p0, Lcom/mopub/common/SdkConfiguration;->mMediatedNetworkConfigurations:Ljava/util/Map;

    .line 84
    iput-object p6, p0, Lcom/mopub/common/SdkConfiguration;->mMoPubRequestOptions:Ljava/util/Map;

    .line 85
    iput-boolean p7, p0, Lcom/mopub/common/SdkConfiguration;->mLegitimateInterestAllowed:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/Set;[Lcom/mopub/common/MediationSettings;Lcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/util/Map;Ljava/util/Map;ZLcom/mopub/common/SdkConfiguration$1;)V
    .locals 0

    .line 25
    invoke-direct/range {p0 .. p7}, Lcom/mopub/common/SdkConfiguration;-><init>(Ljava/lang/String;Ljava/util/Set;[Lcom/mopub/common/MediationSettings;Lcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/util/Map;Ljava/util/Map;Z)V

    return-void
.end method


# virtual methods
.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/mopub/common/SdkConfiguration;->mAdUnitId:Ljava/lang/String;

    return-object v0
.end method

.method public getAdapterConfigurationClasses()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/mopub/common/SdkConfiguration;->mAdapterConfigurationClasses:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getLegitimateInterestAllowed()Z
    .locals 1

    .line 118
    iget-boolean v0, p0, Lcom/mopub/common/SdkConfiguration;->mLegitimateInterestAllowed:Z

    return v0
.end method

.method getLogLevel()Lcom/mopub/common/logging/MoPubLog$LogLevel;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/mopub/common/SdkConfiguration;->mLogLevel:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    return-object v0
.end method

.method public getMediatedNetworkConfigurations()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/mopub/common/SdkConfiguration;->mMediatedNetworkConfigurations:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getMediationSettings()[Lcom/mopub/common/MediationSettings;
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/mopub/common/SdkConfiguration;->mMediationSettings:[Lcom/mopub/common/MediationSettings;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/common/MediationSettings;

    return-object v0
.end method

.method public getMoPubRequestOptions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/mopub/common/SdkConfiguration;->mMoPubRequestOptions:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
