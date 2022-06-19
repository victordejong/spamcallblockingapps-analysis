.class public final Lcom/google/android/gms/internal/ads/zzdym;
.super Lcom/google/android/gms/internal/ads/zzdyn;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzdyn<",
        "TI;TO;",
        "Lcom/google/android/gms/internal/ads/zzdyu<",
        "-TI;+TO;>;",
        "Lcom/google/android/gms/internal/ads/zzdzw<",
        "+TO;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzdyu;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "+TI;>;",
            "Lcom/google/android/gms/internal/ads/zzdyu<",
            "-TI;+TO;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdyn;-><init>(Lcom/google/android/gms/internal/ads/zzdzw;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final synthetic setResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdzw;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdyk;->setFuture(Lcom/google/android/gms/internal/ads/zzdzw;)Z

    return-void
.end method

.method public final synthetic zzd(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdyu;

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzdyu;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p2

    const-string v0, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s"

    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzdwl;->zza(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method
