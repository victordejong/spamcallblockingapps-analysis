.class final Lcom/google/android/gms/internal/ads/cqd;
.super Lcom/google/android/gms/internal/ads/cqe;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "X:",
        "Ljava/lang/Throwable;",
        ">",
        "Lcom/google/android/gms/internal/ads/cqe",
        "<TV;TX;",
        "Lcom/google/android/gms/internal/ads/cqt",
        "<-TX;+TV;>;",
        "Lcom/google/android/gms/internal/ads/crt",
        "<+TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/crt;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/cqt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/crt",
            "<+TV;>;",
            "Ljava/lang/Class",
            "<TX;>;",
            "Lcom/google/android/gms/internal/ads/cqt",
            "<-TX;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/cqe;-><init>(Lcom/google/android/gms/internal/ads/crt;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 2
    return-void
.end method


# virtual methods
.method final synthetic a(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 6
    check-cast p1, Lcom/google/android/gms/internal/ads/cqt;

    .line 7
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/cqt;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 8
    const-string/jumbo v1, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s"

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/cor;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    return-object v0
.end method

.method final synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/crt;

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/cqf;->a(Lcom/google/android/gms/internal/ads/crt;)Z

    .line 5
    return-void
.end method
