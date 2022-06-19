.class public Lcom/google/android/gms/internal/gtm/zzqp;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/gtm/zzqp$zza;
    }
.end annotation


# static fields
.field private static volatile zzaxh:Z = false

.field private static final zzaxi:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static volatile zzaxj:Lcom/google/android/gms/internal/gtm/zzqp;

.field public static final zzaxk:Lcom/google/android/gms/internal/gtm/zzqp;


# instance fields
.field private final zzaxl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/gtm/zzqp$zza;",
            "Lcom/google/android/gms/internal/gtm/zzrc$zzd<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzqp;->zzop()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzqp;->zzaxi:Ljava/lang/Class;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzqp;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gtm/zzqp;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzqp;->zzaxk:Lcom/google/android/gms/internal/gtm/zzqp;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqp;->zzaxl:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqp;->zzaxl:Ljava/util/Map;

    return-void
.end method

.method public static zzoo()Lcom/google/android/gms/internal/gtm/zzqp;
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/gtm/zzqp;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzra;->zzd(Ljava/lang/Class;)Lcom/google/android/gms/internal/gtm/zzqp;

    move-result-object v0

    return-object v0
.end method

.method private static zzop()Ljava/lang/Class;
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

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static zzoq()Lcom/google/android/gms/internal/gtm/zzqp;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzqo;->zzon()Lcom/google/android/gms/internal/gtm/zzqp;

    move-result-object v0

    return-object v0
.end method

.method public static zzor()Lcom/google/android/gms/internal/gtm/zzqp;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzqp;->zzaxj:Lcom/google/android/gms/internal/gtm/zzqp;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/internal/gtm/zzqp;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzqp;->zzaxj:Lcom/google/android/gms/internal/gtm/zzqp;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzqo;->zzoo()Lcom/google/android/gms/internal/gtm/zzqp;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzqp;->zzaxj:Lcom/google/android/gms/internal/gtm/zzqp;

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
.method public final zza(Lcom/google/android/gms/internal/gtm/zzsk;I)Lcom/google/android/gms/internal/gtm/zzrc$zzd;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/android/gms/internal/gtm/zzsk;",
            ">(TContainingType;I)",
            "Lcom/google/android/gms/internal/gtm/zzrc$zzd<",
            "TContainingType;*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqp;->zzaxl:Ljava/util/Map;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzqp$zza;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/gtm/zzqp$zza;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzrc$zzd;

    return-object p1
.end method
