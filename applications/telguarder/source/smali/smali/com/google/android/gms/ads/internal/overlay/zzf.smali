.class final synthetic Lcom/google/android/gms/ads/internal/overlay/zzf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbfq;


# instance fields
.field private final zzdsh:Lcom/google/android/gms/ads/internal/overlay/zzc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/overlay/zzc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzf;->zzdsh:Lcom/google/android/gms/ads/internal/overlay/zzc;

    return-void
.end method


# virtual methods
.method public final zzal(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzf;->zzdsh:Lcom/google/android/gms/ads/internal/overlay/zzc;

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbeb;->zzwb()V

    :cond_0
    return-void
.end method
