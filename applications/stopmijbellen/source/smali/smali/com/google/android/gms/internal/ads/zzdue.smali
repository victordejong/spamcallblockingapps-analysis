.class final Lcom/google/android/gms/internal/ads/zzdue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbnv;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzduf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzduf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdue;->zza:Lcom/google/android/gms/internal/ads/zzduf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzb()Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzc()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdue;->zza:Lcom/google/android/gms/internal/ads/zzduf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzduf;->zzc(Lcom/google/android/gms/internal/ads/zzduf;)Lcom/google/android/gms/internal/ads/zzdpx;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdue;->zza:Lcom/google/android/gms/internal/ads/zzduf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzduf;->zzc(Lcom/google/android/gms/internal/ads/zzduf;)Lcom/google/android/gms/internal/ads/zzdpx;

    move-result-object v0

    const-string v1, "_videoMediaView"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdpx;->zzy(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final zzd(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method
