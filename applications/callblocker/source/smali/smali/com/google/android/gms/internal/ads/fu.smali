.class public final Lcom/google/android/gms/internal/ads/fu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dqu;


# instance fields
.field private volatile a:Lcom/google/android/gms/internal/ads/fn;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fu;->b:Landroid/content/Context;

    .line 3
    return-void
.end method

.method private final a()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fu;->a:Lcom/google/android/gms/internal/ads/fn;

    if-nez v0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fu;->a:Lcom/google/android/gms/internal/ads/fn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fn;->e()V

    .line 59
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/fu;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/fu;->a()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/fu;)Lcom/google/android/gms/internal/ads/fn;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fu;->a:Lcom/google/android/gms/internal/ads/fn;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/dts;)Lcom/google/android/gms/internal/ads/drt;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dts",
            "<*>;)",
            "Lcom/google/android/gms/internal/ads/drt;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/16 v10, 0x34

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/fm;->a(Lcom/google/android/gms/internal/ads/dts;)Lcom/google/android/gms/internal/ads/fm;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v2

    .line 9
    :try_start_0
    new-instance v4, Lcom/google/android/gms/internal/ads/yo;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/yo;-><init>()V

    .line 10
    new-instance v5, Lcom/google/android/gms/internal/ads/fy;

    invoke-direct {v5, p0, v4}, Lcom/google/android/gms/internal/ads/fy;-><init>(Lcom/google/android/gms/internal/ads/fu;Lcom/google/android/gms/internal/ads/yo;)V

    .line 11
    new-instance v6, Lcom/google/android/gms/internal/ads/gc;

    invoke-direct {v6, p0, v4}, Lcom/google/android/gms/internal/ads/gc;-><init>(Lcom/google/android/gms/internal/ads/fu;Lcom/google/android/gms/internal/ads/yo;)V

    .line 13
    new-instance v7, Lcom/google/android/gms/internal/ads/fn;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/fu;->b:Landroid/content/Context;

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->q()Lcom/google/android/gms/internal/ads/xc;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/xc;->a()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v7, v8, v9, v5, v6}, Lcom/google/android/gms/internal/ads/fn;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/c$a;Lcom/google/android/gms/common/internal/c$b;)V

    .line 15
    iput-object v7, p0, Lcom/google/android/gms/internal/ads/fu;->a:Lcom/google/android/gms/internal/ads/fn;

    .line 16
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/fu;->a:Lcom/google/android/gms/internal/ads/fn;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/fn;->o()V

    .line 18
    new-instance v5, Lcom/google/android/gms/internal/ads/fx;

    invoke-direct {v5, p0, v0}, Lcom/google/android/gms/internal/ads/fx;-><init>(Lcom/google/android/gms/internal/ads/fu;Lcom/google/android/gms/internal/ads/fm;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/yg;->a:Lcom/google/android/gms/internal/ads/crs;

    .line 19
    invoke-static {v4, v5, v0}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/cqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v4

    .line 20
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->bT:Lcom/google/android/gms/internal/ads/ect;

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v6, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v5, Lcom/google/android/gms/internal/ads/yg;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 24
    invoke-static {v4, v6, v7, v0, v5}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 25
    new-instance v4, Lcom/google/android/gms/internal/ads/fz;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/ads/fz;-><init>(Lcom/google/android/gms/internal/ads/fu;)V

    sget-object v5, Lcom/google/android/gms/internal/ads/yg;->a:Lcom/google/android/gms/internal/ads/crs;

    invoke-interface {v0, v4, v5}, Lcom/google/android/gms/internal/ads/crt;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 27
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/crt;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v4

    .line 29
    sub-long v2, v4, v2

    .line 30
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v5, "Http assets remote cache took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 41
    new-instance v2, Lcom/google/android/gms/internal/ads/pv;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/pv;-><init>(Landroid/os/ParcelFileDescriptor;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/fo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 42
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/pv;->a(Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/c;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/fo;

    .line 43
    if-nez v0, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-object v1

    .line 33
    :catch_0
    move-exception v0

    :goto_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v4

    .line 34
    sub-long v2, v4, v2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "Http assets remote cache took "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v4

    .line 38
    sub-long v2, v4, v2

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "Http assets remote cache took "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 40
    throw v0

    .line 46
    :cond_1
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/fo;->a:Z

    if-eqz v2, :cond_2

    .line 47
    new-instance v1, Lcom/google/android/gms/internal/ads/zzae;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/fo;->b:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzae;-><init>(Ljava/lang/String;)V

    throw v1

    .line 48
    :cond_2
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/fo;->e:[Ljava/lang/String;

    array-length v2, v2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/fo;->f:[Ljava/lang/String;

    array-length v3, v3

    if-ne v2, v3, :cond_0

    .line 50
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 51
    const/4 v1, 0x0

    :goto_2
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/fo;->e:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 52
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/fo;->e:[Ljava/lang/String;

    aget-object v2, v2, v1

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/fo;->f:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 54
    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/ads/drt;

    iget v2, v0, Lcom/google/android/gms/internal/ads/fo;->c:I

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/fo;->d:[B

    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/fo;->g:Z

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/fo;->h:J

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/drt;-><init>(I[BLjava/util/Map;ZJ)V

    goto/16 :goto_0

    .line 33
    :catch_1
    move-exception v0

    goto/16 :goto_1
.end method
