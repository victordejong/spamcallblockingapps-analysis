.class final Lcom/google/android/gms/internal/ads/dbj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/dbi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dbi<",
            "-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Future;Lcom/google/android/gms/internal/ads/dbi;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "TV;>;",
            "Lcom/google/android/gms/internal/ads/dbi<",
            "-TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dbj;->a:Ljava/util/concurrent/Future;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dbj;->b:Lcom/google/android/gms/internal/ads/dbi;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dbj;->a:Ljava/util/concurrent/Future;

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/dcl;

    if-eqz v1, :cond_0

    .line 6
    check-cast v0, Lcom/google/android/gms/internal/ads/dcl;

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dck;->a(Lcom/google/android/gms/internal/ads/dcl;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dbj;->b:Lcom/google/android/gms/internal/ads/dbi;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/dbi;->a(Ljava/lang/Throwable;)V

    return-void

    .line 11
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dbj;->a:Ljava/util/concurrent/Future;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dbj;->b:Lcom/google/android/gms/internal/ads/dbi;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/dbi;->a(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 17
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dbj;->b:Lcom/google/android/gms/internal/ads/dbi;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/dbi;->a(Ljava/lang/Throwable;)V

    return-void

    :catch_2
    move-exception v0

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dbj;->b:Lcom/google/android/gms/internal/ads/dbi;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/dbi;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1001
    new-instance v0, Lcom/google/android/gms/internal/ads/cxy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/cxy;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/cxz;)V

    .line 21
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dbj;->b:Lcom/google/android/gms/internal/ads/dbi;

    .line 1009
    new-instance v3, Lcom/google/android/gms/internal/ads/cyb;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/cyb;-><init>(Lcom/google/android/gms/internal/ads/cxz;)V

    .line 1010
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/cxy;->a:Lcom/google/android/gms/internal/ads/cyb;

    iput-object v3, v2, Lcom/google/android/gms/internal/ads/cyb;->b:Lcom/google/android/gms/internal/ads/cyb;

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/cxy;->a:Lcom/google/android/gms/internal/ads/cyb;

    .line 1012
    iput-object v1, v3, Lcom/google/android/gms/internal/ads/cyb;->a:Ljava/lang/Object;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cxy;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
