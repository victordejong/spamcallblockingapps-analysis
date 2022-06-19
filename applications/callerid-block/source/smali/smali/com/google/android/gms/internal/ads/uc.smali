.class public final Lcom/google/android/gms/internal/ads/uc;
.super Lcom/google/android/gms/internal/ads/mp;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/mp<",
        "Lcom/google/android/gms/internal/ads/pb;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Ljava/lang/Object;

.field private d:Z

.field private e:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/util/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/internal/util/r<",
            "Lcom/google/android/gms/internal/ads/pb;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/mp;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/uc;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/uc;->d:Z

    iput p1, p0, Lcom/google/android/gms/internal/ads/uc;->e:I

    return-void
.end method


# virtual methods
.method public final f()Lcom/google/android/gms/internal/ads/pc;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/ads/pc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/pc;-><init>(Lcom/google/android/gms/internal/ads/uc;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uc;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v2, Lcom/google/android/gms/internal/ads/qc;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/qc;-><init>(Lcom/google/android/gms/internal/ads/uc;Lcom/google/android/gms/internal/ads/pc;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/rc;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/ads/rc;-><init>(Lcom/google/android/gms/internal/ads/uc;Lcom/google/android/gms/internal/ads/pc;)V

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/internal/ads/mp;->a(Lcom/google/android/gms/internal/ads/jp;Lcom/google/android/gms/internal/ads/hp;)V

    iget v2, p0, Lcom/google/android/gms/internal/ads/uc;->e:I

    const/4 v3, 0x1

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/h;->k(Z)V

    iget v2, p0, Lcom/google/android/gms/internal/ads/uc;->e:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/gms/internal/ads/uc;->e:I

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final g()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uc;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/uc;->e:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/h;->k(Z)V

    const-string v1, "Releasing 1 reference for JS Engine"

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/y0;->k(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/gms/internal/ads/uc;->e:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/uc;->e:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/uc;->i()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final h()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uc;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/uc;->e:I

    const/4 v2, 0x1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/h;->k(Z)V

    const-string v1, "Releasing root reference. JS Engine will be destroyed once other references are released."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/y0;->k(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/uc;->d:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/uc;->i()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected final i()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uc;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/uc;->e:I

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/h;->k(Z)V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/uc;->d:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/ads/uc;->e:I

    if-nez v1, :cond_1

    const-string v1, "No reference is left (including root). Cleaning up engine."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/y0;->k(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/tc;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/tc;-><init>(Lcom/google/android/gms/internal/ads/uc;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/ip;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/ip;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/mp;->a(Lcom/google/android/gms/internal/ads/jp;Lcom/google/android/gms/internal/ads/hp;)V

    goto :goto_1

    :cond_1
    const-string v1, "There are still references to the engine. Not destroying."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/y0;->k(Ljava/lang/String;)V

    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
