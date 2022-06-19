.class public final Lcom/google/android/gms/internal/firebase_remote_config/zzet;
.super Ljava/lang/Object;


# instance fields
.field private final status:I

.field private final zzks:Ljava/util/Date;

.field private final zzlh:Lcom/google/android/gms/internal/firebase_remote_config/zzen;


# direct methods
.method private constructor <init>(Ljava/util/Date;ILcom/google/android/gms/internal/firebase_remote_config/zzen;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzet;->zzks:Ljava/util/Date;

    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzet;->status:I

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzet;->zzlh:Lcom/google/android/gms/internal/firebase_remote_config/zzen;

    return-void
.end method

.method public static zzd(Ljava/util/Date;)Lcom/google/android/gms/internal/firebase_remote_config/zzet;
    .locals 3

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/firebase_remote_config/zzet;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/internal/firebase_remote_config/zzet;-><init>(Ljava/util/Date;ILcom/google/android/gms/internal/firebase_remote_config/zzen;)V

    return-object v0
.end method

.method public static zze(Ljava/util/Date;)Lcom/google/android/gms/internal/firebase_remote_config/zzet;
    .locals 3

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/firebase_remote_config/zzet;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/internal/firebase_remote_config/zzet;-><init>(Ljava/util/Date;ILcom/google/android/gms/internal/firebase_remote_config/zzen;)V

    return-object v0
.end method

.method public static zzg(Lcom/google/android/gms/internal/firebase_remote_config/zzen;)Lcom/google/android/gms/internal/firebase_remote_config/zzet;
    .locals 3

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/firebase_remote_config/zzet;

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_remote_config/zzen;->zzcr()Ljava/util/Date;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/gms/internal/firebase_remote_config/zzet;-><init>(Ljava/util/Date;ILcom/google/android/gms/internal/firebase_remote_config/zzen;)V

    return-object v0
.end method


# virtual methods
.method public final zzcx()Lcom/google/android/gms/internal/firebase_remote_config/zzen;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzet;->zzlh:Lcom/google/android/gms/internal/firebase_remote_config/zzen;

    return-object v0
.end method
