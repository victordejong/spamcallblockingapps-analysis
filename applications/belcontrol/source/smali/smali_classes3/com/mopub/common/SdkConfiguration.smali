.class public Lcom/mopub/common/SdkConfiguration;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/SdkConfiguration$Builder;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:[Lcom/mopub/common/MediationSettings;

.field public final d:Ljava/util/Map;
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

.field public final e:Ljava/util/Map;
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

.field public final f:Lcom/mopub/common/logging/MoPubLog$LogLevel;

.field public final g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;[Lcom/mopub/common/MediationSettings;Lcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/util/Map;Ljava/util/Map;Z)V
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p5}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p6}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/mopub/common/SdkConfiguration;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/mopub/common/SdkConfiguration;->b:Ljava/util/Set;

    iput-object p3, p0, Lcom/mopub/common/SdkConfiguration;->c:[Lcom/mopub/common/MediationSettings;

    iput-object p4, p0, Lcom/mopub/common/SdkConfiguration;->f:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    iput-object p5, p0, Lcom/mopub/common/SdkConfiguration;->d:Ljava/util/Map;

    iput-object p6, p0, Lcom/mopub/common/SdkConfiguration;->e:Ljava/util/Map;

    iput-boolean p7, p0, Lcom/mopub/common/SdkConfiguration;->g:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/Set;[Lcom/mopub/common/MediationSettings;Lcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/util/Map;Ljava/util/Map;ZLcom/mopub/common/SdkConfiguration$a;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/mopub/common/SdkConfiguration;-><init>(Ljava/lang/String;Ljava/util/Set;[Lcom/mopub/common/MediationSettings;Lcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/util/Map;Ljava/util/Map;Z)V

    return-void
.end method


# virtual methods
.method public a()Lcom/mopub/common/logging/MoPubLog$LogLevel;
    .locals 1

    iget-object v0, p0, Lcom/mopub/common/SdkConfiguration;->f:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mopub/common/SdkConfiguration;->a:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/mopub/common/SdkConfiguration;->b:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getLegitimateInterestAllowed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mopub/common/SdkConfiguration;->g:Z

    return v0
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

    iget-object v0, p0, Lcom/mopub/common/SdkConfiguration;->d:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getMediationSettings()[Lcom/mopub/common/MediationSettings;
    .locals 2

    iget-object v0, p0, Lcom/mopub/common/SdkConfiguration;->c:[Lcom/mopub/common/MediationSettings;

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

    iget-object v0, p0, Lcom/mopub/common/SdkConfiguration;->e:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
