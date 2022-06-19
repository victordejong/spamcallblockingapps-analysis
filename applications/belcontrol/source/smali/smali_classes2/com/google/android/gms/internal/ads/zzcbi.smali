.class public final Lcom/google/android/gms/internal/ads/zzcbi;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zzgcf:Lorg/json/JSONObject;

.field private final zzgdc:Lcom/google/android/gms/internal/ads/zzcgk;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzcgk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbi;->zzgcf:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcbi;->zzgdc:Lcom/google/android/gms/internal/ads/zzcgk;

    return-void
.end method


# virtual methods
.method public final zzanm()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbi;->zzgcf:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final zzann()Lcom/google/android/gms/internal/ads/zzcgk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbi;->zzgdc:Lcom/google/android/gms/internal/ads/zzcgk;

    return-object v0
.end method
