.class final Lcom/google/android/gms/internal/ads/egr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/d$b;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/egn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/egn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/egr;->a:Lcom/google/android/gms/internal/ads/egn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/egr;->a:Lcom/google/android/gms/internal/ads/egn;

    .line 1074
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/egn;->b:Ljava/lang/Object;

    .line 2
    monitor-enter p1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/egr;->a:Lcom/google/android/gms/internal/ads/egn;

    const/4 v1, 0x0

    .line 1076
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/egn;->d:Lcom/google/android/gms/internal/ads/egy;

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/egr;->a:Lcom/google/android/gms/internal/ads/egn;

    .line 2075
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/egn;->c:Lcom/google/android/gms/internal/ads/egu;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/egr;->a:Lcom/google/android/gms/internal/ads/egn;

    .line 2077
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/egn;->c:Lcom/google/android/gms/internal/ads/egu;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/egr;->a:Lcom/google/android/gms/internal/ads/egn;

    .line 3074
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/egn;->b:Ljava/lang/Object;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 7
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
