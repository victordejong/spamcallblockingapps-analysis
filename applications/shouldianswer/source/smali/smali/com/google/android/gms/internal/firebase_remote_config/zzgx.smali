.class public Lcom/google/android/gms/internal/firebase_remote_config/zzgx;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase_remote_config/zzgx$zza;
    }
.end annotation


# static fields
.field private static volatile zzqa:Z = false

.field private static final zzqb:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static volatile zzqc:Lcom/google/android/gms/internal/firebase_remote_config/zzgx;

.field static final zzqd:Lcom/google/android/gms/internal/firebase_remote_config/zzgx;


# instance fields
.field private final zzqe:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/firebase_remote_config/zzgx$zza;",
            "Lcom/google/android/gms/internal/firebase_remote_config/zzhi$zzc<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/firebase_remote_config/zzgx;->zzgg()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase_remote_config/zzgx;->zzqb:Ljava/lang/Class;

    .line 23
    new-instance v0, Lcom/google/android/gms/internal/firebase_remote_config/zzgx;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase_remote_config/zzgx;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_remote_config/zzgx;->zzqd:Lcom/google/android/gms/internal/firebase_remote_config/zzgx;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzgx;->zzqe:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzgx;->zzqe:Ljava/util/Map;

    return-void
.end method

.method private static zzgg()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.google.protobuf.Extension"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static zzgh()Lcom/google/android/gms/internal/firebase_remote_config/zzgx;
    .locals 2

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/firebase_remote_config/zzgx;->zzqc:Lcom/google/android/gms/internal/firebase_remote_config/zzgx;

    if-nez v0, :cond_1

    .line 6
    const-class v1, Lcom/google/android/gms/internal/firebase_remote_config/zzgx;

    monitor-enter v1

    .line 7
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/firebase_remote_config/zzgx;->zzqc:Lcom/google/android/gms/internal/firebase_remote_config/zzgx;

    if-nez v0, :cond_0

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/firebase_remote_config/zzgv;->zzgf()Lcom/google/android/gms/internal/firebase_remote_config/zzgx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase_remote_config/zzgx;->zzqc:Lcom/google/android/gms/internal/firebase_remote_config/zzgx;

    .line 10
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/firebase_remote_config/zziq;I)Lcom/google/android/gms/internal/firebase_remote_config/zzhi$zzc;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/android/gms/internal/firebase_remote_config/zziq;",
            ">(TContainingType;I)",
            "Lcom/google/android/gms/internal/firebase_remote_config/zzhi$zzc<",
            "TContainingType;*>;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzgx;->zzqe:Ljava/util/Map;

    new-instance v1, Lcom/google/android/gms/internal/firebase_remote_config/zzgx$zza;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/firebase_remote_config/zzgx$zza;-><init>(Ljava/lang/Object;I)V

    .line 13
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_remote_config/zzhi$zzc;

    return-object p1
.end method
