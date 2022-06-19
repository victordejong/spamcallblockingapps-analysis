.class final Lcom/google/android/gms/internal/ads/hz2;
.super Lcom/google/android/gms/internal/ads/kz2;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/kz2<",
        "TI;TO;",
        "Lcom/google/android/gms/internal/ads/uz2<",
        "-TI;+TO;>;",
        "Lcom/google/android/gms/internal/ads/r03<",
        "+TO;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/uz2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/r03<",
            "+TI;>;",
            "Lcom/google/android/gms/internal/ads/uz2<",
            "-TI;+TO;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/kz2;-><init>(Lcom/google/android/gms/internal/ads/r03;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method final bridge synthetic F(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/r03;

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/fz2;->w(Lcom/google/android/gms/internal/ads/r03;)Z

    return-void
.end method

.method final bridge synthetic G(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/uz2;

    .line 2
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/uz2;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p2

    const-string v0, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s"

    .line 3
    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/ads/xu2;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method
