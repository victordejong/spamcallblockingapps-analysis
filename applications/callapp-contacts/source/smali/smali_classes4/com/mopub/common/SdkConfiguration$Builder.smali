.class public Lcom/mopub/common/SdkConfiguration$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/SdkConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private adUnitId:Ljava/lang/String;

.field private final adapterConfigurations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private legitimateInterestAllowed:Z

.field private logLevel:Lcom/mopub/common/logging/MoPubLog$LogLevel;

.field private final mediatedNetworkConfigurations:Ljava/util/Map;
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

.field private mediationSettings:[Lcom/mopub/common/MediationSettings;

.field private final moPubRequestOptions:Ljava/util/Map;
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
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$LogLevel;->NONE:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    iput-object v0, p0, Lcom/mopub/common/SdkConfiguration$Builder;->logLevel:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    .line 137
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 138
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Ad unit cannot be empty at initialization"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-static {}, Lcom/mopub/common/logging/MoPubLog;->getLogLevel()Lcom/mopub/common/logging/MoPubLog$LogLevel;

    move-result-object v2

    invoke-static {v2}, Lcom/mopub/common/logging/MoPubLog;->setLogLevel(Lcom/mopub/common/logging/MoPubLog$LogLevel;)V

    .line 141
    sget-object v2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->INIT_FAILED:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Pass in an ad unit used by this app"

    aput-object v4, v3, v1

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 147
    :cond_0
    iput-object p1, p0, Lcom/mopub/common/SdkConfiguration$Builder;->adUnitId:Ljava/lang/String;

    .line 148
    invoke-static {}, Lcom/mopub/common/DefaultAdapterClasses;->getClassNamesSet()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/common/SdkConfiguration$Builder;->adapterConfigurations:Ljava/util/Set;

    new-array p1, v1, [Lcom/mopub/common/MediationSettings;

    .line 149
    iput-object p1, p0, Lcom/mopub/common/SdkConfiguration$Builder;->mediationSettings:[Lcom/mopub/common/MediationSettings;

    .line 150
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/mopub/common/SdkConfiguration$Builder;->mediatedNetworkConfigurations:Ljava/util/Map;

    .line 151
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/mopub/common/SdkConfiguration$Builder;->moPubRequestOptions:Ljava/util/Map;

    .line 152
    iput-boolean v1, p0, Lcom/mopub/common/SdkConfiguration$Builder;->legitimateInterestAllowed:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/mopub/common/SdkConfiguration;
    .locals 10

    .line 246
    new-instance v9, Lcom/mopub/common/SdkConfiguration;

    iget-object v1, p0, Lcom/mopub/common/SdkConfiguration$Builder;->adUnitId:Ljava/lang/String;

    iget-object v2, p0, Lcom/mopub/common/SdkConfiguration$Builder;->adapterConfigurations:Ljava/util/Set;

    iget-object v3, p0, Lcom/mopub/common/SdkConfiguration$Builder;->mediationSettings:[Lcom/mopub/common/MediationSettings;

    iget-object v4, p0, Lcom/mopub/common/SdkConfiguration$Builder;->logLevel:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    iget-object v5, p0, Lcom/mopub/common/SdkConfiguration$Builder;->mediatedNetworkConfigurations:Ljava/util/Map;

    iget-object v6, p0, Lcom/mopub/common/SdkConfiguration$Builder;->moPubRequestOptions:Ljava/util/Map;

    iget-boolean v7, p0, Lcom/mopub/common/SdkConfiguration$Builder;->legitimateInterestAllowed:Z

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/mopub/common/SdkConfiguration;-><init>(Ljava/lang/String;Ljava/util/Set;[Lcom/mopub/common/MediationSettings;Lcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/util/Map;Ljava/util/Map;ZLcom/mopub/common/SdkConfiguration$1;)V

    return-object v9
.end method

.method public withAdditionalNetwork(Ljava/lang/String;)Lcom/mopub/common/SdkConfiguration$Builder;
    .locals 1

    .line 165
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 167
    iget-object v0, p0, Lcom/mopub/common/SdkConfiguration$Builder;->adapterConfigurations:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public withLegitimateInterestAllowed(Z)Lcom/mopub/common/SdkConfiguration$Builder;
    .locals 0

    .line 241
    iput-boolean p1, p0, Lcom/mopub/common/SdkConfiguration$Builder;->legitimateInterestAllowed:Z

    return-object p0
.end method

.method public withLogLevel(Lcom/mopub/common/logging/MoPubLog$LogLevel;)Lcom/mopub/common/SdkConfiguration$Builder;
    .locals 0

    .line 191
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 193
    iput-object p1, p0, Lcom/mopub/common/SdkConfiguration$Builder;->logLevel:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    return-object p0
.end method

.method public withMediatedNetworkConfiguration(Ljava/lang/String;Ljava/util/Map;)Lcom/mopub/common/SdkConfiguration$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mopub/common/SdkConfiguration$Builder;"
        }
    .end annotation

    .line 208
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 209
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 211
    iget-object v0, p0, Lcom/mopub/common/SdkConfiguration$Builder;->mediatedNetworkConfigurations:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public varargs withMediationSettings([Lcom/mopub/common/MediationSettings;)Lcom/mopub/common/SdkConfiguration$Builder;
    .locals 0

    .line 178
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 180
    iput-object p1, p0, Lcom/mopub/common/SdkConfiguration$Builder;->mediationSettings:[Lcom/mopub/common/MediationSettings;

    return-object p0
.end method

.method public withMoPubRequestOptions(Ljava/lang/String;Ljava/util/Map;)Lcom/mopub/common/SdkConfiguration$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mopub/common/SdkConfiguration$Builder;"
        }
    .end annotation

    .line 226
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 227
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 229
    iget-object v0, p0, Lcom/mopub/common/SdkConfiguration$Builder;->moPubRequestOptions:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
