.class public final Lcom/google/android/gms/internal/ads/ys0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/eh2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/eh2<",
        "Lcom/google/android/gms/internal/ads/xs0;",
        ">;"
    }
.end annotation


# direct methods
.method public static a(JLandroid/content/Context;Lcom/google/android/gms/internal/ads/ms0;Lcom/google/android/gms/internal/ads/fv;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/xs0;
    .locals 8

    new-instance v7, Lcom/google/android/gms/internal/ads/xs0;

    move-object v0, v7

    move-wide v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/xs0;-><init>(JLandroid/content/Context;Lcom/google/android/gms/internal/ads/ms0;Lcom/google/android/gms/internal/ads/fv;Ljava/lang/String;)V

    return-object v7
.end method
