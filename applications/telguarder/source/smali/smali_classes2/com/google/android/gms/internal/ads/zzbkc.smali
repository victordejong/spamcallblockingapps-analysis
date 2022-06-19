.class final synthetic Lcom/google/android/gms/internal/ads/zzbkc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzeuk:Lcom/google/android/gms/internal/ads/zzbeb;

.field private final zzfst:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbeb;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbkc;->zzeuk:Lcom/google/android/gms/internal/ads/zzbeb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbkc;->zzfst:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkc;->zzeuk:Lcom/google/android/gms/internal/ads/zzbeb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbkc;->zzfst:Lorg/json/JSONObject;

    const-string v2, "AFMA_updateActiveView"

    .line 2
    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbeb;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
