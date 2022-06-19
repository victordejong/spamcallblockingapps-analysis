.class final Lcom/google/android/gms/internal/ads/zzcde;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaef;


# instance fields
.field private final synthetic zzgfz:Lcom/google/android/gms/internal/ads/zzcdx;

.field private final synthetic zzgga:Landroid/view/ViewGroup;

.field private final synthetic zzggb:Lcom/google/android/gms/internal/ads/zzccz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzccz;Lcom/google/android/gms/internal/ads/zzcdx;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzggb:Lcom/google/android/gms/internal/ads/zzccz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzgfz:Lcom/google/android/gms/internal/ads/zzcdx;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzgga:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzc(Landroid/view/MotionEvent;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzgfz:Lcom/google/android/gms/internal/ads/zzcdx;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcdx;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public final zztj()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzggb:Lcom/google/android/gms/internal/ads/zzccz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzgfz:Lcom/google/android/gms/internal/ads/zzcdx;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzccx;->zzgfi:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzccz;->zza(Lcom/google/android/gms/internal/ads/zzccz;Lcom/google/android/gms/internal/ads/zzcdx;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzgfz:Lcom/google/android/gms/internal/ads/zzcdx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzgga:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzcdx;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final zztk()Lorg/json/JSONObject;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzgfz:Lcom/google/android/gms/internal/ads/zzcdx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcdx;->zztk()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
