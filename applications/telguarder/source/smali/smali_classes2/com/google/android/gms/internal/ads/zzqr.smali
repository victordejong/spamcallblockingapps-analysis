.class final Lcom/google/android/gms/internal/ads/zzqr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzajo:Lcom/google/android/gms/internal/ads/zzjm;

.field private final synthetic zzbna:Lcom/google/android/gms/internal/ads/zzqj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzqj;Lcom/google/android/gms/internal/ads/zzjm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqr;->zzbna:Lcom/google/android/gms/internal/ads/zzqj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzqr;->zzajo:Lcom/google/android/gms/internal/ads/zzjm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqr;->zzajo:Lcom/google/android/gms/internal/ads/zzjm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzjm;->zzgn()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqr;->zzbna:Lcom/google/android/gms/internal/ads/zzqj;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzqj;->zza(Lcom/google/android/gms/internal/ads/zzqj;)Lcom/google/android/gms/internal/ads/zzqk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqr;->zzajo:Lcom/google/android/gms/internal/ads/zzjm;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzqk;->zzf(Lcom/google/android/gms/internal/ads/zzjm;)V

    return-void
.end method
