.class public final Lcom/google/android/gms/internal/ads/bjv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dht;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dht",
        "<",
        "Lcom/google/android/gms/internal/ads/bjr;",
        ">;"
    }
.end annotation


# direct methods
.method public static a(Lcom/google/android/gms/internal/ads/asc;Lcom/google/android/gms/internal/ads/chh;Lcom/google/android/gms/internal/ads/bix;Lcom/google/android/gms/internal/ads/crs;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/bmg;)Lcom/google/android/gms/internal/ads/bjr;
    .locals 7

    .prologue
    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/bjr;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/bjr;-><init>(Lcom/google/android/gms/internal/ads/asc;Lcom/google/android/gms/internal/ads/chh;Lcom/google/android/gms/internal/ads/bix;Lcom/google/android/gms/internal/ads/crs;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/bmg;)V

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
