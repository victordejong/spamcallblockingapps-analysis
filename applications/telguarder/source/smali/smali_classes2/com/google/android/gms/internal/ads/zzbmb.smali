.class final synthetic Lcom/google/android/gms/internal/ads/zzbmb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbtb;


# instance fields
.field private final zzcmi:Landroid/content/Context;

.field private final zzfuz:Lcom/google/android/gms/internal/ads/zzazn;

.field private final zzfva:Lcom/google/android/gms/internal/ads/zzdmw;

.field private final zzfvb:Lcom/google/android/gms/internal/ads/zzdnp;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazn;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzdnp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbmb;->zzcmi:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbmb;->zzfuz:Lcom/google/android/gms/internal/ads/zzazn;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbmb;->zzfva:Lcom/google/android/gms/internal/ads/zzdmw;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbmb;->zzfvb:Lcom/google/android/gms/internal/ads/zzdnp;

    return-void
.end method


# virtual methods
.method public final onAdLoaded()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmb;->zzcmi:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbmb;->zzfuz:Lcom/google/android/gms/internal/ads/zzazn;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbmb;->zzfva:Lcom/google/android/gms/internal/ads/zzdmw;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbmb;->zzfvb:Lcom/google/android/gms/internal/ads/zzdnp;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlb()Lcom/google/android/gms/ads/internal/util/zzam;

    move-result-object v4

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzazn;->zzbrp:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzdmw;->zzhjl:Lorg/json/JSONObject;

    .line 3
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzdnp;->zzhkx:Ljava/lang/String;

    .line 4
    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/google/android/gms/ads/internal/util/zzam;->zzb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
