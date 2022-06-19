.class public final Lcom/google/android/gms/internal/ads/zzckq;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zzdbf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final synthetic zzglu:Lcom/google/android/gms/internal/ads/zzckn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzckn;)V
    .locals 0
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzckq;->zzglu:Lcom/google/android/gms/internal/ads/zzckn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzckq;->zzdbf:Ljava/util/Map;

    return-void
.end method

.method private final zzaqs()Lcom/google/android/gms/internal/ads/zzckq;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckq;->zzdbf:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzckq;->zzglu:Lcom/google/android/gms/internal/ads/zzckn;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzckn;->zza(Lcom/google/android/gms/internal/ads/zzckn;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/ads/zzckq;)Lcom/google/android/gms/internal/ads/zzckq;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzckq;->zzaqs()Lcom/google/android/gms/internal/ads/zzckq;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzdnb;)Lcom/google/android/gms/internal/ads/zzckq;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckq;->zzdbf:Ljava/util/Map;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdnb;->zzbvs:Ljava/lang/String;

    const-string v1, "gqi"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final zzaqt()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckq;->zzglu:Lcom/google/android/gms/internal/ads/zzckn;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzckn;->zzb(Lcom/google/android/gms/internal/ads/zzckn;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzckp;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzckp;-><init>(Lcom/google/android/gms/internal/ads/zzckq;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzaqu()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckq;->zzglu:Lcom/google/android/gms/internal/ads/zzckn;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzckn;->zzc(Lcom/google/android/gms/internal/ads/zzckn;)Lcom/google/android/gms/internal/ads/zzckw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzckq;->zzdbf:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzckv;->zzp(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzaqv()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckq;->zzglu:Lcom/google/android/gms/internal/ads/zzckn;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzckn;->zzc(Lcom/google/android/gms/internal/ads/zzckn;)Lcom/google/android/gms/internal/ads/zzckw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzckq;->zzdbf:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzckv;->zzo(Ljava/util/Map;)V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzdmw;)Lcom/google/android/gms/internal/ads/zzckq;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckq;->zzdbf:Ljava/util/Map;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdmw;->zzdlu:Ljava/lang/String;

    const-string v1, "aai"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final zzr(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzckq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckq;->zzdbf:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
