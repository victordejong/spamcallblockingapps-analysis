.class public final Lcom/google/android/gms/internal/ads/bja;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/bjb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bja;->a:Ljava/util/Map;

    return-void
.end method

.method private final declared-synchronized a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/bjb;
    .locals 1

    monitor-enter p0

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bja;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/bjb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lcom/google/android/gms/internal/ads/bjb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/bjb;"
        }
    .end annotation

    .line 25
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 26
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/bja;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/bjb;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method final declared-synchronized a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/cqe;)V
    .locals 2

    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bja;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/cqe;->i()Lcom/google/android/gms/internal/ads/zzaqr;

    move-result-object v0

    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/cqe;->j()Lcom/google/android/gms/internal/ads/zzaqr;

    move-result-object p2
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzdpq; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :try_start_2
    new-instance v1, Lcom/google/android/gms/internal/ads/bjb;

    invoke-direct {v1, p1, v0, p2}, Lcom/google/android/gms/internal/ads/bjb;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaqr;Lcom/google/android/gms/internal/ads/zzaqr;)V

    .line 12
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/bja;->a:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    monitor-exit p0

    return-void

    .line 10
    :catch_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/os;)V
    .locals 2

    monitor-enter p0

    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bja;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 15
    monitor-exit p0

    return-void

    .line 16
    :cond_0
    :try_start_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/os;->a()Lcom/google/android/gms/internal/ads/zzaqr;

    move-result-object v0

    .line 17
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/os;->b()Lcom/google/android/gms/internal/ads/zzaqr;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    :try_start_2
    new-instance v1, Lcom/google/android/gms/internal/ads/bjb;

    invoke-direct {v1, p1, v0, p2}, Lcom/google/android/gms/internal/ads/bjb;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaqr;Lcom/google/android/gms/internal/ads/zzaqr;)V

    .line 22
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/bja;->a:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 23
    monitor-exit p0

    return-void

    .line 20
    :catchall_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
