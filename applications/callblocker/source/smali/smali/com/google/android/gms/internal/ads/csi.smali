.class final Lcom/google/android/gms/internal/ads/csi;
.super Lcom/google/android/gms/internal/ads/crp;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/crp",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final synthetic b:Lcom/google/android/gms/internal/ads/csh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/csh;Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/csi;->b:Lcom/google/android/gms/internal/ads/csh;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/crp;-><init>()V

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/cor;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Callable;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/csi;->a:Ljava/util/concurrent/Callable;

    .line 3
    return-void
.end method


# virtual methods
.method final a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 6
    if-nez p2, :cond_0

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/csi;->b:Lcom/google/android/gms/internal/ads/csh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/cqf;->b(Ljava/lang/Object;)Z

    .line 9
    :goto_0
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/csi;->b:Lcom/google/android/gms/internal/ads/csh;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/cqf;->a(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method

.method final a()Z
    .locals 1

    .prologue
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/csi;->b:Lcom/google/android/gms/internal/ads/csh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cqf;->isDone()Z

    move-result v0

    return v0
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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/csi;->a:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/csi;->a:Ljava/util/concurrent/Callable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
