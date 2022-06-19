.class final Lcom/google/android/gms/internal/ads/dai;
.super Lcom/google/android/gms/internal/ads/daj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/daj<",
        "TI;TO;",
        "Lcom/google/android/gms/internal/ads/daq<",
        "-TI;+TO;>;",
        "Lcom/google/android/gms/internal/ads/dbt<",
        "+TO;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/daq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "+TI;>;",
            "Lcom/google/android/gms/internal/ads/daq<",
            "-TI;+TO;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/daj;-><init>(Lcom/google/android/gms/internal/ads/dbt;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/ads/daq;

    .line 7
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/daq;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p2

    const-string v0, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s"

    .line 8
    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/ads/cyg;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method final synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/dbt;

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/dag;->a(Lcom/google/android/gms/internal/ads/dbt;)Z

    return-void
.end method
