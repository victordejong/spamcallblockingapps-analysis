.class final synthetic Lcom/google/android/gms/internal/ads/gx1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/s31;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/wn0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/wn0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gx1;->d:Lcom/google/android/gms/internal/ads/wn0;

    return-void
.end method


# virtual methods
.method public final zzg()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gx1;->d:Lcom/google/android/gms/internal/ads/wn0;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wn0;->c0()Lcom/google/android/gms/internal/ads/jp0;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wn0;->c0()Lcom/google/android/gms/internal/ads/jp0;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/jp0;->g()V

    :cond_0
    return-void
.end method
