.class public final Lcom/google/android/gms/internal/ads/zzcgd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaef;


# instance fields
.field private final synthetic zzgis:Lcom/google/android/gms/internal/ads/zzcge;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcge;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgd;->zzgis:Lcom/google/android/gms/internal/ads/zzcge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzc(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public final zztj()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgd;->zzgis:Lcom/google/android/gms/internal/ads/zzcge;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcge;->zza(Lcom/google/android/gms/internal/ads/zzcge;)Lcom/google/android/gms/internal/ads/zzcbu;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgd;->zzgis:Lcom/google/android/gms/internal/ads/zzcge;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcge;->zza(Lcom/google/android/gms/internal/ads/zzcge;)Lcom/google/android/gms/internal/ads/zzcbu;

    move-result-object v0

    const-string v1, "_videoMediaView"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcbu;->zzfw(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final zztk()Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
