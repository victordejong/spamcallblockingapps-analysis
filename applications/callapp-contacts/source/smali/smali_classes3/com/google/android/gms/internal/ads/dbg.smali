.class public abstract Lcom/google/android/gms/internal/ads/dbg;
.super Lcom/google/android/gms/internal/ads/dbd;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dbt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/dbd<",
        "TV;>;",
        "Lcom/google/android/gms/internal/ads/dbt<",
        "TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dbd;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic a()Ljava/lang/Object;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dbg;->c()Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v0

    return-object v0
.end method

.method public addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dbg;->c()Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/dbt;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method protected synthetic b()Ljava/util/concurrent/Future;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dbg;->c()Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v0

    return-object v0
.end method

.method protected abstract c()Lcom/google/android/gms/internal/ads/dbt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "+TV;>;"
        }
    .end annotation
.end method
