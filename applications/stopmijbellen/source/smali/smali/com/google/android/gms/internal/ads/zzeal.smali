.class public final Lcom/google/android/gms/internal/ads/zzeal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgpr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzgpr<",
        "Lcom/google/android/gms/internal/ads/zzeak;",
        ">;"
    }
.end annotation


# direct methods
.method public static zza(JLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzead;Lcom/google/android/gms/internal/ads/zzcqm;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzeak;
    .locals 8

    .line 1
    new-instance v7, Lcom/google/android/gms/internal/ads/zzeak;

    move-object v0, v7

    move-wide v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzeak;-><init>(JLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzead;Lcom/google/android/gms/internal/ads/zzcqm;Ljava/lang/String;)V

    return-object v7
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method
