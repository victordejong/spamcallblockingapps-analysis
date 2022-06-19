.class final synthetic Lcom/google/android/gms/internal/ads/zzczk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzgzj:Lcom/google/android/gms/internal/ads/zzczh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzczh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzczk;->zzgzj:Lcom/google/android/gms/internal/ads/zzczh;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczk;->zzgzj:Lcom/google/android/gms/internal/ads/zzczh;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzczh;->zzgzi:Lcom/google/android/gms/internal/ads/zzczg;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzczg;->zza(Lcom/google/android/gms/internal/ads/zzczg;)Lcom/google/android/gms/internal/ads/zzcza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcza;->zzasq()Lcom/google/android/gms/internal/ads/zzbtb;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbtb;->onAdLoaded()V

    return-void
.end method
