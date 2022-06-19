.class public final Lcom/google/android/gms/internal/ads/wt0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/lt0;

.field private final b:Lcom/google/android/gms/internal/ads/cp0;

.field private final c:Ljava/lang/Object;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/vt0;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/lt0;Lcom/google/android/gms/internal/ads/cp0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/wt0;->c:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wt0;->a:Lcom/google/android/gms/internal/ads/lt0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/wt0;->b:Lcom/google/android/gms/internal/ads/cp0;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wt0;->d:Ljava/util/List;

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/wt0;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/wt0;->d(Ljava/util/List;)V

    return-void
.end method

.method private final d(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzamj;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wt0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/wt0;->e:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzamj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/wt0;->d:Ljava/util/List;

    new-instance v9, Lcom/google/android/gms/internal/ads/vt0;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzamj;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/wt0;->b:Lcom/google/android/gms/internal/ads/cp0;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/cp0;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/bp0;

    move-result-object v3

    if-nez v3, :cond_1

    :goto_1
    const-string v3, ""

    :goto_2
    move-object v5, v3

    goto :goto_3

    :cond_1
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/bp0;->b:Lcom/google/android/gms/internal/ads/zzasv;

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzasv;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :goto_3
    iget-boolean v6, v1, Lcom/google/android/gms/internal/ads/zzamj;->c:Z

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzamj;->e:Ljava/lang/String;

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzamj;->d:I

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/vt0;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/wt0;->e:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wt0;->a:Lcom/google/android/gms/internal/ads/lt0;

    new-instance v1, Lcom/google/android/gms/internal/ads/ut0;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/ut0;-><init>(Lcom/google/android/gms/internal/ads/wt0;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/lt0;->b(Lcom/google/android/gms/internal/ads/wa;)V

    return-void
.end method

.method public final b()Lorg/json/JSONArray;
    .locals 4

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wt0;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/wt0;->e:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/wt0;->a:Lcom/google/android/gms/internal/ads/lt0;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/lt0;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/wt0;->a:Lcom/google/android/gms/internal/ads/lt0;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/lt0;->d()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/wt0;->d(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/wt0;->a()V

    monitor-exit v1

    return-object v0

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/wt0;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/vt0;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/vt0;->a()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_2
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method
