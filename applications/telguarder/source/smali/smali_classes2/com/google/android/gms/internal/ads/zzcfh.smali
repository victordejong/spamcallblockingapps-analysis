.class final synthetic Lcom/google/android/gms/internal/ads/zzcfh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyu;


# instance fields
.field private final zzfst:Lorg/json/JSONObject;

.field private final zzgik:Lcom/google/android/gms/internal/ads/zzcfi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcfi;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfh;->zzgik:Lcom/google/android/gms/internal/ads/zzcfi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcfh;->zzfst:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfh;->zzgik:Lcom/google/android/gms/internal/ads/zzcfi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfh;->zzfst:Lorg/json/JSONObject;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcfi;->zza(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzbeb;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1
.end method
