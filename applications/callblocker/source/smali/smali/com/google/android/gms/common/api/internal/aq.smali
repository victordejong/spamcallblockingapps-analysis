.class public final Lcom/google/android/gms/common/api/internal/aq;
.super Lcom/google/android/gms/common/api/l;
.source "com.google.android.gms:play-services-base@@17.1.0"

# interfaces
.implements Lcom/google/android/gms/common/api/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/h;",
        ">",
        "Lcom/google/android/gms/common/api/l",
        "<TR;>;",
        "Lcom/google/android/gms/common/api/i",
        "<TR;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/common/api/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/k",
            "<-TR;+",
            "Lcom/google/android/gms/common/api/h;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/google/android/gms/common/api/internal/aq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/aq",
            "<+",
            "Lcom/google/android/gms/common/api/h;",
            ">;"
        }
    .end annotation
.end field

.field private volatile c:Lcom/google/android/gms/common/api/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/j",
            "<-TR;>;"
        }
    .end annotation
.end field

.field private d:Lcom/google/android/gms/common/api/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/e",
            "<TR;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/Object;

.field private f:Lcom/google/android/gms/common/api/Status;

.field private final g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/common/api/d;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/google/android/gms/common/api/internal/ar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/ar;"
        }
    .end annotation
.end field

.field private i:Z


# direct methods
.method static synthetic a(Lcom/google/android/gms/common/api/internal/aq;)Lcom/google/android/gms/common/api/k;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aq;->a:Lcom/google/android/gms/common/api/k;

    return-object v0
.end method

.method private final a()V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mSyncToken"
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aq;->a:Lcom/google/android/gms/common/api/k;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aq;->c:Lcom/google/android/gms/common/api/j;

    if-nez v0, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aq;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/d;

    .line 49
    iget-boolean v1, p0, Lcom/google/android/gms/common/api/internal/aq;->i:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/aq;->a:Lcom/google/android/gms/common/api/k;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 50
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/d;->a(Lcom/google/android/gms/common/api/internal/aq;)V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/aq;->i:Z

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aq;->f:Lcom/google/android/gms/common/api/Status;

    if-eqz v0, :cond_3

    .line 53
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aq;->f:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/aq;->b(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    .line 54
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aq;->d:Lcom/google/android/gms/common/api/e;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aq;->d:Lcom/google/android/gms/common/api/e;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/i;)V

    goto :goto_0
.end method

.method private final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    .prologue
    .line 57
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/aq;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 58
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/aq;->f:Lcom/google/android/gms/common/api/Status;

    .line 59
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aq;->f:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/aq;->b(Lcom/google/android/gms/common/api/Status;)V

    .line 60
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/internal/aq;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/aq;->a(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/internal/aq;Lcom/google/android/gms/common/api/h;)V
    .locals 0

    .prologue
    .line 81
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/aq;->b(Lcom/google/android/gms/common/api/h;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/common/api/internal/aq;)Lcom/google/android/gms/common/api/internal/ar;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aq;->h:Lcom/google/android/gms/common/api/internal/ar;

    return-object v0
.end method

.method private final b(Lcom/google/android/gms/common/api/Status;)V
    .locals 3

    .prologue
    .line 61
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/aq;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aq;->a:Lcom/google/android/gms/common/api/k;

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aq;->a:Lcom/google/android/gms/common/api/k;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/k;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    .line 64
    const-string/jumbo v2, "onFailure must not return null"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/aq;->b:Lcom/google/android/gms/common/api/internal/aq;

    invoke-direct {v2, v0}, Lcom/google/android/gms/common/api/internal/aq;->a(Lcom/google/android/gms/common/api/Status;)V

    .line 68
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 66
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/aq;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aq;->c:Lcom/google/android/gms/common/api/j;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/j;->a(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static b(Lcom/google/android/gms/common/api/h;)V
    .locals 6

    .prologue
    .line 73
    instance-of v1, p0, Lcom/google/android/gms/common/api/g;

    if-eqz v1, :cond_0

    .line 74
    :try_start_0
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/common/api/g;

    move-object v1, v0

    invoke-interface {v1}, Lcom/google/android/gms/common/api/g;->a()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v1

    .line 77
    const-string/jumbo v2, "TransformedResultImpl"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x12

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "Unable to release "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private final b()Z
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mSyncToken"
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aq;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/d;

    .line 72
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/aq;->c:Lcom/google/android/gms/common/api/j;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/android/gms/common/api/internal/aq;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aq;->g:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/common/api/internal/aq;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aq;->e:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/common/api/internal/aq;)Lcom/google/android/gms/common/api/internal/aq;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aq;->b:Lcom/google/android/gms/common/api/internal/aq;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/e",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/aq;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 43
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/aq;->d:Lcom/google/android/gms/common/api/e;

    .line 44
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/aq;->a()V

    .line 45
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/google/android/gms/common/api/h;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/aq;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 33
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/common/api/h;->b()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aq;->a:Lcom/google/android/gms/common/api/k;

    if-eqz v0, :cond_1

    .line 35
    invoke-static {}, Lcom/google/android/gms/common/api/internal/ak;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/common/api/internal/as;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/common/api/internal/as;-><init>(Lcom/google/android/gms/common/api/internal/aq;Lcom/google/android/gms/common/api/h;)V

    .line 36
    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 41
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 37
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/aq;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aq;->c:Lcom/google/android/gms/common/api/j;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/j;->b(Lcom/google/android/gms/common/api/h;)V

    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 39
    :cond_2
    :try_start_1
    invoke-interface {p1}, Lcom/google/android/gms/common/api/h;->b()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/aq;->a(Lcom/google/android/gms/common/api/Status;)V

    .line 40
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/aq;->b(Lcom/google/android/gms/common/api/h;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
