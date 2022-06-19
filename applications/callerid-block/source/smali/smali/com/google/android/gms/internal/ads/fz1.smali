.class public abstract Lcom/google/android/gms/internal/ads/fz1;
.super Lcom/google/android/gms/internal/ads/dz1;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/rz1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/dz1<",
        "TV;>;",
        "Lcom/google/android/gms/internal/ads/rz1<",
        "TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dz1;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/fz1;->k()Lcom/google/android/gms/internal/ads/rz1;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/rz1;->e(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method protected abstract k()Lcom/google/android/gms/internal/ads/rz1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "+TV;>;"
        }
    .end annotation
.end method
