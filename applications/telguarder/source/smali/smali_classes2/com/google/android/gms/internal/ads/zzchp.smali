.class final Lcom/google/android/gms/internal/ads/zzchp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/zzm;


# instance fields
.field private final synthetic zzgjv:Lcom/google/android/gms/internal/ads/zzchq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzchq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchp;->zzgjv:Lcom/google/android/gms/internal/ads/zzchq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzkn()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchp;->zzgjv:Lcom/google/android/gms/internal/ads/zzchq;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzchq;->zza(Lcom/google/android/gms/internal/ads/zzchq;)Lcom/google/android/gms/internal/ads/zzbts;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbts;->onPause()V

    return-void
.end method

.method public final zzko()V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchp;->zzgjv:Lcom/google/android/gms/internal/ads/zzchq;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzchq;->zza(Lcom/google/android/gms/internal/ads/zzchq;)Lcom/google/android/gms/internal/ads/zzbts;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbts;->onResume()V

    return-void
.end method
