.class final Lcom/google/android/gms/internal/ads/ckv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cal;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cal<",
        "Lcom/google/android/gms/internal/ads/all;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/ckr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ckr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ckv;->a:Lcom/google/android/gms/internal/ads/ckr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ckv;->a:Lcom/google/android/gms/internal/ads/ckr;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ckv;->a:Lcom/google/android/gms/internal/ads/ckr;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/ckr;->b:Lcom/google/android/gms/internal/ads/all;

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/ads/all;

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ckv;->a:Lcom/google/android/gms/internal/ads/ckr;

    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ckv;->a:Lcom/google/android/gms/internal/ads/ckr;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/ckr;->b:Lcom/google/android/gms/internal/ads/all;

    if-eqz v1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ckv;->a:Lcom/google/android/gms/internal/ads/ckr;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/ckr;->b:Lcom/google/android/gms/internal/ads/all;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/anp;->a()V

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ckv;->a:Lcom/google/android/gms/internal/ads/ckr;

    iput-object p1, v1, Lcom/google/android/gms/internal/ads/ckr;->b:Lcom/google/android/gms/internal/ads/all;

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ckv;->a:Lcom/google/android/gms/internal/ads/ckr;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/ckr;->a(Lcom/google/android/gms/internal/ads/ckr;Lcom/google/android/gms/internal/ads/all;)V

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ckv;->a:Lcom/google/android/gms/internal/ads/ckr;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ckr;->a(Lcom/google/android/gms/internal/ads/ckr;)Lcom/google/android/gms/internal/ads/ckb;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/alk;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ckv;->a:Lcom/google/android/gms/internal/ads/ckr;

    .line 12
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/ckr;->a(Lcom/google/android/gms/internal/ads/ckr;)Lcom/google/android/gms/internal/ads/ckb;

    move-result-object v4

    invoke-direct {v2, p1, v3, v4}, Lcom/google/android/gms/internal/ads/alk;-><init>(Lcom/google/android/gms/internal/ads/all;Lcom/google/android/gms/internal/ads/ekw;Lcom/google/android/gms/internal/ads/ckb;)V

    .line 13
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/ckb;->a(Lcom/google/android/gms/internal/ads/egb;)V

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/anp;->h()V

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
