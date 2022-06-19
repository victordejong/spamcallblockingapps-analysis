.class final synthetic Lcom/google/android/gms/internal/ads/zzdky;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzhhw:Lcom/google/android/gms/internal/ads/zzdkz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdkz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdky;->zzhhw:Lcom/google/android/gms/internal/ads/zzdkz;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdky;->zzhhw:Lcom/google/android/gms/internal/ads/zzdkz;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdkz;->zzhhy:Lcom/google/android/gms/internal/ads/zzdkx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdkx;->zzb(Lcom/google/android/gms/internal/ads/zzdkx;)Lcom/google/android/gms/internal/ads/zzcxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcxy;->onAdLoaded()V

    return-void
.end method
