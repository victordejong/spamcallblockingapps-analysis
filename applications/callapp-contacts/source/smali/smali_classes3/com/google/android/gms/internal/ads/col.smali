.class final Lcom/google/android/gms/internal/ads/col;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cal;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cal<",
        "Lcom/google/android/gms/internal/ads/bhu;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/coj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/coj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/col;->a:Lcom/google/android/gms/internal/ads/coj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/col;->a:Lcom/google/android/gms/internal/ads/coj;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/col;->a:Lcom/google/android/gms/internal/ads/coj;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/coj;->a(Lcom/google/android/gms/internal/ads/coj;Lcom/google/android/gms/internal/ads/bhu;)Lcom/google/android/gms/internal/ads/bhu;

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
    .locals 2

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/ads/bhu;

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/col;->a:Lcom/google/android/gms/internal/ads/coj;

    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/col;->a:Lcom/google/android/gms/internal/ads/coj;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/coj;->a(Lcom/google/android/gms/internal/ads/coj;Lcom/google/android/gms/internal/ads/bhu;)Lcom/google/android/gms/internal/ads/bhu;

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/col;->a:Lcom/google/android/gms/internal/ads/coj;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/coj;->a(Lcom/google/android/gms/internal/ads/coj;)Lcom/google/android/gms/internal/ads/bhu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/anp;->h()V

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
