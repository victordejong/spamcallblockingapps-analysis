.class public final Lcom/google/android/gms/internal/ads/ip1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cj3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cj3<",
        "Lcom/google/android/gms/internal/ads/hp1;",
        ">;"
    }
.end annotation


# direct methods
.method public static a(JLandroid/content/Context;Lcom/google/android/gms/internal/ads/wo1;Lcom/google/android/gms/internal/ads/sp0;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/hp1;
    .locals 8

    .line 1
    new-instance v7, Lcom/google/android/gms/internal/ads/hp1;

    move-object v0, v7

    move-wide v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/hp1;-><init>(JLandroid/content/Context;Lcom/google/android/gms/internal/ads/wo1;Lcom/google/android/gms/internal/ads/sp0;Ljava/lang/String;)V

    return-object v7
.end method
