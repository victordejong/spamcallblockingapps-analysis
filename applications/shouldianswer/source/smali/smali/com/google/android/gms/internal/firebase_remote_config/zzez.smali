.class public final Lcom/google/android/gms/internal/firebase_remote_config/zzez;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigInfo;


# instance fields
.field private final zzlt:J

.field private final zzlu:I

.field private final zzlv:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;


# direct methods
.method private constructor <init>(JILcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzez;->zzlt:J

    .line 3
    iput p3, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzez;->zzlu:I

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzez;->zzlv:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;

    return-void
.end method

.method synthetic constructor <init>(JILcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;Lcom/google/android/gms/internal/firebase_remote_config/zzfc;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/firebase_remote_config/zzez;-><init>(JILcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;)V

    return-void
.end method


# virtual methods
.method public final getConfigSettings()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzez;->zzlv:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;

    return-object v0
.end method

.method public final getFetchTimeMillis()J
    .locals 2

    .line 6
    iget-wide v0, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzez;->zzlt:J

    return-wide v0
.end method

.method public final getLastFetchStatus()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzez;->zzlu:I

    return v0
.end method
