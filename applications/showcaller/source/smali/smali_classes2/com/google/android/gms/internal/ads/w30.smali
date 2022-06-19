.class public final Lcom/google/android/gms/internal/ads/w30;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/xy3;


# instance fields
.field private volatile a:Lcom/google/android/gms/internal/ads/k30;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/w30;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/w30;)Lcom/google/android/gms/internal/ads/k30;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/w30;->a:Lcom/google/android/gms/internal/ads/k30;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/w30;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/w30;->a:Lcom/google/android/gms/internal/ads/k30;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/w30;->a:Lcom/google/android/gms/internal/ads/k30;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/d;->a()V

    .line 2
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/dz3;)Lcom/google/android/gms/internal/ads/zy3;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dz3<",
            "*>;)",
            "Lcom/google/android/gms/internal/ads/zy3;"
        }
    .end annotation

    const-string v0, "ms"

    const-string v1, "Http assets remote cache took "

    .line 1
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbqy;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dz3;->p()Ljava/util/Map;

    move-result-object v2

    .line 3
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    .line 4
    new-array v4, v3, [Ljava/lang/String;

    .line 5
    new-array v3, v3, [Ljava/lang/String;

    .line 6
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v4, v6

    .line 8
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/ads/zzbqy;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dz3;->k()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v4, v3}, Lcom/google/android/gms/internal/ads/zzbqy;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->k()Lcom/google/android/gms/common/util/e;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v3

    const/4 p1, 0x0

    const/16 v6, 0x34

    :try_start_0
    new-instance v7, Lcom/google/android/gms/internal/ads/vi0;

    .line 11
    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/vi0;-><init>()V

    .line 12
    new-instance v8, Lcom/google/android/gms/internal/ads/u30;

    invoke-direct {v8, p0, v7}, Lcom/google/android/gms/internal/ads/u30;-><init>(Lcom/google/android/gms/internal/ads/w30;Lcom/google/android/gms/internal/ads/vi0;)V

    .line 13
    new-instance v9, Lcom/google/android/gms/internal/ads/v30;

    invoke-direct {v9, p0, v7}, Lcom/google/android/gms/internal/ads/v30;-><init>(Lcom/google/android/gms/internal/ads/w30;Lcom/google/android/gms/internal/ads/vi0;)V

    .line 14
    new-instance v10, Lcom/google/android/gms/internal/ads/k30;

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/w30;->b:Landroid/content/Context;

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->r()Lcom/google/android/gms/ads/internal/util/y0;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/ads/internal/util/y0;->a()Landroid/os/Looper;

    move-result-object v12

    invoke-direct {v10, v11, v12, v8, v9}, Lcom/google/android/gms/internal/ads/k30;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/d$a;Lcom/google/android/gms/common/internal/d$b;)V

    iput-object v10, p0, Lcom/google/android/gms/internal/ads/w30;->a:Lcom/google/android/gms/internal/ads/k30;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/w30;->a:Lcom/google/android/gms/internal/ads/k30;

    .line 16
    invoke-virtual {v8}, Lcom/google/android/gms/common/internal/d;->q()V

    new-instance v8, Lcom/google/android/gms/internal/ads/s30;

    .line 17
    invoke-direct {v8, p0, v2}, Lcom/google/android/gms/internal/ads/s30;-><init>(Lcom/google/android/gms/internal/ads/w30;Lcom/google/android/gms/internal/ads/zzbqy;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/qi0;->a:Lcom/google/android/gms/internal/ads/s03;

    .line 18
    invoke-static {v7, v8, v2}, Lcom/google/android/gms/internal/ads/k03;->i(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/uz2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v7

    .line 19
    sget-object v8, Lcom/google/android/gms/internal/ads/kw;->S2:Lcom/google/android/gms/internal/ads/cw;

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v8

    .line 21
    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-long v8, v8

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v11, Lcom/google/android/gms/internal/ads/qi0;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 22
    invoke-static {v7, v8, v9, v10, v11}, Lcom/google/android/gms/internal/ads/k03;->h(Lcom/google/android/gms/internal/ads/r03;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v7

    new-instance v8, Lcom/google/android/gms/internal/ads/t30;

    .line 23
    invoke-direct {v8, p0}, Lcom/google/android/gms/internal/ads/t30;-><init>(Lcom/google/android/gms/internal/ads/w30;)V

    invoke-interface {v7, v8, v2}, Lcom/google/android/gms/internal/ads/r03;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 24
    invoke-interface {v7}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->k()Lcom/google/android/gms/common/util/e;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v7

    new-instance v9, Ljava/lang/StringBuilder;

    .line 26
    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v7, v3

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/o1;->k(Ljava/lang/String;)V

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcbh;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzcbh;-><init>(Landroid/os/ParcelFileDescriptor;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbra;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 28
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcbh;->k0(Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbra;

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbra;->d:Z

    if-nez v1, :cond_4

    .line 29
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbra;->h:[Ljava/lang/String;

    .line 30
    array-length v1, v1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzbra;->i:[Ljava/lang/String;

    array-length v2, v2

    if-eq v1, v2, :cond_2

    goto :goto_2

    :cond_2
    new-instance v9, Ljava/util/HashMap;

    .line 31
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    :goto_1
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzbra;->h:[Ljava/lang/String;

    .line 32
    array-length v1, p1

    if-ge v5, v1, :cond_3

    .line 33
    aget-object p1, p1, v5

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbra;->i:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-virtual {v9, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/ads/zy3;

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzbra;->f:I

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzbra;->g:[B

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzbra;->j:Z

    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzbra;->k:J

    move-object v6, p1

    .line 34
    invoke-direct/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/zy3;-><init>(I[BLjava/util/Map;ZJ)V

    :goto_2
    return-object p1

    .line 35
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzwl;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbra;->e:Ljava/lang/String;

    .line 36
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzwl;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 37
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->k()Lcom/google/android/gms/common/util/e;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v7

    new-instance v2, Ljava/lang/StringBuilder;

    .line 38
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v7, v3

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/o1;->k(Ljava/lang/String;)V

    .line 39
    throw p1

    .line 40
    :catch_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->k()Lcom/google/android/gms/common/util/e;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v7

    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v7, v3

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/o1;->k(Ljava/lang/String;)V

    return-object p1
.end method
