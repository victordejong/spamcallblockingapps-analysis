.class final synthetic Lcom/google/android/gms/internal/ads/zzdis;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdkc;


# instance fields
.field private final zzfzn:Lcom/google/android/gms/ads/internal/overlay/zzn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/overlay/zzn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdis;->zzfzn:Lcom/google/android/gms/ads/internal/overlay/zzn;

    return-void
.end method


# virtual methods
.method public final zzp(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdis;->zzfzn:Lcom/google/android/gms/ads/internal/overlay/zzn;

    check-cast p1, Lcom/google/android/gms/ads/internal/overlay/zzq;

    .line 2
    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzq;->zza(Lcom/google/android/gms/ads/internal/overlay/zzn;)V

    return-void
.end method
