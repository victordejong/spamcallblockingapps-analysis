.class public final Lcom/google/android/gms/internal/ads/csd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dsi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dsi<",
        "Lcom/google/android/gms/internal/ads/dbs;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 2

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/cwz;->a()Lcom/google/android/gms/internal/ads/cxa;

    move-result-object v0

    sget v1, Lcom/google/android/gms/internal/ads/cxh;->b:I

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/cxa;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 1002
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/dbs;

    if-eqz v1, :cond_0

    .line 1003
    check-cast v0, Lcom/google/android/gms/internal/ads/dbs;

    goto :goto_1

    .line 1004
    :cond_0
    instance-of v1, v0, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_1

    .line 1005
    new-instance v1, Lcom/google/android/gms/internal/ads/dbw;

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/dbw;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    goto :goto_0

    .line 1006
    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/dbx;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/dbx;-><init>(Ljava/util/concurrent/ExecutorService;)V

    :goto_0
    move-object v0, v1

    .line 5
    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dso;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dbs;

    return-object v0
.end method
