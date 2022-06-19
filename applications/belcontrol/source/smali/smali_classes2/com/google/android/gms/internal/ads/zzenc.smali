.class public final Lcom/google/android/gms/internal/ads/zzenc;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final zzito:Lcom/google/android/gms/internal/ads/zzenc;


# instance fields
.field private final zzitp:Lcom/google/android/gms/internal/ads/zzenm;

.field private final zzitq:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/zzenj<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzenc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzenc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzenc;->zzito:Lcom/google/android/gms/internal/ads/zzenc;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzenc;->zzitq:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzemb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzemb;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzenc;->zzitp:Lcom/google/android/gms/internal/ads/zzenm;

    return-void
.end method

.method public static zzbkf()Lcom/google/android/gms/internal/ads/zzenc;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzenc;->zzito:Lcom/google/android/gms/internal/ads/zzenc;

    return-object v0
.end method


# virtual methods
.method public final zzax(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzenj;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/android/gms/internal/ads/zzenj<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzenc;->zzh(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzenj;

    move-result-object p1

    return-object p1
.end method

.method public final zzh(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzenj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/ads/zzenj<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "messageType"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzeld;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzenc;->zzitq:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzenj;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzenc;->zzitp:Lcom/google/android/gms/internal/ads/zzenm;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzenm;->zzg(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzenj;

    move-result-object v1

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzeld;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "schema"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzeld;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzenc;->zzitq:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzenj;

    if-eqz p1, :cond_0

    move-object v1, p1

    :cond_0
    return-object v1
.end method
