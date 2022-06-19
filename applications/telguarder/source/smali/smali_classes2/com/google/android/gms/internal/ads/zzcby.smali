.class final synthetic Lcom/google/android/gms/internal/ads/zzcby;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzgdg:Lcom/google/android/gms/internal/ads/zzcbu;

.field private final zzgdv:Lcom/google/android/gms/internal/ads/zzcdx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcbu;Lcom/google/android/gms/internal/ads/zzcdx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcby;->zzgdg:Lcom/google/android/gms/internal/ads/zzcbu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcby;->zzgdv:Lcom/google/android/gms/internal/ads/zzcdx;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcby;->zzgdg:Lcom/google/android/gms/internal/ads/zzcbu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcby;->zzgdv:Lcom/google/android/gms/internal/ads/zzcdx;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcbu;->zzf(Lcom/google/android/gms/internal/ads/zzcdx;)V

    return-void
.end method
