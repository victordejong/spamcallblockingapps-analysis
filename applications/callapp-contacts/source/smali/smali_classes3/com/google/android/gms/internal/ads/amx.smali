.class public final Lcom/google/android/gms/internal/ads/amx;
.super Lcom/google/android/gms/internal/ads/alq;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/fn;

.field private final b:Ljava/lang/Runnable;

.field private final c:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ans;Lcom/google/android/gms/internal/ads/fn;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/alq;-><init>(Lcom/google/android/gms/internal/ads/ans;)V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/amx;->a:Lcom/google/android/gms/internal/ads/fn;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/amx;->b:Ljava/lang/Runnable;

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/amx;->c:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzvt;)V
    .locals 0

    return-void
.end method

.method public final b()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/emk;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/internal/ads/coy;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()Lcom/google/android/gms/internal/ads/coy;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final f()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final g()V
    .locals 0

    return-void
.end method

.method public final h()V
    .locals 3

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/amx;->b:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 7
    new-instance v1, Lcom/google/android/gms/internal/ads/ana;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/ana;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/amx;->c:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/ads/amz;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/ads/amz;-><init>(Lcom/google/android/gms/internal/ads/amx;Ljava/lang/Runnable;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
