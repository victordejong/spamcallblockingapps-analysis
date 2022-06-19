.class final Lcom/google/android/gms/internal/ads/cae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cal;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cal<",
        "Lcom/google/android/gms/internal/ads/anp;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/caf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/caf;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cae;->a:Lcom/google/android/gms/internal/ads/caf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cae;->a:Lcom/google/android/gms/internal/ads/caf;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cae;->a:Lcom/google/android/gms/internal/ads/caf;

    const/4 v2, 0x0

    .line 1020
    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/caf;->b:Z

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
    .locals 3

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/ads/anp;

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cae;->a:Lcom/google/android/gms/internal/ads/caf;

    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cae;->a:Lcom/google/android/gms/internal/ads/caf;

    const/4 v2, 0x0

    .line 2020
    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/caf;->b:Z

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cae;->a:Lcom/google/android/gms/internal/ads/caf;

    .line 3013
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/anp;->l:Lcom/google/android/gms/internal/ads/arf;

    .line 3021
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/caf;->a:Lcom/google/android/gms/internal/ads/emj;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/anp;->h()V

    .line 10
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
