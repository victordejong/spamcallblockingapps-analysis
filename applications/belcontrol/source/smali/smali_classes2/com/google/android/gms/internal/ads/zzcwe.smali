.class public final Lcom/google/android/gms/internal/ads/zzcwe;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcro;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcro<",
        "Lcom/google/android/gms/internal/ads/zzapk;",
        "Lcom/google/android/gms/internal/ads/zzctd;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzgwe:Lcom/google/android/gms/internal/ads/zzcxh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcxh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcwe;->zzgwe:Lcom/google/android/gms/internal/ads/zzcxh;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzcrl;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzcrl<",
            "Lcom/google/android/gms/internal/ads/zzapk;",
            "Lcom/google/android/gms/internal/ads/zzctd;",
            ">;"
        }
    .end annotation

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcwe;->zzgwe:Lcom/google/android/gms/internal/ads/zzcxh;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzcxh;->zzgo(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzapk;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzctd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzctd;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcrl;

    invoke-direct {v1, p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzcrl;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbsu;Ljava/lang/String;)V

    return-object v1
.end method
