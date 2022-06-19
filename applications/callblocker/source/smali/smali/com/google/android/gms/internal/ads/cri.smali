.class final Lcom/google/android/gms/internal/ads/cri;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

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
            "Ljava/util/concurrent/Future",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/crh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/crh",
            "<-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Future;Lcom/google/android/gms/internal/ads/crh;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<TV;>;",
            "Lcom/google/android/gms/internal/ads/crh",
            "<-TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cri;->a:Ljava/util/concurrent/Future;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cri;->b:Lcom/google/android/gms/internal/ads/crh;

    .line 4
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cri;->a:Ljava/util/concurrent/Future;

    instance-of v0, v0, Lcom/google/android/gms/internal/ads/csj;

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cri;->a:Ljava/util/concurrent/Future;

    check-cast v0, Lcom/google/android/gms/internal/ads/csj;

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/csn;->a(Lcom/google/android/gms/internal/ads/csj;)Ljava/lang/Throwable;

    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cri;->b:Lcom/google/android/gms/internal/ads/crh;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/crh;->a(Ljava/lang/Throwable;)V

    .line 20
    :goto_0
    return-void

    .line 11
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cri;->a:Ljava/util/concurrent/Future;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cri;->b:Lcom/google/android/gms/internal/ads/crh;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/crh;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cri;->b:Lcom/google/android/gms/internal/ads/crh;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/crh;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 16
    :catch_1
    move-exception v0

    .line 17
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cri;->b:Lcom/google/android/gms/internal/ads/crh;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/crh;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 16
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 21
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/coi;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/cok;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cri;->b:Lcom/google/android/gms/internal/ads/crh;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cok;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/cok;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cok;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
