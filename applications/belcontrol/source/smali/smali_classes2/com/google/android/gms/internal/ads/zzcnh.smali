.class public final synthetic Lcom/google/android/gms/internal/ads/zzcnh;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyu;


# instance fields
.field private final zzgol:Lcom/google/android/gms/internal/ads/zzamb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzamb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnh;->zzgol:Lcom/google/android/gms/internal/ads/zzamb;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnh;->zzgol:Lcom/google/android/gms/internal/ads/zzamb;

    check-cast p1, Lorg/json/JSONObject;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzamb;->zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1
.end method
