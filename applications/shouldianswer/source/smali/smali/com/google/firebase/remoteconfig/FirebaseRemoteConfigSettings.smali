.class public Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;
    }
.end annotation


# instance fields
.field private final zzjq:Z

.field private final zzjr:J

.field private final zzjs:J


# direct methods
.method private constructor <init>(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;->zza(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;->zzjq:Z

    .line 3
    invoke-static {p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;->zzb(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;->zzjr:J

    .line 4
    invoke-static {p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;->zzc(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;->zzjs:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;Lcom/google/firebase/remoteconfig/zzn;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;-><init>(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;)V

    return-void
.end method


# virtual methods
.method public getFetchTimeoutInSeconds()J
    .locals 2

    .line 7
    iget-wide v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;->zzjr:J

    return-wide v0
.end method

.method public getMinimumFetchIntervalInSeconds()J
    .locals 2

    .line 8
    iget-wide v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;->zzjs:J

    return-wide v0
.end method

.method public isDeveloperModeEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6
    iget-boolean v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;->zzjq:Z

    return v0
.end method

.method public toBuilder()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;
    .locals 3

    .line 9
    new-instance v0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;

    invoke-direct {v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;-><init>()V

    .line 10
    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;->isDeveloperModeEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;->setDeveloperModeEnabled(Z)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;

    .line 11
    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;->getFetchTimeoutInSeconds()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;->setFetchTimeoutInSeconds(J)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;

    .line 12
    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;->getMinimumFetchIntervalInSeconds()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;->setMinimumFetchIntervalInSeconds(J)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;

    return-object v0
.end method
