.class final Lcom/google/android/gms/internal/ads/csg;
.super Lcom/google/android/gms/internal/ads/crp;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/crp",
        "<",
        "Lcom/google/android/gms/internal/ads/crt",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cqr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/cqr",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final synthetic b:Lcom/google/android/gms/internal/ads/csh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/csh;Lcom/google/android/gms/internal/ads/cqr;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cqr",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/csg;->b:Lcom/google/android/gms/internal/ads/csh;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/crp;-><init>()V

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/cor;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cqr;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/csg;->a:Lcom/google/android/gms/internal/ads/cqr;

    .line 3
    return-void
.end method


# virtual methods
.method final synthetic a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 6
    check-cast p1, Lcom/google/android/gms/internal/ads/crt;

    .line 7
    if-nez p2, :cond_0

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/csg;->b:Lcom/google/android/gms/internal/ads/csh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/cqf;->a(Lcom/google/android/gms/internal/ads/crt;)Z

    .line 10
    :goto_0
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/csg;->b:Lcom/google/android/gms/internal/ads/csh;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/cqf;->a(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method

.method final a()Z
    .locals 1

    .prologue
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/csg;->b:Lcom/google/android/gms/internal/ads/csh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cqf;->isDone()Z

    move-result v0

    return v0
.end method

.method final synthetic c()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/csg;->a:Lcom/google/android/gms/internal/ads/cqr;

    .line 13
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/cqr;->a()Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    const-string/jumbo v1, "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/csg;->a:Lcom/google/android/gms/internal/ads/cqr;

    .line 14
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/cor;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/crt;

    .line 15
    return-object v0
.end method

.method final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/csg;->a:Lcom/google/android/gms/internal/ads/cqr;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
