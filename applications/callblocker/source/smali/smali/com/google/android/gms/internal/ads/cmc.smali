.class public final Lcom/google/android/gms/internal/ads/cmc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-gass@@19.1.0"


# direct methods
.method public static a(Landroid/content/Context;ILcom/google/android/gms/internal/ads/dkc;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/clq;)Lcom/google/android/gms/internal/ads/cno;
    .locals 8

    .prologue
    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/cmb;

    const/4 v2, 0x1

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/cmb;-><init>(Landroid/content/Context;ILcom/google/android/gms/internal/ads/dkc;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/clq;)V

    .line 2
    const v1, 0xc350

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cmb;->b(I)Lcom/google/android/gms/internal/ads/cno;

    move-result-object v0

    .line 3
    return-object v0
.end method
