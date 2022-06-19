.class public final Lcom/google/android/gms/internal/ads/hq1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/vp1;

.field private final b:Lcom/google/android/gms/internal/ads/ll1;

.field private final c:Ljava/lang/Object;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/gq1;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/vp1;Lcom/google/android/gms/internal/ads/ll1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/hq1;->c:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hq1;->a:Lcom/google/android/gms/internal/ads/vp1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/hq1;->b:Lcom/google/android/gms/internal/ads/ll1;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hq1;->d:Ljava/util/List;

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/hq1;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzbrl;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/hq1;->d(Ljava/util/List;)V

    return-void
.end method

.method private final d(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzbrl;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hq1;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/hq1;->e:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbrl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/hq1;->d:Ljava/util/List;

    new-instance v9, Lcom/google/android/gms/internal/ads/gq1;

    .line 3
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzbrl;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/hq1;->b:Lcom/google/android/gms/internal/ads/ll1;

    .line 4
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/ll1;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/kl1;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, ""

    :goto_1
    move-object v5, v3

    goto :goto_2

    .line 5
    :cond_1
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/kl1;->b:Lcom/google/android/gms/internal/ads/zzbya;

    if-nez v3, :cond_2

    const-string v3, ""

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbya;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 7
    :goto_2
    iget-boolean v6, v1, Lcom/google/android/gms/internal/ads/zzbrl;->e:Z

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzbrl;->g:Ljava/lang/String;

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbrl;->f:I

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/gq1;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 8
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/hq1;->e:Z

    .line 10
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hq1;->a:Lcom/google/android/gms/internal/ads/vp1;

    new-instance v1, Lcom/google/android/gms/internal/ads/fq1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/fq1;-><init>(Lcom/google/android/gms/internal/ads/hq1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/vp1;->h(Lcom/google/android/gms/internal/ads/d40;)V

    return-void
.end method

.method public final b()Lorg/json/JSONArray;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hq1;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/hq1;->e:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/hq1;->a:Lcom/google/android/gms/internal/ads/vp1;

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/vp1;->m()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/hq1;->a:Lcom/google/android/gms/internal/ads/vp1;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/vp1;->j()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/hq1;->d(Ljava/util/List;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/hq1;->a()V

    .line 5
    monitor-exit v1

    return-object v0

    .line 6
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/hq1;->d:Ljava/util/List;

    .line 7
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/gq1;

    .line 8
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/gq1;->a()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 9
    :cond_2
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
