.class public final Lcom/google/android/gms/internal/ads/zzdpe;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lorg/json/JSONObject;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzduy;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzduy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdpe;->zza:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdpe;->zzb:Lcom/google/android/gms/internal/ads/zzduy;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzduy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpe;->zzb:Lcom/google/android/gms/internal/ads/zzduy;

    return-object v0
.end method

.method public final zzb()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpe;->zza:Lorg/json/JSONObject;

    return-object v0
.end method
