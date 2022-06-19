.class public final Lcom/google/android/gms/internal/firebase_remote_config/zzfb;
.super Ljava/lang/Object;


# instance fields
.field private zzlw:J

.field private zzlx:I

.field private zzly:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase_remote_config/zzfc;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_remote_config/zzfb;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzc(J)Lcom/google/android/gms/internal/firebase_remote_config/zzfb;
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzfb;->zzlw:J

    return-object p0
.end method

.method final zzc(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;)Lcom/google/android/gms/internal/firebase_remote_config/zzfb;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzfb;->zzly:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;

    return-object p0
.end method

.method public final zzdf()Lcom/google/android/gms/internal/firebase_remote_config/zzez;
    .locals 7

    .line 8
    new-instance v6, Lcom/google/android/gms/internal/firebase_remote_config/zzez;

    iget-wide v1, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzfb;->zzlw:J

    iget v3, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzfb;->zzlx:I

    iget-object v4, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzfb;->zzly:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase_remote_config/zzez;-><init>(JILcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;Lcom/google/android/gms/internal/firebase_remote_config/zzfc;)V

    return-object v6
.end method

.method final zzn(I)Lcom/google/android/gms/internal/firebase_remote_config/zzfb;
    .locals 0

    .line 4
    iput p1, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzfb;->zzlx:I

    return-object p0
.end method
