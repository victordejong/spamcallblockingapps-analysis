.class public final Lcom/google/android/gms/internal/ads/zzdpb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdpc;


# instance fields
.field private final zzhmy:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/google/android/gms/internal/ads/zzdpl;",
            "Lcom/google/android/gms/internal/ads/zzdoz;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zzhmz:Lcom/google/android/gms/internal/ads/zzdpf;

.field private zzhna:Lcom/google/android/gms/internal/ads/zzdpd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdpf;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzdpf;->zzhno:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpb;->zzhmy:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdpb;->zzhmz:Lcom/google/android/gms/internal/ads/zzdpf;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdpd;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzdpd;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdpb;->zzhna:Lcom/google/android/gms/internal/ads/zzdpd;

    return-void
.end method

.method private final dumpToLog()V
    .locals 7

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdpf;->zzawe()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdpb;->zzhmz:Lcom/google/android/gms/internal/ads/zzdpf;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdpf;->zzhnm:Lcom/google/android/gms/internal/ads/zzdpi;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " PoolCollection"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdpb;->zzhna:Lcom/google/android/gms/internal/ads/zzdpd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdpd;->zzawd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdpb;->zzhmy:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ". "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "#"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzdpl;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzdpl;->hashCode()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "    "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzdoz;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzdoz;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    const-string v6, "[O]"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzdoz;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzdoz;->size()I

    move-result v5

    :goto_2
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzdpb;->zzhmz:Lcom/google/android/gms/internal/ads/zzdpf;

    iget v6, v6, Lcom/google/android/gms/internal/ads/zzdpf;->zzhno:I

    if-ge v5, v6, :cond_1

    const-string v6, "[ ]"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzdoz;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzdoz;->zzavs()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    :goto_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdpb;->zzhmz:Lcom/google/android/gms/internal/ads/zzdpf;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzdpf;->zzhnn:I

    if-ge v3, v1, :cond_3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzazk;->zzdy(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzdpm;Lcom/google/android/gms/internal/ads/zzdqb;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdpm<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/zzdqb;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzug$zzb;->zznl()Lcom/google/android/gms/internal/ads/zzug$zzb$zzc;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzug$zzb$zza;->zznn()Lcom/google/android/gms/internal/ads/zzug$zzb$zza$zza;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzug$zzb$zzb;->zzbzt:Lcom/google/android/gms/internal/ads/zzug$zzb$zzb;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzug$zzb$zza$zza;->zza(Lcom/google/android/gms/internal/ads/zzug$zzb$zzb;)Lcom/google/android/gms/internal/ads/zzug$zzb$zza$zza;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzug$zzb$zzd;->zznp()Lcom/google/android/gms/internal/ads/zzug$zzb$zzd$zza;

    move-result-object v2

    iget-boolean v3, p2, Lcom/google/android/gms/internal/ads/zzdqb;->zzhpd:Z

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzug$zzb$zzd$zza;->zzq(Z)Lcom/google/android/gms/internal/ads/zzug$zzb$zzd$zza;

    move-result-object v2

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzdqb;->zzhpe:I

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/ads/zzug$zzb$zzd$zza;->zzby(I)Lcom/google/android/gms/internal/ads/zzug$zzb$zzd$zza;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzug$zzb$zza$zza;->zza(Lcom/google/android/gms/internal/ads/zzug$zzb$zzd$zza;)Lcom/google/android/gms/internal/ads/zzug$zzb$zza$zza;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzug$zzb$zzc;->zza(Lcom/google/android/gms/internal/ads/zzug$zzb$zza$zza;)Lcom/google/android/gms/internal/ads/zzug$zzb$zzc;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zzbiw()Lcom/google/android/gms/internal/ads/zzemo;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzelb;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzug$zzb;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdpm;->zzhoh:Lcom/google/android/gms/internal/ads/zzbou;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbou;->zzalc()Lcom/google/android/gms/internal/ads/zzbvu;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbvu;->zzc(Lcom/google/android/gms/internal/ads/zzug$zzb;)V

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdpb;->dumpToLog()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzvl;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvx;)Lcom/google/android/gms/internal/ads/zzdpl;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaty;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdpb;->zzhmz:Lcom/google/android/gms/internal/ads/zzdpf;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdpf;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzaty;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaty;->zzws()Lcom/google/android/gms/internal/ads/zzatz;

    move-result-object v0

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzatz;->zzdyc:I

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdpo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdpb;->zzhmz:Lcom/google/android/gms/internal/ads/zzdpf;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzdpf;->zzhnq:Ljava/lang/String;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzdpo;-><init>(Lcom/google/android/gms/internal/ads/zzvl;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzvx;)V

    return-object v0
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzdpl;)Lcom/google/android/gms/internal/ads/zzdpm;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdpl;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdpm<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpb;->zzhmy:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdoz;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdoz;->zzavp()Lcom/google/android/gms/internal/ads/zzdpm;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdpb;->zzhna:Lcom/google/android/gms/internal/ads/zzdpd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdpd;->zzavy()V

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdoz;->zzavt()Lcom/google/android/gms/internal/ads/zzdqb;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzdpb;->zza(Lcom/google/android/gms/internal/ads/zzdpm;Lcom/google/android/gms/internal/ads/zzdqb;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdpb;->zzhna:Lcom/google/android/gms/internal/ads/zzdpd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdpd;->zzavx()V

    invoke-direct {p0, v0, v0}, Lcom/google/android/gms/internal/ads/zzdpb;->zza(Lcom/google/android/gms/internal/ads/zzdpm;Lcom/google/android/gms/internal/ads/zzdqb;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzdpl;Lcom/google/android/gms/internal/ads/zzdpm;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdpl;",
            "Lcom/google/android/gms/internal/ads/zzdpm<",
            "*>;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpb;->zzhmy:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdoz;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p2, Lcom/google/android/gms/internal/ads/zzdpm;->zzhoj:J

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdoz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdpb;->zzhmz:Lcom/google/android/gms/internal/ads/zzdpf;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzdpf;->zzhno:I

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzdpf;->zzhnp:I

    mul-int/lit16 v1, v1, 0x3e8

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzdoz;-><init>(II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdpb;->zzhmy:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdpb;->zzhmz:Lcom/google/android/gms/internal/ads/zzdpf;

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzdpf;->zzhnn:I

    if-ne v1, v3, :cond_a

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdpe;->zzhnh:[I

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzdpf;->zzhns:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget v1, v1, v2

    const-wide v4, 0x7fffffffffffffffL

    const/4 v2, 0x0

    if-eq v1, v3, :cond_6

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    goto/16 :goto_4

    :cond_0
    const v1, 0x7fffffff

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdpb;->zzhmy:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzdoz;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzdoz;->zzavr()I

    move-result v5

    if-ge v5, v1, :cond_1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdoz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdoz;->zzavr()I

    move-result v1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdpl;

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdpb;->zzhmy:Ljava/util/concurrent/ConcurrentHashMap;

    :goto_1
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdpb;->zzhmy:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzdoz;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzdoz;->zzavq()J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-gez v8, :cond_4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdoz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdoz;->zzavq()J

    move-result-wide v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdpl;

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdpb;->zzhmy:Ljava/util/concurrent/ConcurrentHashMap;

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdpb;->zzhmy:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzdoz;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzdoz;->getCreationTimeMillis()J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-gez v8, :cond_7

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdoz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdoz;->getCreationTimeMillis()J

    move-result-wide v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdpl;

    goto :goto_3

    :cond_8
    if-eqz v2, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdpb;->zzhmy:Ljava/util/concurrent/ConcurrentHashMap;

    goto :goto_1

    :cond_9
    :goto_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdpb;->zzhna:Lcom/google/android/gms/internal/ads/zzdpd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdpd;->zzawa()V

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdpb;->zzhmy:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdpb;->zzhna:Lcom/google/android/gms/internal/ads/zzdpd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdpd;->zzavz()V

    :cond_b
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzdoz;->zzb(Lcom/google/android/gms/internal/ads/zzdpm;)Z

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdpb;->zzhna:Lcom/google/android/gms/internal/ads/zzdpd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdpd;->zzawb()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdpb;->zzhna:Lcom/google/android/gms/internal/ads/zzdpd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdpd;->zzawc()Lcom/google/android/gms/internal/ads/zzdpg;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoz;->zzavt()Lcom/google/android/gms/internal/ads/zzdqb;

    move-result-object v0

    if-eqz p2, :cond_c

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzug$zzb;->zznl()Lcom/google/android/gms/internal/ads/zzug$zzb$zzc;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzug$zzb$zza;->zznn()Lcom/google/android/gms/internal/ads/zzug$zzb$zza$zza;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ads/zzug$zzb$zzb;->zzbzt:Lcom/google/android/gms/internal/ads/zzug$zzb$zzb;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzug$zzb$zza$zza;->zza(Lcom/google/android/gms/internal/ads/zzug$zzb$zzb;)Lcom/google/android/gms/internal/ads/zzug$zzb$zza$zza;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzug$zzb$zze;->zznr()Lcom/google/android/gms/internal/ads/zzug$zzb$zze$zza;

    move-result-object v4

    iget-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzdpg;->zzhnv:Z

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzug$zzb$zze$zza;->zzs(Z)Lcom/google/android/gms/internal/ads/zzug$zzb$zze$zza;

    move-result-object v4

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzdpg;->zzhnw:Z

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzug$zzb$zze$zza;->zzt(Z)Lcom/google/android/gms/internal/ads/zzug$zzb$zze$zza;

    move-result-object v1

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzdqb;->zzhpe:I

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzug$zzb$zze$zza;->zzca(I)Lcom/google/android/gms/internal/ads/zzug$zzb$zze$zza;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzug$zzb$zza$zza;->zza(Lcom/google/android/gms/internal/ads/zzug$zzb$zze$zza;)Lcom/google/android/gms/internal/ads/zzug$zzb$zza$zza;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzug$zzb$zzc;->zza(Lcom/google/android/gms/internal/ads/zzug$zzb$zza$zza;)Lcom/google/android/gms/internal/ads/zzug$zzb$zzc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zzbiw()Lcom/google/android/gms/internal/ads/zzemo;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzelb;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzug$zzb;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzdpm;->zzhoh:Lcom/google/android/gms/internal/ads/zzbou;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbou;->zzalc()Lcom/google/android/gms/internal/ads/zzbvu;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzbvu;->zzd(Lcom/google/android/gms/internal/ads/zzug$zzb;)V

    :cond_c
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdpb;->dumpToLog()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzavw()Lcom/google/android/gms/internal/ads/zzdpf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpb;->zzhmz:Lcom/google/android/gms/internal/ads/zzdpf;

    return-object v0
.end method

.method public final declared-synchronized zzb(Lcom/google/android/gms/internal/ads/zzdpl;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpb;->zzhmy:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdoz;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdoz;->size()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdpb;->zzhmz:Lcom/google/android/gms/internal/ads/zzdpf;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzdpf;->zzhno:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge p1, v1, :cond_0

    monitor-exit p0

    return v0

    :cond_0
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
