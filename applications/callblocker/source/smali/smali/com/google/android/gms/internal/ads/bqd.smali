.class public final Lcom/google/android/gms/internal/ads/bqd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dht;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dht",
        "<",
        "Lcom/google/android/gms/internal/ads/bqb",
        "<TAdT;>;>;"
    }
.end annotation


# direct methods
.method public static a(Lcom/google/android/gms/internal/ads/ckz;Lcom/google/android/gms/internal/ads/bpv;Lcom/google/android/gms/internal/ads/apt;Lcom/google/android/gms/internal/ads/clj;Lcom/google/android/gms/internal/ads/amm;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/bqb;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<AdT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/ckz;",
            "Lcom/google/android/gms/internal/ads/bpv;",
            "Lcom/google/android/gms/internal/ads/apt;",
            "Lcom/google/android/gms/internal/ads/clj;",
            "Lcom/google/android/gms/internal/ads/amm",
            "<TAdT;>;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Lcom/google/android/gms/internal/ads/bqb",
            "<TAdT;>;"
        }
    .end annotation

    .prologue
    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/bqb;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/bqb;-><init>(Lcom/google/android/gms/internal/ads/ckz;Lcom/google/android/gms/internal/ads/bpv;Lcom/google/android/gms/internal/ads/apt;Lcom/google/android/gms/internal/ads/clj;Lcom/google/android/gms/internal/ads/amm;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method
