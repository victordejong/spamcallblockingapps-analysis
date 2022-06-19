.class final Lcom/google/android/gms/internal/ads/cao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dbi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dbi<",
        "Lcom/google/android/gms/internal/ads/anp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/can;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/cal;

.field private final synthetic c:Lcom/google/android/gms/internal/ads/bbe;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/can;Lcom/google/android/gms/internal/ads/cal;Lcom/google/android/gms/internal/ads/bbe;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cao;->a:Lcom/google/android/gms/internal/ads/can;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cao;->b:Lcom/google/android/gms/internal/ads/cal;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cao;->c:Lcom/google/android/gms/internal/ads/bbe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .line 9
    check-cast p1, Lcom/google/android/gms/internal/ads/anp;

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cao;->a:Lcom/google/android/gms/internal/ads/can;

    monitor-enter v0

    .line 2017
    :try_start_0
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/anp;->m:Lcom/google/android/gms/internal/ads/aue;

    .line 3004
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/aue;->a:Lcom/google/android/gms/internal/ads/avj;

    .line 11
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cao;->a:Lcom/google/android/gms/internal/ads/can;

    .line 3050
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/can;->b:Lcom/google/android/gms/internal/ads/cah;

    .line 4015
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/cah;->b:Lcom/google/android/gms/internal/ads/bza;

    .line 12
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/avj;->a(Lcom/google/android/gms/internal/ads/bza;)Lcom/google/android/gms/internal/ads/avj;

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cao;->b:Lcom/google/android/gms/internal/ads/cal;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/cal;->a(Ljava/lang/Object;)V

    .line 14
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cao;->a:Lcom/google/android/gms/internal/ads/can;

    .line 4051
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/can;->a:Lcom/google/android/gms/internal/ads/afq;

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/afq;->b()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/cas;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/cas;-><init>(Lcom/google/android/gms/internal/ads/cao;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 15
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cao;->c:Lcom/google/android/gms/internal/ads/bbe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bbe;->a()Lcom/google/android/gms/internal/ads/aor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/aor;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzvh;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cao;->c:Lcom/google/android/gms/internal/ads/bbe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/bbe;->b()Lcom/google/android/gms/internal/ads/arn;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/arn;->a(Lcom/google/android/gms/internal/ads/zzvh;)V

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cao;->a:Lcom/google/android/gms/internal/ads/can;

    .line 1051
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/can;->a:Lcom/google/android/gms/internal/ads/afq;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/afq;->b()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/car;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/car;-><init>(Lcom/google/android/gms/internal/ads/cao;Lcom/google/android/gms/internal/ads/zzvh;)V

    .line 5
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 6
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzvh;->errorCode:I

    const-string v1, "NativeAdLoader.onFailure"

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/cqb;->a(ILjava/lang/Throwable;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cao;->b:Lcom/google/android/gms/internal/ads/cal;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/cal;->a()V

    return-void
.end method
