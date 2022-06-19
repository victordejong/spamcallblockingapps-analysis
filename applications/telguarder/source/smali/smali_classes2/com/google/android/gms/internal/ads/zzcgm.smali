.class final synthetic Lcom/google/android/gms/internal/ads/zzcgm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyu;


# instance fields
.field private final zzdjf:Ljava/lang/String;

.field private final zzgiv:Lcom/google/android/gms/internal/ads/zzcgk;

.field private final zzgiz:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcgk;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zzgiv:Lcom/google/android/gms/internal/ads/zzcgk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zzdjf:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zzgiz:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zzgiv:Lcom/google/android/gms/internal/ads/zzcgk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zzdjf:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zzgiz:Lorg/json/JSONObject;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzcgk;->zza(Ljava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzbeb;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1
.end method
