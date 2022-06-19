.class final Lcom/google/android/gms/internal/ads/cqx;
.super Lcom/google/android/gms/internal/ads/cqw;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/cqw",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final b:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final synthetic c:Lcom/google/android/gms/internal/ads/cqu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cqu;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cqx;->c:Lcom/google/android/gms/internal/ads/cqu;

    .line 2
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/cqw;-><init>(Lcom/google/android/gms/internal/ads/cqu;Ljava/util/concurrent/Executor;)V

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/cor;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Callable;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cqx;->b:Ljava/util/concurrent/Callable;

    .line 4
    return-void
.end method


# virtual methods
.method final a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cqx;->c:Lcom/google/android/gms/internal/ads/cqu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/cqf;->b(Ljava/lang/Object;)Z

    .line 8
    return-void
.end method

.method final c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/cqx;->a:Z

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cqx;->b:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cqx;->b:Ljava/util/concurrent/Callable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
