.class public final Lcom/google/android/gms/internal/ads/bwf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dsi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dsi<",
        "Lcom/google/android/gms/internal/ads/bwd<",
        "TAdT;>;>;"
    }
.end annotation


# direct methods
.method public static a(Lcom/google/android/gms/internal/ads/cti;Lcom/google/android/gms/internal/ads/bvx;Lcom/google/android/gms/internal/ads/arn;Lcom/google/android/gms/internal/ads/cuq;Lcom/google/android/gms/internal/ads/cus;Lcom/google/android/gms/internal/ads/anu;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/bso;)Lcom/google/android/gms/internal/ads/bwd;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<AdT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/cti;",
            "Lcom/google/android/gms/internal/ads/bvx;",
            "Lcom/google/android/gms/internal/ads/arn;",
            "Lcom/google/android/gms/internal/ads/cuq;",
            "Lcom/google/android/gms/internal/ads/cus;",
            "Lcom/google/android/gms/internal/ads/anu<",
            "TAdT;>;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/google/android/gms/internal/ads/bso;",
            ")",
            "Lcom/google/android/gms/internal/ads/bwd<",
            "TAdT;>;"
        }
    .end annotation

    .line 1
    new-instance v10, Lcom/google/android/gms/internal/ads/bwd;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/bwd;-><init>(Lcom/google/android/gms/internal/ads/cti;Lcom/google/android/gms/internal/ads/bvx;Lcom/google/android/gms/internal/ads/arn;Lcom/google/android/gms/internal/ads/cuq;Lcom/google/android/gms/internal/ads/cus;Lcom/google/android/gms/internal/ads/anu;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/bso;)V

    return-object v10
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .line 2
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method
