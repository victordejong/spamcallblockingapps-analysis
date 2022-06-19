.class public final Lcom/google/android/gms/internal/ads/o;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field a:Z

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/m;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/Object;

.field private e:Lcom/google/android/gms/internal/ads/o;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/o;->b:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/o;->c:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/o;->d:Ljava/lang/Object;

    .line 5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/o;->a:Z

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/o;->c:Ljava/util/Map;

    const-string/jumbo v1, "action"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/o;->c:Ljava/util/Map;

    const-string/jumbo v1, "ad_format"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    return-void
.end method


# virtual methods
.method public final a(J)Lcom/google/android/gms/internal/ads/m;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 12
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/o;->a:Z

    if-nez v1, :cond_0

    .line 14
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/m;

    invoke-direct {v1, p1, p2, v0, v0}, Lcom/google/android/gms/internal/ads/m;-><init>(JLjava/lang/String;Lcom/google/android/gms/internal/ads/m;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public final a()Ljava/lang/String;
    .locals 10

    .prologue
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/o;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/o;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/m;

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/m;->a()J

    move-result-wide v4

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/m;->b()Ljava/lang/String;

    move-result-object v6

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/m;->c()Lcom/google/android/gms/internal/ads/m;

    move-result-object v0

    .line 28
    if-eqz v0, :cond_0

    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-lez v7, :cond_0

    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/m;->a()J

    move-result-wide v8

    sub-long/2addr v4, v8

    .line 30
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v6, 0x2e

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 32
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/o;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 33
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 34
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v2

    return-object v0

    .line 35
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/o;)V
    .locals 2

    .prologue
    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/o;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 10
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/o;->e:Lcom/google/android/gms/internal/ads/o;

    .line 11
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/o;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ug;->a()Lcom/google/android/gms/internal/ads/e;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_0

    .line 44
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/o;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 45
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/e;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/i;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/o;->c:Ljava/util/Map;

    .line 46
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0, p2}, Lcom/google/android/gms/internal/ads/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final varargs a(Lcom/google/android/gms/internal/ads/m;J[Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/o;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 16
    :try_start_0
    array-length v2, p4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p4, v0

    .line 17
    new-instance v4, Lcom/google/android/gms/internal/ads/m;

    invoke-direct {v4, p2, p3, v3, p1}, Lcom/google/android/gms/internal/ads/m;-><init>(JLjava/lang/String;Lcom/google/android/gms/internal/ads/m;)V

    .line 18
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/o;->b:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final b()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/o;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 49
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ug;->a()Lcom/google/android/gms/internal/ads/e;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/o;->e:Lcom/google/android/gms/internal/ads/o;

    if-nez v2, :cond_1

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/o;->c:Ljava/util/Map;

    monitor-exit v1

    .line 52
    :goto_0
    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/o;->c:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/o;->e:Lcom/google/android/gms/internal/ads/o;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/o;->b()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/e;->a(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
