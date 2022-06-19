.class public final Lcom/google/android/gms/internal/ads/brs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/e;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/apo;

.field private final b:Lcom/google/android/gms/internal/ads/aqh;

.field private final c:Lcom/google/android/gms/internal/ads/auu;

.field private final d:Lcom/google/android/gms/internal/ads/aup;

.field private final e:Lcom/google/android/gms/internal/ads/ajb;

.field private f:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/apo;Lcom/google/android/gms/internal/ads/aqh;Lcom/google/android/gms/internal/ads/auu;Lcom/google/android/gms/internal/ads/aup;Lcom/google/android/gms/internal/ads/ajb;)V
    .locals 2

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/brs;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/brs;->a:Lcom/google/android/gms/internal/ads/apo;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/brs;->b:Lcom/google/android/gms/internal/ads/aqh;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/brs;->c:Lcom/google/android/gms/internal/ads/auu;

    .line 6
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/brs;->d:Lcom/google/android/gms/internal/ads/aup;

    .line 7
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/brs;->e:Lcom/google/android/gms/internal/ads/ajb;

    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/brs;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/brs;->a:Lcom/google/android/gms/internal/ads/apo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/apo;->e()V

    .line 16
    :cond_0
    return-void
.end method

.method public final declared-synchronized a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 9
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/brs;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 13
    :goto_0
    monitor-exit p0

    return-void

    .line 11
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/brs;->e:Lcom/google/android/gms/internal/ads/ajb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ajb;->b()V

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/brs;->d:Lcom/google/android/gms/internal/ads/aup;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/aup;->a(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 9
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/brs;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/brs;->b:Lcom/google/android/gms/internal/ads/aqh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aqh;->a()V

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/brs;->c:Lcom/google/android/gms/internal/ads/auu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/auu;->a()V

    .line 20
    :cond_0
    return-void
.end method
