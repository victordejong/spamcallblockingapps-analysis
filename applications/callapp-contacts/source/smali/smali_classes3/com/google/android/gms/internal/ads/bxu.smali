.class public final Lcom/google/android/gms/internal/ads/bxu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/internal/zzg;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/arj;

.field private final b:Lcom/google/android/gms/internal/ads/asc;

.field private final c:Lcom/google/android/gms/internal/ads/aym;

.field private final d:Lcom/google/android/gms/internal/ads/ayh;

.field private final e:Lcom/google/android/gms/internal/ads/aju;

.field private f:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/arj;Lcom/google/android/gms/internal/ads/asc;Lcom/google/android/gms/internal/ads/aym;Lcom/google/android/gms/internal/ads/ayh;Lcom/google/android/gms/internal/ads/aju;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bxu;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bxu;->a:Lcom/google/android/gms/internal/ads/arj;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bxu;->b:Lcom/google/android/gms/internal/ads/asc;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bxu;->c:Lcom/google/android/gms/internal/ads/aym;

    .line 6
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bxu;->d:Lcom/google/android/gms/internal/ads/ayh;

    .line 7
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/bxu;->e:Lcom/google/android/gms/internal/ads/aju;

    return-void
.end method


# virtual methods
.method public final declared-synchronized zzh(Landroid/view/View;)V
    .locals 3

    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bxu;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 10
    monitor-exit p0

    return-void

    .line 11
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bxu;->e:Lcom/google/android/gms/internal/ads/aju;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aju;->b()V

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bxu;->d:Lcom/google/android/gms/internal/ads/ayh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ayh;->a(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzkg()V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bxu;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bxu;->a:Lcom/google/android/gms/internal/ads/arj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/arj;->onAdClicked()V

    :cond_0
    return-void
.end method

.method public final zzkh()V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bxu;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bxu;->b:Lcom/google/android/gms/internal/ads/asc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/asc;->a()V

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bxu;->c:Lcom/google/android/gms/internal/ads/aym;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aym;->a()V

    :cond_0
    return-void
.end method
