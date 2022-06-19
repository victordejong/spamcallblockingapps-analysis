.class final Lcom/google/android/gms/internal/ads/zzmu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzbdl:Lcom/google/android/gms/internal/ads/zzms;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzms;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmu;->zzbdl:Lcom/google/android/gms/internal/ads/zzms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmu;->zzbdl:Lcom/google/android/gms/internal/ads/zzms;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzms;->zzb(Lcom/google/android/gms/internal/ads/zzms;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmu;->zzbdl:Lcom/google/android/gms/internal/ads/zzms;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzms;->zzc(Lcom/google/android/gms/internal/ads/zzms;)Lcom/google/android/gms/internal/ads/zznb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzmu;->zzbdl:Lcom/google/android/gms/internal/ads/zzms;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zznb;->zza(Lcom/google/android/gms/internal/ads/zznq;)V

    :cond_0
    return-void
.end method
