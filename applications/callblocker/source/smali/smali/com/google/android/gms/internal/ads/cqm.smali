.class final Lcom/google/android/gms/internal/ads/cqm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/crt;

.field private final synthetic b:I

.field private final synthetic c:Lcom/google/android/gms/internal/ads/cqn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cqn;Lcom/google/android/gms/internal/ads/crt;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cqm;->c:Lcom/google/android/gms/internal/ads/cqn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cqm;->a:Lcom/google/android/gms/internal/ads/crt;

    iput p3, p0, Lcom/google/android/gms/internal/ads/cqm;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cqm;->a:Lcom/google/android/gms/internal/ads/crt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/crt;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cqm;->c:Lcom/google/android/gms/internal/ads/cqn;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/cqn;->a(Lcom/google/android/gms/internal/ads/cqn;Lcom/google/android/gms/internal/ads/cpb;)Lcom/google/android/gms/internal/ads/cpb;

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cqm;->c:Lcom/google/android/gms/internal/ads/cqn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cqf;->cancel(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cqm;->c:Lcom/google/android/gms/internal/ads/cqn;

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/cqn;->b(Lcom/google/android/gms/internal/ads/cqn;Lcom/google/android/gms/internal/ads/cpb;)V

    .line 7
    return-void

    .line 5
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cqm;->c:Lcom/google/android/gms/internal/ads/cqn;

    iget v1, p0, Lcom/google/android/gms/internal/ads/cqm;->b:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cqm;->a:Lcom/google/android/gms/internal/ads/crt;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/cqn;->a(Lcom/google/android/gms/internal/ads/cqn;ILjava/util/concurrent/Future;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 8
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cqm;->c:Lcom/google/android/gms/internal/ads/cqn;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/cqn;->b(Lcom/google/android/gms/internal/ads/cqn;Lcom/google/android/gms/internal/ads/cpb;)V

    .line 9
    throw v0
.end method
