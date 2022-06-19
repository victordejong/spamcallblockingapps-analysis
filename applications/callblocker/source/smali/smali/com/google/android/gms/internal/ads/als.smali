.class public final Lcom/google/android/gms/internal/ads/als;
.super Lcom/google/android/gms/internal/ads/akk;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final c:Lcom/google/android/gms/internal/ads/dp;

.field private final d:Ljava/lang/Runnable;

.field private final e:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/amk;Lcom/google/android/gms/internal/ads/dp;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/akk;-><init>(Lcom/google/android/gms/internal/ads/amk;)V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/als;->c:Lcom/google/android/gms/internal/ads/dp;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/als;->d:Ljava/lang/Runnable;

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/als;->e:Ljava/util/concurrent/Executor;

    .line 5
    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/dyd;)V
    .locals 0

    .prologue
    .line 11
    return-void
.end method

.method final synthetic a(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 17
    .line 18
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/als;->c:Lcom/google/android/gms/internal/ads/dp;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/dp;->a(Lcom/google/android/gms/dynamic/a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 19
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :cond_0
    :goto_0
    return-void

    .line 22
    :catch_0
    move-exception v0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public final b()Lcom/google/android/gms/internal/ads/eba;
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/cgq;
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/internal/ads/cgq;
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    return v0
.end method

.method public final f()V
    .locals 0

    .prologue
    .line 16
    return-void
.end method

.method public final g_()V
    .locals 3

    .prologue
    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/als;->d:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 7
    new-instance v1, Lcom/google/android/gms/internal/ads/alr;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/alr;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/als;->e:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/ads/alu;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/ads/alu;-><init>(Lcom/google/android/gms/internal/ads/als;Ljava/lang/Runnable;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    return-void
.end method
