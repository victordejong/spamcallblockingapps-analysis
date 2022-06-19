.class public final Lcom/google/android/gms/internal/ads/akd;
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
        "Lcom/google/android/gms/internal/ads/ake;",
        ">;"
    }
.end annotation


# direct methods
.method public static a(Lcom/google/android/gms/internal/ads/amk;Landroid/view/View;Lcom/google/android/gms/internal/ads/act;Lcom/google/android/gms/internal/ads/cgq;IZZLcom/google/android/gms/internal/ads/ajv;)Lcom/google/android/gms/internal/ads/ake;
    .locals 9

    .prologue
    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/ake;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/ake;-><init>(Lcom/google/android/gms/internal/ads/amk;Landroid/view/View;Lcom/google/android/gms/internal/ads/act;Lcom/google/android/gms/internal/ads/cgq;IZZLcom/google/android/gms/internal/ads/ajv;)V

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
