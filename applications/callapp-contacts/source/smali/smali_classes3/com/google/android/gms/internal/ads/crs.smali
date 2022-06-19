.class final Lcom/google/android/gms/internal/ads/crs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dbi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dbi<",
        "Lcom/google/android/gms/internal/ads/crj<",
        "TAdT;>;>;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/crr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/crr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/crs;->a:Lcom/google/android/gms/internal/ads/crr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/ads/crj;

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/crs;->a:Lcom/google/android/gms/internal/ads/crr;

    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/crs;->a:Lcom/google/android/gms/internal/ads/crr;

    .line 2045
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/crr;->e:Lcom/google/android/gms/internal/ads/cru;

    .line 8
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/cru;->a(Lcom/google/android/gms/internal/ads/crj;)V

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/crs;->a:Lcom/google/android/gms/internal/ads/crr;

    .line 2046
    iget v1, v1, Lcom/google/android/gms/internal/ads/crr;->c:I

    .line 9
    sget v2, Lcom/google/android/gms/internal/ads/crw;->b:I

    if-eq v1, v2, :cond_0

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/crs;->a:Lcom/google/android/gms/internal/ads/crr;

    .line 2048
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/crr;->d:Lcom/google/android/gms/internal/ads/cqz;

    .line 10
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/crs;->a:Lcom/google/android/gms/internal/ads/crr;

    .line 3047
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/crr;->a:Lcom/google/android/gms/internal/ads/crx;

    .line 10
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/crx;->b()Lcom/google/android/gms/internal/ads/cri;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/google/android/gms/internal/ads/cqz;->a(Lcom/google/android/gms/internal/ads/cri;Lcom/google/android/gms/internal/ads/crj;)Z

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/crs;->a:Lcom/google/android/gms/internal/ads/crr;

    .line 4046
    iget v1, v1, Lcom/google/android/gms/internal/ads/crr;->c:I

    .line 11
    sget v2, Lcom/google/android/gms/internal/ads/crw;->a:I

    if-ne v1, v2, :cond_1

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/crs;->a:Lcom/google/android/gms/internal/ads/crr;

    .line 4047
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/crr;->a:Lcom/google/android/gms/internal/ads/crx;

    .line 4049
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/crr;->c(Lcom/google/android/gms/internal/ads/crx;)V

    .line 13
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/crs;->a:Lcom/google/android/gms/internal/ads/crr;

    sget v2, Lcom/google/android/gms/internal/ads/crw;->a:I

    .line 4050
    iput v2, v1, Lcom/google/android/gms/internal/ads/crr;->c:I

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/crs;->a:Lcom/google/android/gms/internal/ads/crr;

    .line 4051
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/crr;->b:Lcom/google/android/gms/internal/ads/dcc;

    .line 14
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/dcc;->b(Ljava/lang/Object;)Z

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
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/crs;->a:Lcom/google/android/gms/internal/ads/crr;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/crs;->a:Lcom/google/android/gms/internal/ads/crr;

    .line 1051
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/crr;->b:Lcom/google/android/gms/internal/ads/dcc;

    .line 4
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/dcc;->a(Ljava/lang/Throwable;)Z

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
